module CustomerData
  class CustomerFacade
    attr_accessor :id

    def initialize(id)
      @id = id
    end

    def information_for_payments
      customer = Customer.find(id)
      customer.as_json(only: [:name, :place_of_birth, :date_of_birth])
    end
  end
end
