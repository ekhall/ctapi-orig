defmodule CtapiWeb.TrialResolver do
  alias Ctapi.ClinicalTrial

  def all_trials(_root, _args, _info) do
    {:ok, ClinicalTrial.list_trials()}
  end

  def create_trial(_root, args, _info) do
    case ClinicalTrial.create_trial(args) do
      {:ok, trial} -> {:ok, trial}
      _error -> {:error, "Could not create trial"}
    end
  end
end
