module TrainingsHelper
  def flot_logs(training)
    array = []
    training.logs.each {|log| array << [log.time.to_i, log.value] }
    array
  end
end
