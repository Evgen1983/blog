ApplicationName::Application.config.middleware.insert_before(Rack::Lock, Rack
 r301 %r{.*}, 'http://www.evgenicaweb.ru$&', :if => Proc.new {|rack_env
  rack_env['SERVER_NAME'] != 'www.evgenicaweb.ru'
 }
 end if Rails.env == 'production'