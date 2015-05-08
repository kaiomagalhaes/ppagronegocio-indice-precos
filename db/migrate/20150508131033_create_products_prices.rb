class CreateProductsPrices < ActiveRecord::Migration
  def change
    create_table :prices_products do |t|
    	t.column "product_id", :integer, :null => false
  		t.column "price_id",  :integer, :null => false
    end
  end
end
