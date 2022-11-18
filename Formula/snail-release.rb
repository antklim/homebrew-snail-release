class SnailRelease < Formula
  desc "Snail Release"
  homepage "https://github.com/antklim/snail-release"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/antklim/snail-release/releases/download/v0.12.0/snail-release-darwin-arm64.tar.gz"
      sha256 "c02e55f13d41067e114eede25441d066da994a5800be770388694d0b82967fc8"

      def install
        bin.install "snail-release-darwin-arm64" => "snail-release"
      end
    end

    on_intel do
      url "https://github.com/antklim/snail-release/releases/download/v0.12.0/snail-release-darwin-x86_64.tar.gz"
      sha256 "608abd9240fd4042212ac0e7988244a356876c50f2f1db8f3fe9713a6cf6cad2"

      def install
        bin.install "snail-release-darwin-x86_64" => "snail-release"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/antklim/snail-release/releases/download/v0.12.0/snail-release-linux-x86_64.tar.gz"
      sha256 "bf83109d451b9783bbba2358939a7e13995ad3ab7bbbf6f5ce14499e4c2ebf99"

      def install
        bin.install "snail-release-linux-x86_64" => "snail-release"
      end
    end
  end

  test do
    system "#{bin}/snail-release"
  end
end