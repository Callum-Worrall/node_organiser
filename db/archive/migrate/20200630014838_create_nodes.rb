class CreateNodes < ActiveRecord::Migration[6.0]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :description
      t.references :workspace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
