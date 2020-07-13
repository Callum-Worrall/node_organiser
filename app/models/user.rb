class User < ApplicationRecord
  has_many :workspaces, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
