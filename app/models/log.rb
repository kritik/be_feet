class Log < ActiveRecord::Base
  belongs_to :training
  validates_presence_of :value
  
  default_scope order("time ASC")
  
  def training_name
    self.training.nil? ? "No training id" : self.training.name
  end
end
