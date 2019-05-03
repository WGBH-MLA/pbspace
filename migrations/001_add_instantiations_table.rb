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
