require 'cuba'
require 'mote'
require 'mote/render'
require 'rack/static'

Cuba.use Rack::Static, urls: %w(/css /js /imgs favicon.ico), root: 'public'

Cuba.plugin Mote::Render

Cuba.define do
  on root do
    render 'cards', name: 'olvap'
  end
end
