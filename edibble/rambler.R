library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='Rambler') |>
  set_units(participant = 12,
            trial = nested_in(participant, 2))|>

  set_trts(interface = c("rambler", "baseline")) |> 
  allot_trts(interface ~ trial) |> 
  assign_trts('random', seed=2) |>
  serve_table()