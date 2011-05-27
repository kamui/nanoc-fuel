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

     def fb_meta_admin(meta_admin)
       template = File.read(File.expand_path("../templates/facebook/fb_meta_admin.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :meta_admin => meta_admin)
     end

     def fb_meta_app_id(meta_app_id)
       template = File.read(File.expand_path("../templates/facebook/fb_meta_app_id.haml", __FILE__))
       Haml::Engine.new(template).render(Object.new, :meta_app_id => meta_app_id)
     end
   end
end