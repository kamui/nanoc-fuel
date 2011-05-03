require 'test_helper'

class NanocFuel::Helpers::GoogleTest < MiniTest::Unit::TestCase
  include NanocFuel::Helpers::Google
  def test_ga_tracking
    html = %q{
      <script type='text/javascript'>
        //<![CDATA[
          var _gaq = _gaq || [];
          _gaq.push(['_setAccount', 'UA-12345']);
          _gaq.push(['_trackPageview']);
          
          (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();
        //]]>
      </script>
    }
    assert_equal compact(html), compact(ga_tracking('UA-12345'))
  end
end