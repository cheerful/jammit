# Wraps sass' css compressor to use the same API as the rest of
# Jammit's compressors.
class Jammit::SassCCompressor
  # Creates a new sass compressor. Jammit::SassCompressor doesn't use
  # any options, the +options+ parameter is there for API
  # compatibility.
  def initialize(options = {})
  end

  # Compresses +css+ using sass' CSS parser, and returns the
  # compressed css.
  def compress(css)
    ::SassC::Engine.new(css, style: :compressed).render.strip
  end
end
