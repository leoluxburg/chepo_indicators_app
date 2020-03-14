class CreateSubthemes < ActiveRecord::Migration[5.2]
  def change
    create_table :subthemes do |t|
      t.string :title
      t.text :comment
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
