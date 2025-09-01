library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='Perception') |>
  set_units(participant = 506) |>
  set_trts(augmentation_type = c("Sensory", "Motor", "Cognitive"), condition = c("Disability", "No Disability")) |>
  allot_trts(augmentation_type ~ participant, condition ~ participant) |>
  assign_trts('random', seed=2) |>
  serve_table()