class CreateEventPriceJoin < ActiveRecord::Migration
  def change
    create_table :events_prices do |t|

	  t.column 'event_id', :integer
      t.column 'price_id', :integer

    end
  end
end
