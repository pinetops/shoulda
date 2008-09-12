require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'echoe'

Echoe.new("shoulda") do |p|
   p.author = "Tammer Saleh"
   p.version = '4.1.2'
   p.summary = "Testing made easier on the fingers and the eyes, in gem form"
   p.url = "http://thoughtbot.com/projects/shoulda"
   p.test_pattern = 'test/{unit,functional,other}/**/*_test.rb'
 end

Rake::RDocTask.new { |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "Shoulda -- Making tests easy on the fingers and eyes"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.template = "#{ENV['template']}.rb" if ENV['template']
  rdoc.rdoc_files.include('README.rdoc', 'CONTRIBUTION_GUIDELINES.rdoc', 'lib/**/*.rb')
}

desc "Run code-coverage analysis using rcov"
task :coverage do
  rm_rf "coverage"
  files = Dir[test_files_pattern]
  system "rcov --rails --sort coverage -Ilib #{files.join(' ')}"
end

desc 'Update documentation on website'
task :sync_docs => 'rdoc' do
  `rsync -ave ssh doc/ dev@dev.thoughtbot.com:/home/dev/www/dev.thoughtbot.com/shoulda`
end

desc 'Default: run tests.'
task :default => ['test']

Dir['tasks/*.rake'].each do |f|
  load f
end

