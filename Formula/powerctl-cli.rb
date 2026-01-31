class PowerctlCli < Formula
  desc "CLI tool for monitoring electricity consumption and tracking power costs via Tibber"
  homepage "https://github.com/KristofferRisa/powerctl-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.3.0/powerctl-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "2a773be9a7d29329b18bf46d7f8b85cdb27ed5a1eafee65c67d5ef763d4342e4"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.3.0/powerctl-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "04b255fba9d3385420e79a68724226c3626f3bc238676139f144720a681c0e72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.3.0/powerctl-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "0decef3e71cd9cbfc55a6f998dcb96a4f4ebd67088555047d951becd7251327d"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.3.0/powerctl-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "49bbf4ef03900e69324317df90cd169efcf850d7a16396f93a5bf4163df94837"
    end
  end

  def install
    bin.install "powerctl"
  end

  test do
    assert_match "powerctl", shell_output("#{bin}/powerctl --version")
  end
end
