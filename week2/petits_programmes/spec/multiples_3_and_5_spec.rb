require_relative '../lib/multiples_3_and_5.rb'

describe "the is_multiple_of_3_or_5 method" do
    it "should return the sum of multiple_of_3_or_5 below value" do
        expect(is_the_multiple_of_3_or_5(1000)).to eq(233168)
    end
end