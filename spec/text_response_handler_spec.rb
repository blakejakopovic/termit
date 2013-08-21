require 'spec_helper'

describe Termislator::TextResponseHandler do
  describe "call method" do
    it "extracts and prints data from HTTP response" do
      response_body = File.open('spec/fixtures/text_response').read
      handler = Termislator::TextResponseHandler.new(response_body)
      expect(handler.text).to eq('Twoja matka')
    end
  end
end