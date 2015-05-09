class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :value

      t.timestamps null: false
    end
  end
end
