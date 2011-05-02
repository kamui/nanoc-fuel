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

    function facebookHook() {}

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
end