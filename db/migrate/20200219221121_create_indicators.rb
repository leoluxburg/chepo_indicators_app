class CreateIndicators < ActiveRecord::Migration[5.2]
  def change
    create_table :indicators do |t|
      t.string :title
      t.text :description
      t.text :methodology
      t.string :positive
      t.string :negative
      t.string :medium
      t.string :unit
      t.string :value
      t.float :rate
      t.string :result
      t.text :justification
      t.text :other
      t.references :subtheme, foreign_key: true

      t.timestamps
    end
  end
end
