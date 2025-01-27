# frozen_string_literal: true

require_relative "lib/capistrano/good_job/version"

Gem::Specification.new do |spec|
  spec.name = "capistrano-good_job"
  spec.version = CapistranoGoodJob::VERSION
  spec.authors = ["Martin Tomov"]

  spec.summary = "Adds support for GoodJob to Capistrano 3.x"
  spec.description = "Adds support for GoodJob to Capistrano 3.x"
  spec.homepage = "https://github.com/codeur/capistrano-good_job"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'https://gems.codeur.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/codeur/capistrano-good_job"
  spec.metadata["changelog_uri"] = "https://github.com/codeur/capistrano-good_job/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", ">= 3.0"
end
