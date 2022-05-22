# require "grammar_stats"

# RSpec.describe GrammarStats do
#     grammar_stats = GrammarStats.new()
#     it "return true if begins with capital and ends with punctuation mark " do
#         expect(grammar_stats.check("Hello, everybody.")).to eq true
#     end
#     it "return true if begins with capital and ends with punctuation mark " do
#         expect(grammar_stats.check("Mike, are you okay?")).to eq true
#     end
#     it "return true if begins with capital and ends with punctuation mark " do
#         expect(grammar_stats.check("Hello, everybody.")).to eq true
#     end
#     it "return false if string don't begin with captial" do
#         expect(grammar_stats.check("are you okay?!")).to eq false
#     end
#     it "return false if string don't end with punctuation mark" do
#         expect(grammar_stats.check("hello, are you okay")).to eq false
#     end
#     it "percentage of one passed checks out of one" do
#         grammar_stats.check("Hello, everybody.") #pass
#         grammar_stats.check("Hi, everybody.")#pass
#         grammar_stats.check("are you okay") #fail
#         grammar_stats.check("Hackney?")#pass
#         grammar_stats.check("Hello, everybody.")#pass
#         grammar_stats.check("are you okay?!")#fail
#         grammar_stats.check("My name is Hafiz!")#fail
#         expect(grammar_stats.percentage_good).to eq 57
#     end
# end