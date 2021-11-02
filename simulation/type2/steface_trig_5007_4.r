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

steface_5007_4 <- mclapply(v_seed, seed_loop <- function(seed) {
    stephanie_type2(seed, s_k / 2, s_n, s_m, "trigonometric", r_grid_trig[4])
}, mc.cores = 2)


save(steface_5007_4, file = "steface_trig_5007_4.RData")