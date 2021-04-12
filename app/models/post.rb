class Post < ApplicationRecord
  validates :Autheur, :content, presence: true
end
