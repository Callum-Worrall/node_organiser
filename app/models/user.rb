class User < ApplicationRecord
  has_many :nodes, dependent: :destroy
end
