library(edibble)
set.seed(2020)
options(tibble.print_max = Inf)
options(tibble.width = Inf)
options(width = 250)

design(name='Silver') |>
  set_units(unit = 210) |>
  set_trts(pronouns = c('watashi-kanji', 'atashi', 'ore', 'boku', 'watashi', 'watakushi', 'atakushi', 'uchi', 'jibun', 'washi')) |>
  allot_trts(pronouns ~ unit) |>
  assign_trts('random', seed=2) |>
  serve_table()