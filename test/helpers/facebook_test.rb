require 'test_helper'

class NanocFuel::Helpers::FacebookTest < MiniTest::Unit::TestCase
  include NanocFuel::Helpers::Facebook

  def test_fb_init
    
    html = %q{
<script type='text/javascript'>
  //<![CDATA[
    window.fbAsyncInit = function() {
      FB.init({appId: '12345', status: true, cookie: true, xfbml: true});
      fbInitHook();
      FB.Canvas.setSize();
    };

    function fbInitHook() {}

    function sizeChangeCallback() {
      FB.Canvas.setSize();
    }

    (function() {
      var e = document.createElement('script'); e.async = true;
      e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
      document.getElementById('fb-root').appendChild(e);
    }());
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
      <iframe allowTransparency='true' frameborder='0' scrolling='no' src='http://www.facebook.com/plugins/like.php?href&amp;amp;send=true&amp;amp;layout=standard&amp;amp;width=450&amp;amp;show_faces=true&amp;amp;action=like&amp;amp;colorscheme=light&amp;amp;font&amp;amp;height=80' style='border:none; overflow:hidden; width:450px; height:80px;'></iframe>
    }
    assert_equal compact(html), compact(fb_like_btn("standard", "450", "true", "true"))
  end
  
end