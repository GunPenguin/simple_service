require 'rubygems'
require 'simple_service'

class Increment < SimpleService::Command
  expects :counter
  returns :counter

  def execute
    self.counter += 1
  end
end

class IncrementCounter < SimpleService::Organizer
  expects :counter
  returns :counter
  commands Increment, Increment, Increment
end

class ReallyIncrementThatCounter < SimpleService::Organizer
  expects :counter
  returns :counter
  commands IncrementCounter, IncrementCounter, IncrementCounter
end

result = IncrementCounter.new(counter: 0).execute
puts "IncrementCounter: #{result[:counter]}"

result = ReallyIncrementThatCounter.new(counter: 0).execute
puts "ReallyIncrementThatCounter: #{result[:counter]}"
