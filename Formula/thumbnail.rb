class Thumbnail < Formula
  desc "Batch generate image thumbnails using libvips"
  homepage "https://github.com/giszhc/vips-thumbnail"
  url "https://github.com/giszhc/vips-thumbnail/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "c354c087d13ccbf777f38e15e3f44fae5011350864b4748e4bef5a5bcf8aa116"
  license "MIT"

  depends_on "vips"

  def install
    bin.install "dist/thumbnail"
  end

  test do
    system "#{bin}/thumbnail", "--help"
  end
end
