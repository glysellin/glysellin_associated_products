require "glysellin"

module GlysellinAssociatedProducts
  class Railtie < Rails::Railtie
    initializer "include associated porudcts feature to Product model" do |app|
      app.config.to_prepare do
        ActiveSupport.on_load :active_record do
          Glysellin::Product.send(:include, Model)
        end
      end
    end
  end
end
