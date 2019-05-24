Sequel.migration do

  up do
    create_table(:instantiation) do
      primary_key :id
      Integer :digital_object_id, :null => true

      String :identifier
      Date :date
      String :digital
      String :standard
      String :generations
      String :colors
      String :duration
      String :data_rate
      String :tracks
      String :channel_configuration
      String :alternative_modes
      String :video_track_standard
      String :audio_track_standard
      String :video_track_encoding
      String :audio_track_encoding
      String :video_track_data_rate
      String :audio_track_data_rate
      String :frame_rate
      String :playback_speed
      String :sampling_rate
      String :video_bit_depth
      String :audio_bit_depth
      String :frame_size
      String :aspect_ratio
      String :video_track_time_start
      String :audio_track_time_start
      String :video_track_duration
      String :audio_track_duration

      apply_mtime_columns
    end

    alter_table(:instantiation) do
      add_foreign_key([:digital_object_id], :digital_object, :key => :id)
    end
  end


  down do
    drop_table(:instantiation)
  end

end
