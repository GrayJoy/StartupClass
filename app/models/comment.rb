class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user, foreign_key: :user_id

  validates_presence_of :content
end
