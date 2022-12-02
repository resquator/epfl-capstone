0,05042021230321,1,MLP Classifier,"Pipeline(memory=None,
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
         verbose=False)","{'SVC__C': [0.01, 1, 100]}",0.7508680555555556,"[[265  88   7]
 [ 64 326  84]
 [  3  41 274]]","[{'cols': ['IN_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_1_YEAR'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_3_MONTH'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_6_MONTH'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['RISK_LEVEL_VALUE'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['FLOWS_QUARTER'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}]",Fine tuning model 1 MLP Classifier. Nb features 10 selected by SelectKBest
