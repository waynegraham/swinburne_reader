require 'nokogiri'

XML_FILE = "./data/base2-tm.xml"
XSL_FILE = "./data/transform.xsl"

def read_files
  @doc ||= Nokogiri::XML(File.open(XML_FILE))
  @xslt ||= Nokogiri::XSLT(File.open(XSL_FILE))
end

def transform
  read_files
  @xslt.transform(@doc)
end

namespace :generate do

  desc "Generate HTML poems"
  task :poems do
    puts transform
  end

end
