class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :descrition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
