class Citation < ApplicationRecord
  validates :citation, presence: true, length: {minimum: 10, maximum: 300}
end
