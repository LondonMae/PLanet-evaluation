library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='Mousering') |>
    set_units(participant = 12,
              block = nested_in(participant, 12),
              trial = nested_in(block, 10),
              rep = nested_in(trial, 5)) |>
    set_trts(input = c("touchpad1", "touchpad2", "airmouse1", "airmouse2", "mouseringdouble1", "mouseringdouble2", "mouseringdouble3", "mouseringdouble4", "mouseringsingle1", "mouseringsingle2", "mouseringsingle3", "mouseringsingle4"), page = 10) |>
    allot_trts(input ~ block, page ~ trial) |>
    assign_trts('random', seed=2) |>
    serve_table()