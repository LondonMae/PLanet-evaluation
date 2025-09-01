library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

# Note: seed set to 5 results on non-counterbalanced order...  
design(name='ARTiST') |>
set_units(participant = 16,
            trial = nested_in(participant, 2)) |>
set_trts(task = c('coffee', 'room'),
            interface = c('ARTiST', 'baseline')) |>
allot_trts(task ~ trial, interface ~ trial) |>
assign_trts('random', seed=5) |>
serve_table()