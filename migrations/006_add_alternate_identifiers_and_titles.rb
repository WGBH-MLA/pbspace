Sequel.migration do

  up do
    create_table(:additional_identifier) do
      primary_key :id
      Integer :digital_object_id, :null => true

      String :identifier
      String :type

      apply_mtime_columns
    end

    alter_table(:additional_identifier) do
      add_foreign_key([:digital_object_id], :digital_object, :key => :id)
    end

    create_table(:additional_title) do
      primary_key :id
      Integer :digital_object_id, :null => true

      String :title
      String :type

      apply_mtime_columns
    end

    alter_table(:additional_title) do
      add_foreign_key([:digital_object_id], :digital_object, :key => :id)
    end

  end


  down do
    drop_table(:additional_identifier)
    drop_table(:additional_title)
  end

end
