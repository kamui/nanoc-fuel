# encoding: utf-8

require 'haml'

module NanocFuel::Helpers
   module Google
    def ga_tracking(ua_id)
      template = File.read(File.expand_path("../templates/google/ga_tracking_code.haml", __FILE__))
      Haml::Engine.new(template).render(Object.new, :ua_id => ua_id)
    end
   end
end