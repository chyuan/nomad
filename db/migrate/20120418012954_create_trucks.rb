class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|

      t.timestamps
    end
  end
end
