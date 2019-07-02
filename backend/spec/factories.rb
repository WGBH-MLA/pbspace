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

  factory :json_digital_object_with_additional_identifiers, class: JSONModel(:digital_object) do
    title { "Digital Object #{generate(:generic_title)}" }
    language { generate(:archival_object_language) }
    digital_object_id { generate(:alphanumstr) }
    extents { [build(:json_extent)] }
    file_versions { few_or_none(:json_file_version) }
    dates { few_or_none(:json_date) }
    additional_identifiers { [ build(:json_additional_identifier), build(:json_additional_identifier) ] }
  end

  factory :json_digital_object_with_additional_titles, class: JSONModel(:digital_object) do
    title { "Digital Object #{generate(:generic_title)}" }
    language { generate(:archival_object_language) }
    digital_object_id { generate(:alphanumstr) }
    extents { [build(:json_extent)] }
    file_versions { few_or_none(:json_file_version) }
    dates { few_or_none(:json_date) }
    additional_titles { [ build(:json_additional_title), build(:json_additional_title) ] }
  end

  factory :json_instantiation, class: JSONModel(:instantiation) do
    identifier { generate(:alphanumstr) }
    date { generate(:yyyy_mm_dd) }
    digital { generate(:alphanumstr) }
    standard { generate(:alphanumstr) }
    generations { generate(:alphanumstr) }
    colors { generate(:alphanumstr) }
    duration { generate(:alphanumstr) }
    data_rate { generate(:alphanumstr) }
    tracks { generate(:alphanumstr) }
    channel_configuration { generate(:alphanumstr) }
    alternative_modes { generate(:alphanumstr) }
    video_track_standard { generate(:alphanumstr) }
    audio_track_standard { generate(:alphanumstr) }
    video_track_encoding { generate(:alphanumstr) }
    audio_track_encoding { generate(:alphanumstr) }
    video_track_data_rate { generate(:alphanumstr) }
    audio_track_data_rate { generate(:alphanumstr) }
    frame_rate { generate(:alphanumstr) }
    playback_speed { generate(:alphanumstr) }
    sampling_rate { generate(:alphanumstr) }
    video_bit_depth { generate(:alphanumstr) }
    audio_bit_depth { generate(:alphanumstr) }
    frame_size { generate(:alphanumstr) }
    aspect_ratio { generate(:alphanumstr) }
    video_track_time_start { generate(:alphanumstr) }
    audio_track_time_start { generate(:alphanumstr) }
    video_track_duration { generate(:alphanumstr) }
    audio_track_duration { generate(:alphanumstr) }
  end

  factory :json_additional_identifier, class: JSONModel(:additional_identifier) do
    identifier { generate(:alphanumstr) }
    type { generate(:alphanumstr) }
  end

  factory :json_additional_title, class: JSONModel(:additional_title) do
    title { generate(:alphanumstr) }
    type { generate(:alphanumstr) }
  end
end
