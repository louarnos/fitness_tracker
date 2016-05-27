#
class User < ActiveRecord::Base
  attr_writer :tdee
  include Authentication
  has_many :examples
  has_many :meals, inverse_of: :user

  def tdee
    if gender == 'f'
      bmr = 655 + (9.6 * (weight * 0.453592)) + (1.8 * (height * 2.54)) - (4.7 * age)
    elsif gender == 'm'
      bmr = 66 + (13.7 * (weight * 0.453592)) + (5 * (height * 2.54)) - (6.8 * age)
    end
    tdee = bmr * activity_level
  end
end
