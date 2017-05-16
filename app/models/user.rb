class User < ActiveRecord::Base
  rolify
    has_secure_password 
    validates_uniqueness_of :email, :nickname

    has_many :contents
    has_many :comments
end
