library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='ARTiST') |>
set_units(participant = 16,
            trial = 5,
            unit = crossed_by(participant, trial),
            replication = nested_in(unit, 3)) |>
set_trts(subtask = c('S1', 'S2', 'S3', 'S4', 'S5'),
            interface = c('M1', 'M2', 'M3', 'M4', 'M5')) |>
allot_trts(subtask ~ unit, interface ~ unit) |>
assign_trts(c('random', 'random'), seed=25) |>
serve_table()
