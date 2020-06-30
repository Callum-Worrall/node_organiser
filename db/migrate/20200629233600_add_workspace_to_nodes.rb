class AddWorkspaceToNodes < ActiveRecord::Migration[6.0]
  def change
    add_reference :nodes, :workspace, null: false, foreign_key: true
  end
end
