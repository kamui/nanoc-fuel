require 'test_helper'

class NanocFuel::Helpers::FacebookTest < MiniTest::Unit::TestCase
  include NanocFuel::Helpers::Facebook

  def test_fb_init
    html = %q{
<div id='fb-root'></div>
<script type='text/javascript'>
  //<![CDATA[
    window.fbAsyncInit = function() {
      FB.init({
        appId: '12345',
        status: true,
        cookie: true,
        xfbml: true
      });
      fbInitHook();
    };

    function sizeChangeCallback() {
      FB.Canvas.setSize();
    }

    (function(d){
       var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
       js = d.createElement('script'); js.id = id; js.async = true;
       js.src = "//connect.facebook.net/en_US/all.js";
       d.getElementsByTagName('head')[0].appendChild(js);
     }(document));
  //]]>
</script>
    }
    assert_equal compact(html), compact(fb_init('12345'))
  end

  def test_fb_comments
    html = %q{
      <fb:comments href='http://example.com' num_posts='10' width='520'></fb:comments>
    }
    assert_equal compact(html), compact(fb_comments('http://example.com', '10', '520'))
  end

  def test_fb_like_btn
    html = %q{
      <iframe allowTransparency='true' frameborder='0' scrolling='no' src='//www.facebook.com/plugins/like.php?href&amp;amp;send=true&amp;amp;layout=standard&amp;amp;width=450&amp;amp;show_faces=true&amp;amp;action=like&amp;amp;colorscheme=light&amp;amp;font&amp;amp;height=80' style='border:none; overflow:hidden; width:450px; height:80px;'></iframe>
    }
    assert_equal compact(html), compact(fb_like_btn("standard", "450", "true", "true"))
  end

  def test_fb_meta_admin
    html = %q{
      <meta content='210427235657242' property='fb:admins' />
    }
    assert_equal compact(html), compact(fb_meta_admin("210427235657242"))
  end

  def test_fb_meta_app_id
    html = %q{
      <meta content='210427235657242' property='fb:app_id' />
    }
    assert_equal compact(html), compact(fb_meta_app_id("210427235657242"))
  end
end