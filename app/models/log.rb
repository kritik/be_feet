class Log < ActiveRecord::Base
  belongs_to :training
  belongs_to :value
end
