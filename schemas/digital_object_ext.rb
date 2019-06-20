{
  "instantiations" => {
    "type" => "array",
    "items" => { "type" => "JSONModel(:instantiation) object" },
  },
  "properties" => {
    "genre" => { "type" => "string" },
  },
  "additional_identifiers" => {
    "type" => "array",
    "items" => { "type" => "JSONModel(:additional_identifier) object" },
  },
  "additional_titles" => {
    "type" => "array",
    "items" => { "type" => "JSONModel(:additional_title) object" },
  },
}