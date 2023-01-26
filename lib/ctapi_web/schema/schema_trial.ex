defmodule Ctapi.Schema.ClinicalTrial do
  use Absinthe.Schema.Notation

  object :trial do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
    field :title, non_null(:string)
    field :age_ll, non_null(:integer)
    field :age_ul, non_null(:integer)
  end
end
