0,05052021092904,2,Decision Tree,"Pipeline(memory=None,
         steps=[('Scaler',
                 StandardScaler(copy=True, with_mean=True, with_std=True)),
                ('Power',
                 PowerTransformer(copy=True, method='yeo-johnson',
                                  standardize=True)),
                ('LR',
                 LogisticRegression(C=1.0, class_weight=None, dual=False,
                                    fit_intercept=True, intercept_scaling=1,
                                    l1_ratio=None, max_iter=100,
                                    multi_class='warn', n_jobs=None,
                                    penalty='l2', random_state=42,
                                    solver='liblinear', tol=0.0001, verbose=0,
                                    warm_start=False))],
         verbose=False)","{'LR__multi_class': ['auto', 'ovr'], 'LR__C': [0.0001, 0.001, 0.01, 1, 100, 1000, 10000]}",0.5095486111111112,"[[150 153  57]
 [ 92 267 115]
 [ 80  68 170]]","[{'cols': ['IN_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['AUM'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_PERF_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['POSITIVE_RFP'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['EVENT_IMPACT'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['DOWNLOADED_DOCUMENTS'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['PSU_SCORE'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}]",Fine tuning model 2 KNN.
