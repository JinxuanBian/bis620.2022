test_that(
  "The spectral_signature() returns a tbl_df object.",
  {
    data(ukb_accel)
    ret <-  spectral_signature(ukb_accel[1:100, ],
                               take_log = FALSE, inverse = TRUE)
    expect_true(inherits(ret, "tbl_df"))
  }
)

test_that(
  "The spectral_signature() could still run successfully if take_log is TRUE",
  {
    data(ukb_accel)
    ret <-  spectral_signature(ukb_accel[1:100, ],
                              take_log = TRUE, inverse = TRUE)
    expect_true(inherits(ret, "tbl_df"))
  }
)
