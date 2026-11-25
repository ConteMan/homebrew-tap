cask "repolens-desktop" do
  version "1.10.0"
  sha256 "d608b146acbeedce15d0d731d8addc605dca0b6abbb194b8aadc0ef6c214bd24"

  url "https://github.com/ConteMan/repolens/releases/download/v#{version}/repolens-#{version}.dmg"
  name "Repolens"
  desc "Build and preview documentation sites from Git repositories"
  homepage "https://github.com/ConteMan/repolens"

  livecheck do
    url :url
    regex(/^v(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :ventura

  app "Repolens.app"
end
