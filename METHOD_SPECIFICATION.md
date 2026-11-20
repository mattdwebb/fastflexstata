# Method

Historical state-group pooled FLEX: cluster and time effects, cluster-X and time-X slopes, treated cluster-time cell intercepts and X slopes. Target uses weighted cell masses and historical unweighted cell covariate means. Redundant post-cell regressors allowed only if the target is estimable. Cohort grouping unsupported.

Stata currently uses cluster FE only. TWFE uses native weighted alternating
projections; other models use bounded (12-million estimated-entry) SVD reference
designs. No reghdfe/ftools or cross-language runtime calls. At fixed design the
scalar is linear in Y; deletion/reassignment rebuilds assignment-dependent design.
