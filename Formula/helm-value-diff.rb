class HelmValueDiff < Formula
  desc "Generate minimal Helm values overrides"
  homepage "https://github.com/prom3theu5/helm-value-diff"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
