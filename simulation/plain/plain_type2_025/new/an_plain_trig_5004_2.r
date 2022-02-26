library(parallel)
library(devtools)
devtools::load_all()
RNGkind("L'Ecuyer-CMRG")
data(grid)

s_seed <- 999983
s_k <- 1000
s_n <- 500
s_m <- 4
v_seed <- c(s_seed, s_seed + s_k)

new_plain_5004_2 <- mclapply(v_seed, seed_loop <- function(seed) {
    stephanie_type2(seed, s_k / 2, s_n, s_m, "trigonometric", new_r_grid_trig_500[1], L = 1000, err = 0.25, i_face = F, approx = T, truncate.tn = 1)
}, mc.cores = 2)


save(new_plain_5004_2, file = "new_plain_trig_5004_2.RData")