require "rubygems"

begin
  require "rfacebook_on_rails/plugin/rake"
rescue Exception => e
  raise StandardError, "There was a problem loading the RFacebook on Rails plugin.  You may have forgotten to install the RFacebook Gem."
end