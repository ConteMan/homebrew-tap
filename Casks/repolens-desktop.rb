cask "repolens-desktop" do
  version "0.1.0"
  sha256 "5d0a13b08b88605b8ff18ff5c5524b12dfff9f85345505bea3a3c9b5991b2cb5"

  url "https://github.com/ConteMan/repolens/releases/download/desktop-v#{version}/repolens-#{version}.dmg"
  name "Repolens"
  desc "Build and preview documentation sites from Git repositories"
  homepage "https://github.com/ConteMan/repolens"

  livecheck do
    url :url
    regex(/^desktop-v(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Repolens.app"
end
