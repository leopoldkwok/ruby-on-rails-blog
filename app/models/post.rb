class Post < ActiveRecord::Base
# We're going to add in some functionality to our new Rails app which enforces a rule that 
# every post must have a title
  
  # attr_accessible :body, :title - we donot need to use attr_accessible anymores

  validates_presence_of :body, :title

  has_many :comments

end
