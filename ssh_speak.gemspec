Gem::Specification.new do |s|
  s.name        = 'ssh_speak'
  s.version     = '0.2.0'
  s.required_ruby_version = '>= 2.0.0'
  s.executables << 'ssh-speak'
  s.date        = Time.now.to_s.split(/\s/)[0]
  s.summary     = "Talk to peers over SSH"
  s.description = "Talk to your friend with espeak"
  s.authors     = ["Demonstrandum"]
  s.email       = 'knutsen@jetspace.co'
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  s.require_path= 'lib'
  s.homepage    = 'https://github.com/Demonstrandum/ssh_speak'
  s.add_dependency 'net-ssh', '~> 4.2', '>= 4.2.0'
  s.license     = 'BSD-2-Clause'
end

