require File.dirname(__FILE__)+"/use_db/engine"
require File.dirname(__FILE__)+"/use_db/use_db_plugin"
require File.dirname(__FILE__)+"/use_db/migration"

ActiveRecord::Base.extend(UseDbPlugin)