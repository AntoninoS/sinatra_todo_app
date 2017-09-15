Sequel.migration do
  up do
    add_column :permissions, :permission_level, String, null: false
  end

  down do
    drop_column :permissions, :permission_level
  end

end
