cask "curse" do
  version "0.0.0"
  sha256 arm:   "b73fe279dcf0a1552818b88c0d235226ebacaad31226a4d4691859f728b52946",
         intel: "c7fcbe8bf49cb8ab28a7836b337461ab7034b236178a6ffd3125205edea3c6be"

  url "https://github.com/wu-json/curse/releases/download/v#{version}/curse_#{version}_darwin_#{Hardware::CPU.intel? ? "amd64" : "arm64"}.tar.gz"
  name "Curse"
  desc "Dead simple Terminal UI for running processes"
  homepage "https://github.com/wu-json/curse"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "curse"
end
