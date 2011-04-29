# encoding: utf-8

require 'haml'

module NanocFuel::Helpers
   module Facebook
     def fb_init(app_id)
       fb_init_haml(app_id)
     end

     def fb_init_haml(app_id)
       template = File.read(File.expand_path("../templates/fb_init.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :app_id => app_id)
     end
   end
end