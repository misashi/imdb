class User < ActiveRecord::Base
  has_many :reviews
  has_many :movies, through: :reviews

  def full_name
    "#{first_name }  #{last_name}"

  end
end
