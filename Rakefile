require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "use_db"
  gem.summary = %Q{use_db gem}
  gem.description = %Q{use_db gem}
  gem.email = "john@couponshack.com"
  gem.homepage = "http://github.com/johnmcaliley/use_db"
  gem.authors = ["John McAliley"]
  gem.files = FileList['lib/**/*.rb','[A-Z]*', 'lib/**/**/*'].to_a
end

namespace :version do
  desc "create a new version, create tag and push to github"
  task :github_and_tag do
    Rake::Task['gemspec:release'].invoke
    Rake::Task['git:release'].invoke
  end

  desc "bump patch push to github"
  task :patch_release do
    Rake::Task['version:bump:patch'].invoke
    Rake::Task['version:github_and_tag'].invoke
  end

  desc "bump minor push to github"
  task :minor_release do
    Rake::Task['version:bump:minor'].invoke
    Rake::Task['version:github_and_tag'].invoke
  end

  desc "bump major push to github"
  task :major_release do
    Rake::Task['version:bump:major'].invoke
    Rake::Task['version:github_and_tag'].invoke
  end
end