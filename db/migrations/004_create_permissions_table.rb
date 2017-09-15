Sequel.migration do
  change do 
    create_table :permissions do
      foreign_key :user_id, :users, :null => false
      foreign_key :list_id, :lists, :null => false
      DateTime :created_at
      DateTime :updated_at
      primary_key [:user_id, :list_id], :name => :permission_pk
    end
  end
end

