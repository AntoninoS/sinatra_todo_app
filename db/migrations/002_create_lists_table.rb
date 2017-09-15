Sequel.migration do   
  change do
    create_table :lists do
      primary_key :id
      String :name, :length => 32, :null => false
      DateTime :created_at
    end
  end
end
