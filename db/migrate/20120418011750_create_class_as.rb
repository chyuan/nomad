class CreateClassAs < ActiveRecord::Migration
  def change
    create_table :class_as do |t|

      t.timestamps
    end
  end
end
