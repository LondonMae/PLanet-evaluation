library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='OKGoogle') |>
  set_units(participant=51, 
            block = 3, 
            col = nested_in(block, 2), 
            trial = crossed_by(participant, col)) |>
  set_trts(mode = c("M", "SB", "CD"), topic = 6) |>
  allot_trts(mode ~ block, topic ~ trial) |>
  assign_trts('random', seed=2) |>
  serve_table()