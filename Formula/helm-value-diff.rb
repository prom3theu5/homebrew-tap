class HelmValueDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-value-diff"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/prom3theu5/helm-value-diff/releases/download/v1.0.1/helm-value-diff-linux-amd64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
