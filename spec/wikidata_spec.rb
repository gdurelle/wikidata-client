require 'spec_helper'

describe Wikidata do
  let(:options) {
    { request: { timeout: 10 } }
  }
  let(:builder) {
    -> (builder) { builder.use :net_http }
  }
  it 'should be configurable' do
    Wikidata.configure do |c|
      c.options = options
      c.faraday = builder
    end
    Wikidata.options.should be options
    Wikidata.faraday.should be builder
  end
end
