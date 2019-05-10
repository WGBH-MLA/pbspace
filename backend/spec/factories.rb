require 'factory_bot'

FactoryBot.define do
  # JSON Models:

  factory :json_digital_object_with_instantiations, class: JSONModel(:digital_object) do
    title { "Digital Object #{generate(:generic_title)}" }
    language { generate(:archival_object_language) }
    digital_object_id { generate(:alphanumstr) }
    extents { [build(:json_extent)] }
    file_versions { few_or_none(:json_file_version) }
    dates { few_or_none(:json_date) }
    instantiations { [ build(:json_instantiation), build(:json_instantiation) ] }
  end

  factory :json_instantiation, class: JSONModel(:instantiation) do
    identifier { generate(:alphanumstr) }
    date { generate(:yyyy_mm_dd) }
    digital { generate(:alphanumstr) }
    standard { generate(:alphanumstr) }
    generations { generate(:alphanumstr) }
    colors { generate(:alphanumstr) }
    essence_tracks { [ build(:json_essence_track), build(:json_essence_track) ] }
  end

  factory :json_essence_track, class: JSONModel(:essence_track) do
    identifier { generate(:alphanumstr) }
    type { generate(:alphanumstr) }
    standard { generate(:alphanumstr) }
    encoding { generate(:alphanumstr) }
    duration { generate(:alphanumstr) }
    annotation { generate(:alphanumstr) }
  end
end
