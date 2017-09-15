require 'sequel'

class List < Sequel::Model
  set_primaty_key :id

  one_to_many :items
  one_to_many :permissions
  one_to_many :logs
end

class Item < Sequel::Model
  set_primary_key :id

  many_to_one :user
  many_to_one :list
end




=begin
  Line 3: class List < Sequel::Model, Means that the List model will inherit the Model class of the Sequel module.

  Line 4: This define the primary key

  Line 6: one_to_many :items means that each list will have many items and every item correspond to exactly one list
  
  Line 7: one_to_many :permissions means that one list can have many permissions and each permission will correspond to exactly one list

  Line 8: one_to_many :logs means that each list can have many logs and each log will correspond to exactly one list 

  Line 14: many_to_one :user is the invers of one_to_many. It means that many items can correspond to one user, but onr item cannot correspond to many users.

  Line 15: many_to_one :list means that many items can correspond to one list but one item cannot correspond to many lists.  
  
=end
