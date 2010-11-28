class Training < ActiveRecord::Base
  has_many :logs
  has_many :exercises
  accepts_nested_attributes_for :exercises, :reject_if => lambda{|a| a[:name].blank?}, :allow_destroy => true
  #:all_blank
  accepts_nested_attributes_for :logs, :allow_destroy => true
  validates_presence_of :name
end
