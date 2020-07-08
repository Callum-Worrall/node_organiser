class Workspace < ApplicationRecord
  belongs_to :user
  has_many :nodes

  validates :name, presence: true
  
end
