class Post < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :title, :url #had to add this?? commented out after error
end
