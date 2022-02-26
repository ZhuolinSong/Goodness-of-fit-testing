library(devtools)
library(parallel)
devtools::load_all()
RNGkind("L'Ecuyer-CMRG")
data(grid)

seed <- 999983
s_k <- 1000
s_n <- 100
s_m <- 4

new_steface_trig_1004 <- mclapply(new_r_grid_trig, r_loop <- function(s_r) {
    stephanie_type2(seed, s_k, s_n, s_m, "trigonometric", s_r, L = 1000, err = 0.25)
}, mc.cores = 2)

save(new_steface_trig_1004, file = "new_steface_trig_1004.RData")