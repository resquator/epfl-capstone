0,05042021230657,2,Decision Tree,"Pipeline(memory=None,
         steps=[('Scaler',
                 StandardScaler(copy=True, with_mean=True, with_std=True)),
                ('Power',
                 PowerTransformer(copy=True, method='yeo-johnson',
                                  standardize=True)),
                ('KNN',
                 KNeighborsClassifier(algorithm='auto', leaf_size=30,
                                      metric='minkowski', metric_params=None,
                                      n_jobs=None, n_neighbors=5, p=2,
                                      weights='uniform'))],
         verbose=False)","{'KNN__n_neighbors': [5, 10, 20], 'KNN__algorithm': ['auto', 'brute'], 'KNN__p': [1, 2]}",0.5043402777777778,"[[175 121  64]
 [135 277  62]
 [ 80 109 129]]","[{'cols': ['IN_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['AUM'], 'method': 'rolling', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_PERF_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE_ERROR'], 'method': 'expanding', 'period': [1, 3, 6], 'original': False}, {'cols': ['POSITIVE_RFP'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['EVENT_IMPACT'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['DOWNLOADED_DOCUMENTS'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['PSU_SCORE'], 'method': 'shift', 'period': [1, 3, 6, 9], 'original': False}]",Fine tuning model 2 KNN.
