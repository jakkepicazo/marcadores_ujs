class CreateBeermarks < ActiveRecord::Migration[6.1]
  def change
    create_table :beermarks do |t|
      t.string :name
      t.string :malts
      t.integer :alcohol
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
