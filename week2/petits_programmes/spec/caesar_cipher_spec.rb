require_relative '../lib/caesar_cipher.rb'

describe "caesar_cipher method" do
    it "should return the encrytion of the message" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
end