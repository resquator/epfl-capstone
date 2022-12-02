0,05042021102005,1,MLP Classifier,"Pipeline(memory=None,
         steps=[('Scaler',
                 StandardScaler(copy=True, with_mean=True, with_std=True)),
                ('Power',
                 PowerTransformer(copy=True, method='yeo-johnson',
                                  standardize=True)),
                ('SVC',
                 SVC(C=1.0, cache_size=200, class_weight=None, coef0=0.0,
                     decision_function_shape='ovr', degree=3, gamma='auto',
                     kernel='rbf', max_iter=-1, probability=False,
                     random_state=42, shrinking=True, tol=0.001,
                     verbose=False))],
         verbose=False)","{'SVC__C': [0.01, 1, 100]}",0.8179190751445087,"[[201  37   0]
 [ 27 160  39]
 [  1  22 205]]","[{'cols': ['IN_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NET_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_6_MONTH'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['COMPUTED_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}]",Fine tuning model 1 MLP Classifier. Nb features 5 selected by SelectKBest