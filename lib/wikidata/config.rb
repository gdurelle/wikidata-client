require 'faraday/net_http'

module Wikidata
  class Config
    class << self
      attr_accessor :options, :faraday, :settings, :mapping

      def configure &block
        yield self
      end
    end

    @options = {}
    Faraday.default_adapter = :net_http
    @faraday = ->(builder) { builder.adapter :net_http }
    @settings = Hashie::Mash.new(
      YAML.load_file(
        File.expand_path('../../../config/settings.yml', __FILE__)
      )
    )
    @mapping = Hashie::Mash.new(
      YAML.load_file(
        File.expand_path('../../../config/mapping.yml', __FILE__)
      )
    )
  end
end
