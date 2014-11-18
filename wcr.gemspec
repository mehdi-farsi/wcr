Gem::Specification.new do |s|
  s.name          = 'wcr'
  s.version       = '0.0.1'
  s.date          = '2014-11-18'
  s.summary       = "wc-recursive"
  s.description   = "A wrapper on wc command. Permit to execute wc recursively with a more flexible argument parser."
  s.authors       = ["Mehdi Farsi"]
  s.email         = 'mehdifarsi.pro@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.homepage      = 'http://rubygems.org/gems/wcr'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.license       = 'MIT'
end