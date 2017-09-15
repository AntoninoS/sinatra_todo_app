Sequel.migration do
  up do
    add_column :lists, :shared_with, String, default: "private", null: false
  end

  down do
    drop_column :lists, :shared_with
  end

end
