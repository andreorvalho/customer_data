module CustomerData
  class CustomerDataRecord < ApplicationRecord
    self.abstract_class = true

    connects_to database: { writing: :customer_data, reading: :customer_data  }
  end
end
