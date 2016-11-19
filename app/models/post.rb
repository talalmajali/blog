class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 15}
  validates :body, presence: true

  belongs_to :user
end
