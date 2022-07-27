class Adapter < Client
  def initialize(object:)
    @object = object
  end

  def perform
    object.perform_now
  end

  private

  attr_reader :object
end
