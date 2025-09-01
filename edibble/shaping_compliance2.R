library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='ShapingCompliance') |>
  set_units(participant = 12,
            block = nested_in(participant, 3),
            trial = nested_in(block, 5))|>

  set_trts(shape = c("large", "small","horizontal", "vertical", "triangle")) |> 
  allot_trts(~ trial) |> 
  assign_trts('random', seed=2) |>
  serve_table()
