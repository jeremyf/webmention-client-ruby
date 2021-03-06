require 'absolutely'
require 'addressable/uri'
require 'http'
require 'indieweb/endpoints'
require 'nokogiri'

require 'webmention/version'
require 'webmention/exceptions'

require 'webmention/client'

require 'webmention/parsers'
require 'webmention/parsers/base_parser'
require 'webmention/parsers/html_parser'

require 'webmention/services/http_request_service'
require 'webmention/services/node_parser_service'

module Webmention
  class << self
    def client(source)
      Client.new(source)
    end

    def send_mention(source, target)
      client(source).send_mention(target)
    end
  end
end
