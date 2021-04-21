class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :style
      t.boolean :character

      t.timestamps
    end
  end
end
