class Thumbnail < Formula
  desc "Batch generate image thumbnails using libvips"
  homepage "https://github.com/giszhc/vips-thumbnail"
  url "https://github.com/giszhc/vips-thumbnail/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "611ae8d5a0c754f9c9561f9a4e69c4c6efc12eca05f05cdb94521a9401d3546f"
  license "MIT"

  depends_on "vips"

  def install
    bin.install "dist/thumbnail"
  end

  test do
    system "#{bin}/thumbnail", "--help"
  end
end
