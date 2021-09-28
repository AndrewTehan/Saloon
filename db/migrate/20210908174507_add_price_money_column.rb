# frozen_string_literal: true

class AddPriceMoneyColumn < ActiveRecord::Migration[6.1]
  def change
    add_monetize :services, :price
  end
end
