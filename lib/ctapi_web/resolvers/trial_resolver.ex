defmodule CtapiWeb.TrialResolver do
  alias Ctapi.ClinicalTrial

  def all_trials(_root, _args, _info) do
    {:ok, ClinicalTrial.list_trials()}
  end
end
