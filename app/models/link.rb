class Link < ActiveRecord::Base
  attr_accessible :title, :url, :thumbnail

  belongs_to :user
end
