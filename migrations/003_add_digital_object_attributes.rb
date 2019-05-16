Sequel.migration do

  up do
    alter_table(:digital_object) do
      add_column :genre, String
    end
  end


  down do
    alter_table(:digital_object) do
      drop_column :genre
    end
  end

end
