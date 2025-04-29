class HelmValueDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-value-diff"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    # HOMEBREW_MAC_ARM
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-darwin-arm64"
    sha256 "PUT_MAC_ARM_SHA"
    # END_HOMEBREW_MAC_ARM
  elsif OS.mac? && Hardware::CPU.intel?
    # HOMEBREW_MAC_AMD64
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-darwin-amd64"
    sha256 "PUT_MAC_AMD64_SHA"
    # END_HOMEBREW_MAC_AMD64
  elsif OS.linux?
    # HOMEBREW_LINUX_AMD64
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-linux-amd64"
    sha256 "PUT_LINUX_AMD64_SHA"
    # END_HOMEBREW_LINUX_AMD64
  end

  def install
    bin.install "#{File.basename(stable.url)}" => "helm-value-diff"
  end
end
