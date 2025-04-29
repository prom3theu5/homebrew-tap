class HelmValueDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-value-diff"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-darwin-arm64"
    sha256 "PUT_MAC_ARM_SHA"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-darwin-amd64"
    sha256 "PUT_MAC_INTEL_SHA"
  elsif OS.linux?
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.0/helm-value-diff-linux-amd64"
    sha256 "PUT_LINUX_SHA"
  end

  def install
    bin.install "#{File.basename(stable.url)}" => "helm-value-diff"
  end
end
