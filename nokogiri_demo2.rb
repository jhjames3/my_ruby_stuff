require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://rubylearning.com/"))
puts doc.xpath("//h2[@id='slogan']").first.content
#Helping Ruby Programmers become Awesome!
puts doc.css("#footer p strong:first-child")[0].content
#RubyLearning.com - A Ruby Tutorial

#puts doc.css("#footer")
#<div id="footer">
#    <!-- CHANGE THE FOOTER -->
#    <p>© 2006-2013 <strong>RubyLearning.com - A Ruby Tutorial</strong>  Page Updated: 1st Feb. 2013 | Design: <a href="mailto:ealigam@gmail.com">Erwin Aligam</a> | Valid: <a href="http://validator.w3.org/check/referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>        <a href="http://rubylearning.com/">Home</a> | <a href="http://rubylearning.com/privacy.html">Privacy</a> | <a href="http://rubylearning.com/sitemap.html">Sitemap</a></p>
#</div>

