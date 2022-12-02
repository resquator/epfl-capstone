0,05042021235338,2,Decision Tree,"Pipeline(memory=None,
         steps=[('Scaler',
                 StandardScaler(copy=True, with_mean=True, with_std=True)),
                ('Power',
                 PowerTransformer(copy=True, method='yeo-johnson',
                                  standardize=True)),
                ('TREE',
                 DecisionTreeClassifier(class_weight=None, criterion='gini',
                                        max_depth=None, max_features=None,
                                        max_leaf_nodes=None,
                                        min_impurity_decrease=0.0,
                                        min_impurity_split=None,
                                        min_samples_leaf=1, min_samples_split=2,
                                        min_weight_fraction_leaf=0.0,
                                        presort=False, random_state=42,
                                        splitter='best'))],
         verbose=False)","{'TREE__criterion': ['gini', 'entropy'], 'TREE__max_depth': [None, 5, 10, 15, 20]}",0.4314236111111111,"[[205 110  45]
 [220 191  63]
 [161  56 101]]","[{'cols': ['AUM'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_SLOPE'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_PERF_SLOPE_ERROR'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE_ERROR'], 'method': 'ewm', 'period': [1, 3, 6], 'original': False}, {'cols': ['POSITIVE_RFP'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['EVENT_IMPACT'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['DOWNLOADED_DOCUMENTS'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['PSU_SCORE'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}]",Fine tuning model 2 Decision Tree.
