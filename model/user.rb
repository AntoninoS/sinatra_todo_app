require 'sequel'

class User < Sequel::Model
  set_primary_key :id
  
  one_to_many :items
  one_to_many :permissions
  one_to_many :logs

end

=begin
  Line 3: class User < Sequel::Model tells the appliation to inherit the Model class of the Sequel module

  Line 4: set_primary_key :id defines the primary key for the User model

  Line 6: one_to_many :items means that one user can have many items ans each item will correspond to exactly one user

  Line 7: one_to_many :permissions means that one user cna have many permissions and each permission will correspond to exactly one user

  Line 8: one_to_many :logs means that one user can have many logs and each log will correspond to exactly one user
=end
