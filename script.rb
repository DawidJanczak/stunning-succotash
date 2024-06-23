# frozen_string_literal: true

require "net/http"
require "uri"

begin
  uri = URI.parse('http://www.google.com')
  connection = Net::HTTP.new(uri.host, uri.port).tap do |client|
    client.open_timeout = 3
  end
  request = Net::HTTP::Post.new(uri.request_uri)

  connection.request(request)
rescue Net::OpenTimeout, Socket::ResolutionError => e
  p "error #{e}"
end

p 'before'
sleep 5
p 'after'
