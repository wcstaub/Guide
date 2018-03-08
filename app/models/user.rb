class User < ApplicationRecord
	
	serialize :comment_ids
	has_many :comments
	  
	attr_accessor :email, :password, :password_confirmation
	  
	validates_uniqueness_of :email
end
