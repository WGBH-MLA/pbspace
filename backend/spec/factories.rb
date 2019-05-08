require_relative '../../schemas/digital_object_ext'
require_relative '../../schemas/instantiation'

FactoryBot.define do
  def JSONModel(key)
    JSONModel::JSONModel(key)
  end
  # JSON Models:

  factory :json_digital_object_with_instantiation, class: JSONModel(:digital_object) do
    title { "Digital Object #{generate(:generic_title)}" }
    language { generate(:archival_object_language) }
    digital_object_id { generate(:alphanumstr) }
    extents { [build(:json_extent)] }
    file_versions { few_or_none(:json_file_version) }
    dates { few_or_none(:json_date) }
    instantiations { [ build(:json_instantiation) ] }
  end

  factory :json_instantiation, class: JSONModel(:instantiation) do
    identifier { generate(:alphanumstr) }
    date { generate(:yyyy_mm_dd) }
    digital { generate(:alphanumstr) }
    standard { generate(:alphanumstr) }
    generations { generate(:alphanumstr) }
    colors { generate(:alphanumstr) }
  end
end
