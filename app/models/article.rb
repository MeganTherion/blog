class Article < ApplicationRecord
  include Visible
  has_many :comments
  # instance variable @article containing an article => @article.comments to retrieve all comments
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
