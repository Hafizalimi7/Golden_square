require "music_track"

RSpec.describe MusicPlaylist do
    it "return empty list" do
        music = MusicPlaylist.new
        result = music.track_list
        expect(result).to eq []
    end
    it "add tracks to list" do
      music = MusicPlaylist.new
      expect(music.add("Micheal Jackson - Beat It")).to eq ["Micheal Jackson - Beat It"]
    end
    it "adds more tracks to list" do
      music = MusicPlaylist.new
      music.add("Micheal Jackson - Beat It")
      expect(music.add("Jackson 5 - Remember")).to eq ["Micheal Jackson - Beat It","Jackson 5 - Remember"]
    end
    it "raises an error if add method empty " do
      music = MusicPlaylist.new
      expect{music.add("")}.to raise_error "Not added to Play List"
    end
end