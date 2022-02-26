library(parallel)
library(devtools)
devtools::load_all()
RNGkind("L'Ecuyer-CMRG")
data(grid)

s_seed <- 999983
s_k <- 1000
s_n <- 500
s_m <- 7
v_seed <- c(s_seed, s_seed + s_k)

new_code_5007_3 <- mclapply(v_seed, seed_loop <- function(seed) {
    stephanie_type2(seed, s_k / 2, s_n, s_m, "trigonometric", new_r_grid_trig_500[2], L = 1000, err = 0.25, i_face = T, approx = T, truncate.tn = 1)
}, mc.cores = 2)


save(new_code_5007_3, file = "new_code_trig_5007_3.RData")