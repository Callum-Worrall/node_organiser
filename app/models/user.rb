class User < ApplicationRecord
  has_many :nodes, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
