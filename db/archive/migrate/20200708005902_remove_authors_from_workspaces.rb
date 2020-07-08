class RemoveAuthorsFromWorkspaces < ActiveRecord::Migration[6.0]
  def change
    remove_reference :workspaces, :author, null: false, foreign_key: true
  end
end
