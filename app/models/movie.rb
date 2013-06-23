class Movie < ActiveRecord::Base
  attr_accessible :name, :price, :started_at
end
