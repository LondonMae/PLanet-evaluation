library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

  design(name='bigfoot') |>
  set_units(participant = 18,
            trial = nested_in(participant, 9)) |>
  set_trts(footstep = c("fore", "rear", "full"), posture=c("straight", "back",
  "desk")) |>
  allot_trts(~ trial) |>
  assign_trts('random', seed=2) |>
  serve_table()