class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :entry
      t.boolean :published, :default => false
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
