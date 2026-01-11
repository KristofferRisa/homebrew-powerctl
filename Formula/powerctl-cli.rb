class PowerctlCli < Formula
  desc "CLI tool for monitoring electricity consumption and tracking power costs via Tibber"
  homepage "https://github.com/KristofferRisa/powerctl-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.0/powerctl-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "a6d285f940fbcaa28da1d63a3d64526786673c2a2dc17f66b7f40f851c577f5c"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.0/powerctl-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "67459b037a165cf85e390c3e3322f55e2e8735292974e64c37b208e8ae49c1e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.0/powerctl-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "f05493b50d78745f4630d407e7d25f4a21b300d6bb58d6b563a544dcc93455a1"
    end

    on_arm do
      url "https://github.com/KristofferRisa/powerctl-cli/releases/download/v0.2.0/powerctl-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "c66db94ef11dc1061fd91cda46a3a9bf195ad6958f6a893ca5a85e4f440edb43"
    end
  end

  def install
    bin.install "powerctl"
  end

  test do
    assert_match "powerctl", shell_output("#{bin}/powerctl --version")
  end
end
