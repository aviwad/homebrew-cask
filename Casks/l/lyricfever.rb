cask "lyricfever" do
  version "2.0"
  sha256 "a98b7189eb8fca68069622152e11bab5e92ca4666a47443d5ad6a6db9759054a"
  url "https://github.com/aviwad/LyricFever/releases/download/v#{version}/Lyric.Fever.#{version}.dmg", verified: "https://github.com/aviwad/LyricFever/releases/download"
  name "LyricsX"
  desc "Lyrics for Apple Music, Spotify with menubar, karaoke, and fullscreen support"
  homepage "https://lyricfever.com"

  auto_updates true

  app "Lyric Fever.app"
  
  depends_on macos: ">= :ventura"

  zap trash: [
    "~/Library/Containers/Lyric Fever"
  ]
  
  livecheck do
  url "https://aviwad.github.io/SpotifyLyricsInMenubar/appcast.xml"
  strategy :sparkle
end
end
