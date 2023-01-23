# Clinical Trials GraphQL API

Phoenix (1.7-rc2) GraphQL API (via Absinthe).

Three initial trials are defined in seeds.exs
An additional trial is created via graphql using the syntax in graphql.snippets

## Early (Test) Schema for Trials
```elixir
  object :trial do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
    field :title, non_null(:string)
    field :age_ll, non_null(:integer) # Age lower limit in years
    field :age_ul, non_null(:integer) # Age upper limit in years
  end
```
## Resolver
Resolver, at present, has an all_trials query endpoint as well as a create_trial mutation endpoint.

## Todo:
Given a subject's age in years, the resolver should filter the list of trials so that:
* age_ll <= subject's age <= age_ul