require "use_db"
require "rails"

module UseDb
  class Engine < Rails::Engine
    initializer "use_db.plugin" do
      require File.dirname(__FILE__)+"/use_db_plugin"
      require File.dirname(__FILE__)+"/migration"
      ActiveRecord::Base.extend(UseDbPlugin)
    end
  end
end