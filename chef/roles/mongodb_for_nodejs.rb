name "mongodb_for_nodejs"

run_list(
  "recipe[apt]",
  "recipe[mongodb_for_nodejs::bootstrap]",
  "recipe[mongodb_for_nodejs::nodejs]"
)
