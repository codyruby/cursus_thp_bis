require_relative '../lib/twitter'

describe "the login_twitter method" do
    it "should return client, and client is not nil" do
      expect(login_twitter).to eq(client)
    end
  end