require "check_text"

RSpec.describe "check_teck method" do
    context "check if text is in string" do
        it "fails" do
            expect{ check_text("") }.to raise_error "Not a sentence."
        end
    end
    context "given a sentence with '#TODO' " do
        it "return true" do
            result = check_text("How's your #TODO list going ?")
            expect(result).to eq true
        end
    end
    context "given a sentence that mispelled '#TODO' " do
        it "return false" do
            result = check_text("Is that a #TO list ?")
            expect(result).to eq false
        end
    end
    context "given a sentence that '#TODO' is in lower-case" do
        it "return false" do
            result = check_text("Let's look at that #todo list")
            expect(result).to eq false
        end
    end
end