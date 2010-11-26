class Training < ActiveRecord::Base
  has_many :logs
  has_many :values
end
