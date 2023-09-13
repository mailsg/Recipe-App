class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.decimal :preparation_time
      t.decimal :cooking_time
      t.string :description
      t.boolean :public, null: false,default: false

      t.timestamps
    end
  end
end
