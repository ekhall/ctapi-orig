defmodule Ctapi.ClinicalTrial.Trial do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trials" do
    field :age_ll, :integer
    field :age_ul, :integer
    field :description, :string
    field :title, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(trial, attrs) do
    trial
    |> cast(attrs, [:url, :description, :title, :age_ul, :age_ll])
    |> validate_required([:url, :description, :title, :age_ul, :age_ll])
  end
end
