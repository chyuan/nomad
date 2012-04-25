class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :Day
      t.string :Location
      t.string :Sales

      t.timestamps
    end
  end
end
