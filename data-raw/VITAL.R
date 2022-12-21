## code to prepare `VITAL` dataset goes here
library(haven)
library(purrr)
folfox_path = file.path("data-raw", "NCT01169259", "AllProvidedFiles_454", "1")
ff_files = dir(folfox_path)
ff_names = gsub("VITAL_trial_NEJM_2022.sas7bdat", "", ff_files)
dl = map(file.path(folfox_path, ff_files), ~ read_sas(.x))
dl = map(file.path(folfox_path, ff_files), read_sas)
names(dl) = ff_names

vital <- dl[[1]]

usethis::use_data(vital, overwrite = TRUE)
