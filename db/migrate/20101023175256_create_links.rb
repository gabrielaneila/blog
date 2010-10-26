class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :url
      t.text :description
      t.belongs_to :post

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
