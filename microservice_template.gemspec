# frozen_string_literal: true

require_relative 'lib/microservice_template/version'

Gem::Specification.new do |spec|
  spec.name = 'microservice_template'
  spec.version = MicroserviceTemplate::VERSION
  spec.authors = ['Robert Crews']

  spec.summary = 'Short summary'
  spec.description = <<~DESCRIPTION
    Longer description
  DESCRIPTION

  spec.homepage = 'https://github.com/rcrews/microservice_template/'
  spec.license = 'Apache-2.0'
  spec.required_ruby_version = '>= 3.1'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/rcrews/microservice_template/'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__ || '.') do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency 'sinatra', '~> 3.0', '>= 3.0.6'
  spec.add_runtime_dependency 'sinatra-contrib', '~> 3.0', '>= 3.0.6'
  spec.add_runtime_dependency 'sinatra-cors', '~> 1.2'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
