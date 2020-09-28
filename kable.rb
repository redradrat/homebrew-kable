# This file was generated by GoReleaser. DO NOT EDIT.
class Kable < Formula
  desc "Manage kubernetes resource. GitOps galore!"
  homepage "https://github.com/redradrat/kable"
  version "0.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/redradrat/kable/releases/download/v0.0.6/kable_0.0.6_Darwin_x86_64.tar.gz"
    sha256 "dcc073fc98d68813447f275bad97839c806ba8a77c8d2a2eceebb942cc1b8217"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/redradrat/kable/releases/download/v0.0.6/kable_0.0.6_Linux_x86_64.tar.gz"
      sha256 "fdf425ad80a7ab4d6319586e349cd9ec075a6898ce9e912580f60dfab0b8f2a1"
    end
  end
  
  depends_on "git"
  depends_on "go-jsonnet"
  depends_on "jsonnet-bundler"

  def install
    bin.install "kable"
  end
end
