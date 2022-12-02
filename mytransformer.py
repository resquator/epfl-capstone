from sklearn.base import BaseEstimator
from sklearn.base import TransformerMixin
import logging
import numpy as np
import pandas as pd
from tqdm import tqdm_notebook as tqdm_final

class TS2Supervised(BaseEstimator, TransformerMixin):
    def __init__(self, transformation=None, breakdown=None, verbose=None, interpolation=None):
        self.transformation = transformation
        self.b = breakdown   
        self.verbose = verbose
        self.interpolation = interpolation
        logging.info('Transformation called with interpolation={}, verbose={}, breakdown-level={} and dictionary \n{}'.format(interpolation, verbose, breakdown, transformation))
        logging.info('-------------------------------------------------------------------------------------------')
        if verbose:
            print('myTransformer loaded 1.4')

        
    
    def transform(self, X,   **transform_params):
        '''
        The transformation is a list of dictionaries. Each dictionray is a transformation
        for a set of columns and must contain
        - a list of columns
        - the method (split, rolling window, expanding or ewm)
        - the period to apply
        - if the original columns must deleted
        '''
        # create a list of breakdonw        
        b_breakdown = np.unique(X[self.b])        
        X_temp = X.copy()
        # enumerate the list of dictionaries
        for trans in self.transformation:
            #ogging.info('Entering in enumerate transformation Columns in X_temp \n{}'.format((X_temp.columns)))
            # assign the trans variable to a dico variable
            dico = trans
            for i, (k, v) in enumerate(dico.items()):
                logging.info('index {} - dico value for key {} is {}'.format(i, k, v))            
                # enumerate dictionary key and value
            
            '''for  skew method I must compute the number of columns and the ratio to apply'''
            n_periods=np.linspace(1,0,len(dico['period'])+2).tolist()
            n_periods.remove(1)

            logging.info('(n) periods {} for the skew method is {}'.format(dico['period'],n_periods))  
            
            all_cols = dico['cols'].copy()
            all_cols.append(self.b)
            cpy_df = X_temp[all_cols].copy()            
            for b in b_breakdown:
                f = cpy_df[self.b] == b
                for j in range(len(dico['cols'])):
                    

                    
                    for i in (dico['period']):
                        if dico['cols'][j] != self.b:
                            colfix=''
                            if dico['method']=='shift':
                                colfix='s'
                                cpy_df.loc[f,dico['cols'][j]+'-s'+str(i)] = cpy_df.loc[f,dico['cols'][j]].shift(periods=i)
                            if dico['method']=='rolling':
                                colfix='r'
                                cpy_df.loc[f,dico['cols'][j]+'-r'+str(i)] = cpy_df.loc[f,dico['cols'][j]].rolling(i).mean()
                            if dico['method']=='ewm':
                                colfix='e'
                                cpy_df.loc[f,dico['cols'][j]+'-e'+str(i)] = cpy_df.loc[f,dico['cols'][j]].ewm(com=i).mean()
                            if dico['method']=='expanding':
                                colfix='x'
                                cpy_df.loc[f,dico['cols'][j]+'-x'+str(i)] = cpy_df.loc[f,dico['cols'][j]].expanding(min_periods=i).mean()

                                
                            if self.interpolation and colfix != '':
                                cpy_df.loc[f,dico['cols'][j]+'-'+colfix+str(i)]=cpy_df.loc[f,dico['cols'][j]+'-'+colfix+str(i)].interpolate(limit_direction='both')                                

            c1 = X.columns.tolist()
            c2 = cpy_df.columns.tolist()
            intersection_set = set.intersection(set(c1), set(c2))    
            X_temp = X_temp.merge(cpy_df.drop(intersection_set,axis=1), left_index=True, right_index=True).copy()
            logging.info('Columns in X_temp {}'.format(len(X_temp.columns)))
            #ogging.info('Columns in X_temp \n{}'.format((X_temp.columns)))
            
            if dico['original'] != True:
                # delete the original column(s)
                X_temp.drop(dico['cols'], axis=1, inplace=True)
            logging.info('New columns added to the dataframe: {}'.format(cpy_df.drop(intersection_set,axis=1).columns))

        return X_temp
    
    def fit(self, X, y=None, **fit_params):
        logging.info('Initializing with Columns in X {}'.format(len(X.columns)))
        return self
    
    
class TS2SL(BaseEstimator, TransformerMixin):
    def __init__(self, cols=None, transformation=None):

        self.cols=cols
        self.transformation=transformation
        
    #def preprocess_f(self, X_df, train_mean):
    def preprocess_f(self, X_df):
        # Work on a copy
        #print(X_df.columns)
        if 'TARGET' in X_df.columns:
            X_df = X_df[self.cols].copy()
        else:
            temp=self.cols
            try:
                temp.remove('TARGET')
            except:
                X_df = X_df[temp].copy()            
        b_breakdown = np.unique(X_df['SRC_UID'])
        # Missing values in continuous features
        for trans in tqdm_final(self.transformation):
            dico = trans
            for i, (k, v) in enumerate(dico.items()):
                logging.info('index {} - dico value for key {} is {}'.format(i, k, v))            
                # enumerate dictionary key and value

            for b in b_breakdown:
                f=X_df['SRC_UID']==b
                all_cols = dico['cols'].copy()

                for col in all_cols:
                    for p in dico['period']:
                        #print('change ',col,'p=',p)
                        if dico['method']=='shift':   
                            m='s'
                            X_df.loc[f,col+'_s_'+str(p)]=X_df.loc[f,col].shift(periods=p)
                        if dico['method']=='rolling': 
                            m='r'
                            X_df.loc[f,col+'_r_'+str(p)]=X_df.loc[f,col].rolling(p).mean()
                        if dico['method']=='expanding':   
                            m='x'
                            X_df.loc[f,col+'_x_'+str(p)]=X_df.loc[f,col].expanding(min_periods=p).mean()
                        if dico['method']=='ewm':  
                            m='e'
                            X_df.loc[f,col+'_e_'+str(p)]=X_df.loc[f,col].ewm(com=p).mean()


                        X_df.loc[f,col+'_'+m+'_'+str(p)]=X_df.loc[f,col+'_'+m+'_'+str(p)].interpolate(limit_direction='both')    

            for c in all_cols:
                X_df.drop(c,axis=1,inplace=True)
                
        if 'TARGET' in X_df.columns:
            X_df.drop('TARGET',axis=1,inplace=True)

        
        logging.info('return X_df'.format(X_df.shape))
        return X_df.fillna(0)

    def fit(self, X_df, y=None):
        # Check that we get a DataFrame
        
        assert type(X_df) == pd.DataFrame
        logging.info('arriving in fit'.format(X_df.shape))
        print('arriving in fit {}'.format(X_df.shape))
        
        X_preprocessed = self.preprocess_f(X_df)

        # Save columns names/order for inference time
        self.columns_ = X_preprocessed.columns

        return self

    def transform(self, X_df):
        # Check that we get a DataFrame
        assert type(X_df) == pd.DataFrame
        print('entering in transform {}'.format(X_df.shape))
        # Preprocess data

        X_preprocessed = self.preprocess_f(X_df)

        # Make sure to have the same features
        X_reindexed = X_preprocessed.reindex(columns=self.columns_, fill_value=0)

        return X_reindexed    
