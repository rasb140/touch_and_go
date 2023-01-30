class AddStartingPriceToAirplanes < ActiveRecord::Migration[7.0]
  def change
    add_column :airplanes, :starting_price, :integer, null: false, default: 0
  end
end
