class Node < ApplicationRecord
  belongs_to :workspace

  validates :name, presence: true
  
end
