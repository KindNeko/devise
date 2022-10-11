class ApplicationRecord < ActiveRecord::Base
  has_many :microposts
  self.abstract_class = true
end
