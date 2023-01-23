defmodule CtapiWeb.Schema do
  use Absinthe.Schema

  alias CtapiWeb.TrialResolver

  object :trial do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
    field :title, non_null(:string)
    field :age_ll, non_null(:integer)
    field :age_ul, non_null(:integer)
  end

  query do
    @desc "Get all the trials"
    field :all_trials, non_null(list_of(non_null(:trial))) do
      resolve(&TrialResolver.all_trials/3)
    end

    @desc "Get trials based on age query"
    field :trials_by_age, non_null(list_of(non_null(:trial)) do
      resolve(&TrialResolver.trials_by_age/3)
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
