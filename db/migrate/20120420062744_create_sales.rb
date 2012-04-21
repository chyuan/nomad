class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :Day
      t.integer :Sales

      t.timestamps
    end
  end
end
