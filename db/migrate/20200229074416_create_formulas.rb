class CreateFormulas < ActiveRecord::Migration[5.2]
  def change
    create_table :formulas do |t|
      t.references :statistic, foreign_key: true
      t.references :indicator, foreign_key: true

      t.timestamps
    end
  end
end
