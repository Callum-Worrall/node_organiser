class CreateWorkspaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.references :author, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
