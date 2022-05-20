# require "diary_entry"

# RSpec.describe DiaryEntry do
#   it "construct" do
#     diary_entry = DiaryEntry.new("my_title", "my_contents")
#     expect(diary_entry.title).to eq "my_title"
#     expect(diary_entry.contents).to eq "my_contents"
#   end
#   it "return number of words as an interger" do
#     diary_entry = DiaryEntry.new("my_title", "my_contents")
#     expect(diary_entry.count_words).to eq 11
#   end

#   describe "#reading_time" do
#     context "given a wpm of some sensible number(200)" do
#       it "returns the cieling of the number of minutes it takes to read the content"
#       diary_entry = DiaryEntry.new("my_title", "one" * 550)
#       expect(diary_entry.reading_time(200)).to eq 3
#     end
#   end

#   context "given a wpm of 0" do
#     it "shout fail" do
#       diary_entry = DiaryEntry.new("my_title", "one two three")
#       expect{diary_entry.reading_time(0)}.to raise_error "Reading speed must be above zero"
#     end
#   end v
# end