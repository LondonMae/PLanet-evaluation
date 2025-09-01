 
library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)
#Note: Inexpressible!
design(name='ExerciseVe') |>
set_units(inner_r = 3*6, inner_c = 3, inner = crossed_by(inner_c, inner_r),
        outer_r = 4, outer_c = 4, outer=crossed_by(outer_c, outer_r),
        trial = crossed_by(inner, outer))|>

set_trts(intensity = c("low", "medium", "high"), ve=c("happiness",
"sadness", "stress", "calmness")) |> 
allot_trts(intensity ~ inner, ve ~ outer) |> 
assign_trts('random', seed=2) |>
serve_table()