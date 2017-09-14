Sequel.migration do
  change do
    create_table :users do
      primary_key :id
      String :name, :unique => true, :length => 32, :null => false
      String :password, :leght => 32, :null => false
      DateTime :created_at
    end
  end
end



=begin
  Line 1: Sequel.migration do Define a migration block that executes on a change.

  Line 2: change do Define a change.

  Line 3: create_table :users do Will create a table named users.

  Line 4: primary_key :id Will create a attribute named id that will be the primary key.
  
  Line 5: String :name, :unique => true, :lenght => 32, :null => flase Will define an attribute of a string type namaed name. The :unique => true constraint means that the values for attribute should be unique and :null => false means that the value cannot be null.

 Line 6: String :password, :lenght => 32, :null => false will create an attribute named password.

  Line 7: DateTime :created_at will create an attribute named created_at of the datetime data type.
=end
