0,05042021192249,2,Decision Tree,"Pipeline(memory=None,
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
         verbose=False)","{'LR__multi_class': ['auto', 'ovr'], 'LR__C': [0.01, 1, 100]}",0.9435763888888888,"[[343  17   0]
 [ 21 433  20]
 [  0   7 311]]","[{'cols': ['IN_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['NET_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['AUM'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_PERF_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['POSITIVE_RFP'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['EVENT_IMPACT'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['DOWNLOADED_DOCUMENTS'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['PSU_SCORE'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}]",Fine tuning model 2 KNN.
