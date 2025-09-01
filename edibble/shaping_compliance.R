library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

# NOTE: inexpressible 
design(name='Electrode') |>
set_units(participant = 12,
        block = nested_in(participant, 3),
        trial = nested_in(block, 12))|>

set_trts(number_of_grains = c("9", "19", "39"), conditions = c("0", "4", "6", "9")) |> 
allot_trts(~ trial) |> 
assign_trts('random', seed=2) |>
serve_table()