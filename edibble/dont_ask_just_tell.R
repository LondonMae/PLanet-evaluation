library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='Explainations') |>
set_units(participant = 204,
        trial = nested_in(participant, 10)) |>
set_trts(intervention = c("control", "causal", "ai"), statement=40) |>
allot_trts(statement ~ trial, intervention ~ participant) |>
assign_trts('random', seed=2) |>
serve_table()