class Comment < ApplicationRecord

  validates :body, :link, :user_id, presence: true

  belongs_to :user,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :link,
  primary_key: :id,
  foreign_key: :link_id,
  class_name: :Link
end
