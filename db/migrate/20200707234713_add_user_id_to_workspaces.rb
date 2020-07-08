class AddUserIdToWorkspaces < ActiveRecord::Migration[6.0]
  def change
    add_reference :workspaces, :user, null: false, foreign_key: true
  end
end
