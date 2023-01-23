defmodule Ctapi.ClinicalTrialTest do
  use Ctapi.DataCase

  alias Ctapi.ClinicalTrial

  describe "trials" do
    alias Ctapi.ClinicalTrial.Trial

    import Ctapi.ClinicalTrialFixtures

    @invalid_attrs %{age_ll: nil, age_ul: nil, description: nil, title: nil, url: nil}

    test "list_trials/0 returns all trials" do
      trial = trial_fixture()
      assert ClinicalTrial.list_trials() == [trial]
    end

    test "get_trial!/1 returns the trial with given id" do
      trial = trial_fixture()
      assert ClinicalTrial.get_trial!(trial.id) == trial
    end

    test "create_trial/1 with valid data creates a trial" do
      valid_attrs = %{age_ll: 42, age_ul: 42, description: "some description", title: "some title", url: "some url"}

      assert {:ok, %Trial{} = trial} = ClinicalTrial.create_trial(valid_attrs)
      assert trial.age_ll == 42
      assert trial.age_ul == 42
      assert trial.description == "some description"
      assert trial.title == "some title"
      assert trial.url == "some url"
    end

    test "create_trial/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ClinicalTrial.create_trial(@invalid_attrs)
    end

    test "update_trial/2 with valid data updates the trial" do
      trial = trial_fixture()
      update_attrs = %{age_ll: 43, age_ul: 43, description: "some updated description", title: "some updated title", url: "some updated url"}

      assert {:ok, %Trial{} = trial} = ClinicalTrial.update_trial(trial, update_attrs)
      assert trial.age_ll == 43
      assert trial.age_ul == 43
      assert trial.description == "some updated description"
      assert trial.title == "some updated title"
      assert trial.url == "some updated url"
    end

    test "update_trial/2 with invalid data returns error changeset" do
      trial = trial_fixture()
      assert {:error, %Ecto.Changeset{}} = ClinicalTrial.update_trial(trial, @invalid_attrs)
      assert trial == ClinicalTrial.get_trial!(trial.id)
    end

    test "delete_trial/1 deletes the trial" do
      trial = trial_fixture()
      assert {:ok, %Trial{}} = ClinicalTrial.delete_trial(trial)
      assert_raise Ecto.NoResultsError, fn -> ClinicalTrial.get_trial!(trial.id) end
    end

    test "change_trial/1 returns a trial changeset" do
      trial = trial_fixture()
      assert %Ecto.Changeset{} = ClinicalTrial.change_trial(trial)
    end
  end
end
