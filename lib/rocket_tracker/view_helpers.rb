module RocketTracker
  module ViewHelpers
    def rocket_tracker_tag
<<-JS.html_safe
<script>
var ROCKET_TRACKER_ENDPOINT = "#{RocketTracker.config.js_endpoint}";
</script>
JS
    end
  end
end
