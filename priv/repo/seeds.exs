# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Ctapi.Repo.insert!(%Ctapi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Ctapi.ClinicalTrial.Trial
alias Ctapi.Repo

%Trial{
  url: "https://ClinicalTrials.gov/show/NCT03343197",
  description: "Trial Description Here",
  title: "Study of AG-120 and AG-881 in Subjects With Low Grade Glioma",
  age_ll: 18,
  age_ul: 50
}
|> Repo.insert!()

%Trial{
  url: "https://ClinicalTrials.gov/show/NCT04316039",
  description: "Trial Description Here",
  title:
    "Radiotherapy Versus Radiotherapy Combined With Temozolomide in High-risk Low-grade Gliomas After Surgery",
  age_ll: 12,
  age_ul: 32
}
|> Repo.insert!()

%Trial{
  url: "https://ClinicalTrials.gov/show/NCT02286531",
  description: "Trial Description Here",
  title:
    "Evaluation de O-(2-[18F]-Fluoroethyl)-L-Tyrosine, a New Tracer PET, in the Diagnosis of Low Grade Glioma (PET-FETII)",
  age_ll: 50,
  age_ul: 75
}
|> Repo.insert!()
