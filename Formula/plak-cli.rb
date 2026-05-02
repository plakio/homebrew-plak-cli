class PlakCli < Formula
  desc "Interactive Bash CLI for SSH servers, local domains, and SSH keys"
  homepage "https://github.com/plakio/plak-cli"
  url "https://github.com/plakio/plak-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4efec69552c7a84348ce5b7fadc5d2e90bea4a374a4085694bb1ff0eaee13168"
  license "MIT"

  depends_on "gum"

  def install
    system "./compile.sh"
    bin.install "plak.sh" => "plak"
  end

  test do
    assert_match "plak v0.3.0", shell_output("#{bin}/plak version")
    assert_match "Dependencies:", shell_output("#{bin}/plak status")
  end
end
