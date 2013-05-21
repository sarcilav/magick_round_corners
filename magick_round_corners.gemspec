$:.push File.expand_path("../lib", __FILE__)
require "magick_round_corners/version"

Gem::Specification.new do |s|
  s.name        = "magick_round_corners"
  s.version     = MagickRoundCorners::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sebastian Arcila Valenzuela"]
  s.email       = ["sebastian@authy.com"]
  s.homepage    = "https://github.com/sarcilav/magick_round_corners"
  s.summary     = %q{A simple Ruby interface with ImageMagick to transform Images and add round corners.}
  s.description = %q{A Ruby gem to easily transform images adding round corners.}
  s.license     = "MIT"

  s.add_runtime_dependency 'rmagick'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

