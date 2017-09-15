require 'sequel'

class Log < Sequel::Model
  set_primary_key :id

  many_to_one :user
  many_to_one :list
end

=begin
  Line 4: many_to_one :user means that each log will correspond to exactly one user

  Line 5: many_to_one :user means that each log will correspond to exactly one list
  
=end


