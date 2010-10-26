class Post < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :author, :entry, :presence => true
  has_many :links
end
