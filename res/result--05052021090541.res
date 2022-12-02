0,05052021090541,1,MLP Classifier,"Pipeline(memory=None,
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
         verbose=False)","{'SVC__C': [0.01, 1, 100]}",0.4635416666666667,"[[194 137  29]
 [151 250  73]
 [107 121  90]]","[{'cols': ['IN_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_3_MONTH'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_1_YEAR'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_3_MONTH'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_6_MONTH'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['RISK_LEVEL_VALUE'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['FLOWS_QUARTER'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}]",Fine tuning model 1 MLP Classifier. Nb features 10 selected by SelectKBest
