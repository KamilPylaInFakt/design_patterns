module Bussiness
  class DeliveryBox
    def delivery_full?
      false
    end

    def delivery_broken
      false
    end

    def get_user_data
      p 'User data'
    end

    def open_box
      p 'Box open'
    end
  end

  class DeliveryBoxSystem
    def send_notification
      'send notificaiton'
    end

    def payment_secure?
      p 'Payment has been secure'
      true
    end

    def user_validated?
      p 'User data has been validated'
      true
    end

    def schedule_delivery
      'Delivery has been scheduled'
    end
  end
end

module Fasade
  class Fasade
    def initialize
      @box = ::Bussiness::DeliveryBox.new
      @box_system = ::Bussiness::DeliveryBoxSystem.new
    end

    def pickup_package
      box.get_user_data

      return if box_system.user_validated? && box_system.payment_secure?

      box.open_box
    end

    private

    attr_reader :box, :box_system
  end
end

# nie dobry pomysł!
def pickup_package
  delivery_box = ::Bussiness::DeliveryBox.new
  delivery_box_system = ::Bussiness::DeliveryBoxSystem.new

  delivery_box.get_user_data

  if delivery_box_system.user_validated? && delivery_box_system.payment_secure?
    delivery_box.open_box
  end
end

pickup_package

fasade = ::Fasade::Fasade.new
fasade.pickup_package