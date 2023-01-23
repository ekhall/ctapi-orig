defmodule Ctapi.Repo.Migrations.CreateTrials do
  use Ecto.Migration

  def change do
    create table(:trials) do
      add :url, :string
      add :description, :text
      add :title, :string
      add :age_ul, :integer
      add :age_ll, :integer

      timestamps()
    end
  end
end
