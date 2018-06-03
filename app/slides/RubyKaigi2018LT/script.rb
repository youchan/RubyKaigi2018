require 'hyalite'
require 'browser/http'
require 'browser/socket'
require 'browser/location'

class Script
  include Hyalite::Component
  include Hyalite::Component::ShortHand

  def render
    div({dangerouslySetInnerHTML: { __html: @props[:script_html]}})
  end
end

$document.ready do
  ws = Browser::Socket.new("ws://#{$window.location.host}/push_notification/start/script/RubyKaigi2018LT")
  $window.on('keydown') do |evt|
    ws.write("RubyKaigi2018LT:keydown:#{evt.code}")
  end

  response = Browser::HTTP.get!('/assets/scripts/RubyKaigi2018LT/script.html')
  Hyalite.render(Hyalite.create_element(Script, script_html: response.text), $document['.script'])
end

