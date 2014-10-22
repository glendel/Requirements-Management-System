# It is recommended to set time zone in TZ environment variable so that the same timezone will be used by Ruby and by Oracle session
ENV[ 'TZ' ] = 'America/Bogota'

ActiveSupport.on_load( :active_record ) do
  ActiveRecord::ConnectionAdapters::OracleEnhancedAdapter.class_eval do
    
  end
end
