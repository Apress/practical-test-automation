# File: Rakefile
#

desc "Run all the test in your test folder"
task :test do
  require_relative 'test/test_helper'

  Dir.glob("test/**/test_*.rb").each do |file|
    load file unless file == 'test/test_helper.rb'
  end
end

task default: :test
