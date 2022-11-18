class SnailRelease < Formula
  desc "Snail Release"
  homepage "https://github.com/antklim/snail-release"
  url "https://github.com/antklim/snail-release/releases/download/v0.12.0/snail-release-darwin-x86_64.tar.gz"
  sha256 "608abd9240fd4042212ac0e7988244a356876c50f2f1db8f3fe9713a6cf6cad2"
  version "0.12.0"

  def install
    bin.install "snail-release-darwin-x86_64" => "snail-release"
  end

  test do
    system "#{bin}/snail-release"
  end
end