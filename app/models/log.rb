class Log < ActiveRecord::Base
  belongs_to :training
  validates_presence_of :value
  
  def training_name
    self.training.nil? ? "No training id" : self.training.name
  end
end
