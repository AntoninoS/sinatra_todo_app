require 'sequel'

class Permission < Sequel::Model
  many_to_one :user
  many_to_one :list
end

=begin
  Line 4: many_to_one :user means that each permission will correspond to exactly one user

  Line 5: many_to_one :list means that each permission will correspond to exactly one list
=end
