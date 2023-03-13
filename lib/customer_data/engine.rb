module CustomerData
  class Engine < ::Rails::Engine
    isolate_namespace CustomerData

    config.generators do |g|
      g.test_framework :rspec
    end

    config.paths["db/migrate"].unshift(self.root.to_s + "/db/customer_data_migrate")
  end
end
