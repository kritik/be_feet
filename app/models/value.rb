class Value < ActiveRecord::Base
  belongs_to :training
  has_many :logs
end
