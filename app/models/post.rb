class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :comments, as: :commentable
  has_many :tags, :through => :post_tags


  validates :title, :content, :user_id,
            :presence => true
end
