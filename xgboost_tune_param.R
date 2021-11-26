

colsample_bytree <- function(range = c(1L, unknown()), trans = NULL) {
  new_quant_param(
    type = "integer",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(colsample_bytree = "# Sample variables by tree"),
    finalize = get_p
  )
}

lambda <- function(range = c(-10, 1), trans = log10_trans()) {
  new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(penalty_L2 = "Amount of L2 Regularization"),
    finalize = NULL
  )
}


alpha <- function(range = c(-10, 1), trans = log10_trans()) {
  new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(penalty_L1 = "Amount of L1 Regularization"),
    finalize = NULL
  )
}
