require "glysellin"

module GlysellinAssociatedProducts
  class Engine < Rails::Engine
    initializer "include associated porudcts feature to Product model" do |app|
      app.config.to_prepare do
        ActiveSupport.on_load :active_record do
          Glysellin::Product.send(:include, Model)
        end
        ApplicationController.helper(ApplicationHelper)
      end
    end
  end
end
