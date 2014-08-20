class Micropost < ActiveRecord::Base
  validates :content, length: { maximum: 140, minimum: 1}
  validates :user_id, presence: true
  default_scope -> { order('created_at DESC') }
  belongs_to :user
end
