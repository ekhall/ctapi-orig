defmodule CtapiWeb.Schema do
  use Absinthe.Schema
  import_types(Ctapi.Schema.ClinicalTrial)
  alias CtapiWeb.TrialResolver

  query do
    @desc "Get all the trials"
    field :trials, list_of(:trial) do
      arg(:age_ll, :integer)
      resolve(&TrialResolver.all_trials/3)
    end
  end

  mutation do
    @desc "Create a new trial"
    field :create_trial, :trial do
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))
      arg(:title, non_null(:string))
      arg(:age_ll, non_null(:integer))
      arg(:age_ul, non_null(:integer))

      resolve(&TrialResolver.create_trial/3)
    end
  end
end
