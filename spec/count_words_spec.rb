require "count_words"

RSpec.describe "count_words method" do
  context "give length of string of 5" do
    it "counts number of words in string" do
      result = count_words("Hello")
      expect(result).to eq 5
    end
  end
end
