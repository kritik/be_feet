class Training < ActiveRecord::Base
  has_many :exercises
  has_many :logs
  
  accepts_nested_attributes_for :exercises, :reject_if => lambda{|a| a[:name].blank?}, :allow_destroy => true  
  accepts_nested_attributes_for :logs, :allow_destroy => true
  validates_presence_of :name
end
