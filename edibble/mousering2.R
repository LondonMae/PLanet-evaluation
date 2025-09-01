library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)
 
 design(name='Mousering2') |>
    set_units(
              participant = 12,
              block = nested_in(participant, 5),
              trial = nested_in(block, 4),
              selection = nested_in(trial, 10)) |>
    set_trts(interface = c('touchpad', 'airmouse', 'mouseringdouble', 'mouseringsingle')) |>
    allot_trts(interface ~ trial) |>
    assign_trts('random', seed=25) |>
    serve_table()