class SnailRelease < Formula
  desc "Snail Release"
  homepage "https://github.com/antklim/snail-release"
  version "0.12.0"

  on_macos do
    on_arm do
    end

    on_intel do
      url "https://github.com/antklim/snail-release/releases/download/v0.12.0/snail-release-darwin-x86_64.tar.gz"
      sha256 "608abd9240fd4042212ac0e7988244a356876c50f2f1db8f3fe9713a6cf6cad2"

      def install
        bin.install "snail-release-darwin-x86_64" => "snail-release"

        bash_completion.install "completion/bash/snail-release.bash" => "snail-release"
        zsh_completion.install "completion/zsh/_snail-release" => "_snail-release"
        fish_completion.install "completion/fish/snail-release.fish"
      end
    end
  end

  on_linux do
    on_arm do
    end

    on_intel do
    end
  end

  test do
    system "#{bin}/snail-release"
  end
end