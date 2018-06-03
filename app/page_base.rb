require_relative './page_background'

module Gibier
  class PageBase
    include Hyalite::Component

    def initialize
      @height = 0
    end

    def page_class_name
      "page_#{@props[:page_number]}"
    end

    def header
      nil
    end

    def content
      nil
    end

    def render
      rect = @props[:rect]
      window_width = `window.innerWidth`
      window_height = `window.innerHeight`
      puts ">>>>>> width: #{window_width}, height: #{window_height}"
      container_style = {zoom: rect.zoom, top: "#{rect.top}px", left: "#{rect.left}px", width: "#{rect.width}px", height: "#{rect.height}px"} 
      display = @props[:visible] ? 'block' : 'none'
      section({class: "page #{page_class_name}", style: {width: "#{window_width}px", height: "#{window_height}px", display: display}},
        div({class: 'page-container', style: container_style},
          div({class: 'page-header'}, header),
          div({class: 'page-content'}, content)
        ),
        PageBackground.el({zoom: rect.zoom, page_number: @props[:page_number]})
      )
    end
  end
end
