class Object
  def initialize(date:, amount:, number:, owner:)
    @date = date
    @amount = amount
    @number = number
    @owner = owner
  end

  attr_reader :date, :amount, :number, :owner
end

class Owner
  def initialize(name:, email:)
    @name = name
    @email = email
  end

  attr_reader :name, :email
end

class Decorator
  def initialize(object)
    @object = object
  end

  def next_month
    object.date.next_month
  end
end