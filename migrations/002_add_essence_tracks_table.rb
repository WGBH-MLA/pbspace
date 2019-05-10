Sequel.migration do

  up do
    create_table(:essence_track) do
      primary_key :id
      Integer :instantiation_id, :null => true

      String :identifier
      String :type
      String :standard
      String :encoding
      String :duration
      String :annotation, text: true

      apply_mtime_columns
    end

    alter_table(:essence_track) do
      add_foreign_key([:instantiation_id], :instantiation, :key => :id)
    end
  end


  down do
    drop_table(:essence_track)
  end

end
