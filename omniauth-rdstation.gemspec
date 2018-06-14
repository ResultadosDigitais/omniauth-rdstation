lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'omniauth/rdstation/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-rdstation'
  spec.version       = Omniauth::Rdstation::VERSION
  spec.authors       = ['RD Station']
  spec.email         = ['integration-team@resultadosdigitais.com.br']

  spec.summary       = 'RD Station OmniAuth Strategy'
  spec.description   = 'RD Station OmniAuth Strategy'
  spec.homepage      = 'https://github.com/ResultadosDigitais/omniauth-rdstation'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'omniauth', '~> 1.6', '>= 1.6.1'
  spec.add_dependency 'omniauth-oauth2', '~> 1.4'
end
