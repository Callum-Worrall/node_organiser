class ChangeNameFromWorkspaces < ActiveRecord::Migration[6.0]
  def change
    change_column_null :workspaces, :name, false
  end
end
