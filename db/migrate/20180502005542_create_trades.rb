class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.references :seller, null: false
      t.references :buyer, null: false
      t.timestamps
    end
  end
end
