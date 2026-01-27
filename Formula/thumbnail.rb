class Thumbnail < Formula
  desc "Batch generate image thumbnails using libvips"
  homepage "https://github.com/giszhc/vips-thumbnail"
  url "https://github.com/giszhc/vips-thumbnail/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "944fde10e3e9bc068ee708dfe21e00b87668529d748fe13e51365577547b2431"
  license "MIT"

  depends_on "vips"

  def install
    bin.install "dist/thumbnail"
  end

  test do
    system "#{bin}/thumbnail", "--help"
  end
end
