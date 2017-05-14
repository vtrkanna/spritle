class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  
  def likes_count
    likes.chars.uniq.count
  end

  def likes_list
    likes.chars.uniq
  end
end
