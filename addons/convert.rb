require 'xml/xslt'

xslt = XML::XSLT.new()

xml = File.read(File.join(File.dirname(__FILE__), "../index.html"))
xml.gsub!(/^---$.*^---\n/m , "")
xslt.xml = xml

xslt.xsl = File.join(File.dirname(__FILE__), "xhtml_to_md.xsl")

out = xslt.serve()
out.gsub!(/<\?xml[^>]*>\n*/m, "")

File.open(File.join(File.dirname(__FILE__), "../README.md"), "w") do |f|
  f.puts out
end  

puts "Written #{out.count("\n")} lines of markdown to README.md"