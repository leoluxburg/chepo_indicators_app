class CreateReasons < ActiveRecord::Migration[5.2]
  def change
    create_table :reasons do |t|
      t.string :title
      t.text :description
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
