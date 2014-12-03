Gem::Specification.new do |s|
  s.name          = 'wcr'
  s.version       = '0.1.0'
  s.date          = '2014-11-18'
  s.summary       = "wc-recursive"
  s.description   = "A wrapper on wc command. Permit to execute wc recursively with a more flexible argument parser."
  s.homepage      = 'https://github.com/mehdi-farsi/wcr'
  s.authors       = ["Mehdi Farsi"]
  s.email         = 'mehdifarsi.pro@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.required_ruby_version = '>= 1.9.3'
  s.license       = 'MIT'
  s.post_install_message = "Thanks for installing! You can follow me on Twitter: @farsi_mehdi"
end