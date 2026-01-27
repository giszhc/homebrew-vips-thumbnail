class Thumbnail < Formula
  desc "Batch generate image thumbnails using libvips"
  homepage "https://github.com/giszhc/vips-thumbnail"
  url "https://github.com/giszhc/vips-thumbnail/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8c2613f14e3fa98f74c39eb50adcc0560e8e0d9d1c75d1d4bd3229b7ef8b3b64"
  license "MIT"

  depends_on "vips"

  def install
    bin.install "dist/thumbnail"
  end

  test do
    system "#{bin}/thumbnail", "--help"
  end
end
