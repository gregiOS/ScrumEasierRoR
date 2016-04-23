class User < ActiveRecord::Base
  has_secure_password
  validates :login, :password, :email, :first_name, :second_name, presence: true
  validates :login, uniqueness: true
end
