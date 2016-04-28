#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :meals, inverse_of: :user
end
