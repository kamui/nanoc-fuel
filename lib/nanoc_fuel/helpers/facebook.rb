# encoding: utf-8

require 'haml'

module NanocFuel::Helpers
   module Facebook
     def fb_init(app_id)
       template = File.read(File.expand_path("../templates/facebook/fb_init.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :app_id => app_id)
     end
     
     def fb_comments(url, num_posts, width)
       template = File.read(File.expand_path("../templates/facebook/fb_comments.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :url => url, :num_posts => num_posts, :width => width)
     end
     
     def fb_like_btn(layout, width, show_faces, send)
       template = File.read(File.expand_path("../templates/facebook/fb_like_btn.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :layout => layout, :width => width, :show_faces => show_faces, :send => send)
     end
     
   end
end