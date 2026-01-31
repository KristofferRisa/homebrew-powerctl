class PowerctlCli < Formula
  desc "CLI tool for monitoring electricity consumption and tracking power costs via Tibber"
  homepage "https://github.com/KristofferRisa/powerctl-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.1/powerctl-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "e0da7fc485f46a0e791d10846dcdf7865be39f7beaaf378cbf97223b98449f55"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.1/powerctl-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "70d25be799db8129a68abfb03da719dda0d2c5e476616f4495b8c1ba8a726bc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.1/powerctl-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "59d2a26190ebdf3e286bea2d34d12c71e92128bcb08b05cae3532da37f73945f"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.1/powerctl-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "4e6b5fe995f49099c1d282c0574814a1d21a8b7b1aac74f55aa52508158aba50"
    end
  end

  def install
    bin.install "powerctl"
  end

  test do
    assert_match "powerctl", shell_output("#{bin}/powerctl --version")
  end
end
