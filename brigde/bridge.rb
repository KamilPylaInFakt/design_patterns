class Implementation
  def operation
    raise NotImprementError
  end
end

class ImplementationFirst < Implementation
  def operation
    'First implementation.'
  end
end

class ImplementationSecond < Implementation
  def operation
    'Second implementation.'
  end
end

class Abstraction
  def initialize(implementation:)
    @implementation = implementation
  end

  def perform
    implementation.operation
  end

  private

  attr_reader :implementation
end

implementation_f = ImplementationFirst.new
implementation_s = ImplementationSecond.new
abstraction_f = Abstraction.new(implementation: implementation_f)
abstraction_s = Abstraction.new(implementation: implementation_s)

puts "Implementation first: #{abstraction_f.perform}"
puts "Implementation second: #{abstraction_s.perform}"
