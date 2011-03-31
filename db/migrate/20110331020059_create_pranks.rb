class CreatePranks < ActiveRecord::Migration
  def self.up
    create_table :pranks do |t|
      t.string :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :pranks
  end
end
