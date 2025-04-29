class HelmValueDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-value-diff"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
# HOMEBREW_MAC_ARM
          url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.2/helm-value-diff-darwin-arm64"
          sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
          # END_HOMEBREW_MAC_ARM
  elsif OS.mac? && Hardware::CPU.intel?
# HOMEBREW_MAC_AMD64
          url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.2/helm-value-diff-darwin-amd64"
          sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
          # END_HOMEBREW_MAC_AMD64
  elsif OS.linux?
# HOMEBREW_LINUX_AMD64
          url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.2/helm-value-diff-linux-amd64"
          sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
          # END_HOMEBREW_LINUX_AMD64
  end

  def install
    bin.install "#{File.basename(stable.url)}" => "helm-value-diff"
  end
end
