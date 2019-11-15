class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  
  def user_attributes=(user_attributes)
    self.user= User.find

end
