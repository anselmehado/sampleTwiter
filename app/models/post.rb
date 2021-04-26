class Post < ApplicationRecord
  # validates :Autheur, presence: true
  validates :content, presence: true, length: {maximum: 140}

end
