class Citation < ApplicationRecord
  validates :author, presence: true, length: {minimum: 3, maximum: 15}
  validates :citation, presence: true, length: {minimum: 10, maximum: 300}
end
