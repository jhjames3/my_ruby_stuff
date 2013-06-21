	require 'net/http'
	proxy_class = Net::HTTP::Proxy('http://gatekeeper.mitre.org',80)
    url = URI.parse('http://rubylearning.com/data/text.txt')
    proxy_class.start(url.host, url.port) {
    	|http|
      		# connecting proxy.foo.org:8080
      		req = Net::HTTP::Get.new(url.path)
			puts http.request(req).body
		
                    
    }