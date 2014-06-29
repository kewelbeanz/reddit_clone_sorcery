class User < ActiveRecord::Base
  has_many :posts
  authenticates_with_sorcery!
  
  # taken from Ryan Bates screencast
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
