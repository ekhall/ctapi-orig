defmodule Ctapi.ClinicalTrialFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ctapi.ClinicalTrial` context.
  """

  @doc """
  Generate a trial.
  """
  def trial_fixture(attrs \\ %{}) do
    {:ok, trial} =
      attrs
      |> Enum.into(%{
        age_ll: 42,
        age_ul: 42,
        description: "some description",
        title: "some title",
        url: "some url"
      })
      |> Ctapi.ClinicalTrial.create_trial()

    trial
  end
end
