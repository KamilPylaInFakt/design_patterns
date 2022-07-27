class Client
  def initialize(object:)
    @object = object
  end

  def perform
    object.perform
  end

  private

  attr_reader :object
end