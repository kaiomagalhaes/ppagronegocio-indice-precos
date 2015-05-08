class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :vulgarName
      t.string :cientificName

	  t.column "category_id", :integer, :null => false

      t.timestamps null: false
    end
  end
end
