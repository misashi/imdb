class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies


  attr_reader :year_of_birth
  attr_accessor :age

  def age
    Time.now.year - self.year_of_birth.year
  end
end
