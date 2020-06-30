class Workspace < ApplicationRecord
  belongs_to :author
  has_many :nodes
end
