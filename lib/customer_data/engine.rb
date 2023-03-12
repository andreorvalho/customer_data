module CustomerData
  class Engine < ::Rails::Engine
    isolate_namespace CustomerData

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
