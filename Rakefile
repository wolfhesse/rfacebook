require "rubygems"
Gem::manage_gems
require "rake/gempackagetask"

spec = Gem::Specification.new do |s| 
  s.name = "rfacebook"
  s.version = "0.9.4"
  s.author = "Matt Pizzimenti"
  s.email = "matt@livelearncode.com"
  s.homepage = "http://livelearncode.com/"
  s.rubyforge_project = "rfacebook"
  s.platform = Gem::Platform::RUBY
  s.summary = "A Ruby interface to the Facebook API v1.0+.  Works with RFacebook on Rails plugin (see http://rfacebook.rubyforge.org)."
  s.files = FileList["lib/*"].to_a.concat(FileList["lib/rfacebook_on_rails/*"].to_a).concat(FileList["lib/rfacebook_on_rails/plugin/*"].to_a).concat(FileList["lib/rfacebook_on_rails/tests/*"].concat(FileList["lib/rfacebook_on_rails/templates/*"]).to_a)
  s.require_path = "lib"
  s.autorequire = "rfacebook"
  s.test_files = []#Dir.glob("test/*.rb")
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("hpricot", ">= 0.6.0")
  s.add_dependency("mocha", ">= 0.5.3")
  s.requirements << "Hpricot version >= 0.6.0 (has better handling of XML than previous versions)"
  s.requirements << "Mocha version >= 0.5.3 (used for unit testing of the Gem and Rails Plugin)"
end
 
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
  putsCheck = `grep puts lib/* lib/*/* lib/*/*/init.rb lib/*/*/install.rb lib/*/*/Rakefile.rb lib/*/*/uninstall.rb`
  if putsCheck.size > 0
    puts "********** WARNING: stray puts left in code"
  end
  puts "generated latest version"
end

task :docs do
  `rm -rf doc`
  `rdoc --diagram --inline --line-numbers lib/*session.rb lib/rfacebook_on_rails/controller_extensions.rb lib/rfacebook_on_rails/view_extensions.rb`
end