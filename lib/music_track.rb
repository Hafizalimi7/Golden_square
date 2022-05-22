class MusicPlaylist
    def initialize
        @list = []
    end
    def add(tracks)
        fail "Not added to Play List" if tracks.empty?
        return @list << tracks
    end
    def track_list
        return @list
    end
    

end