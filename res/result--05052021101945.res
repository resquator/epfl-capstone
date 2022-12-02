0,05052021101945,2,Decision Tree,"Pipeline(memory=None,
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
         verbose=False)","{'KNN__n_neighbors': [50, 100, 300, 500, 1000], 'KNN__algorithm': ['auto', 'brute'], 'KNN__p': [1, 2]}",0.4192708333333333,"[[275  77  47]
 [217 102  81]
 [213  34 106]]","[{'cols': ['IN_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['OUT_FLOWS'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['AUM'], 'method': 'shift', 'period': [1, 2, 3], 'original': False}, {'cols': ['BENCH_PERF_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_PERF_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['BENCH_VOL_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_PERF_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['NAV_VOL_SLOPE_ERROR'], 'method': 'rolling', 'period': [1, 3, 6], 'original': False}, {'cols': ['POSITIVE_RFP'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['EVENT_IMPACT'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['DOWNLOADED_DOCUMENTS'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}, {'cols': ['PSU_SCORE'], 'method': 'ewm', 'period': [1, 3, 6, 9], 'original': False}]",Fine tuning model 2 KNN.
