class UrlParser
	def initialize(url)
		@url = url
    end
    def scheme
    	@url.split("://").first	
    end
    def domain 
    	@url.split("//")[1].split(":")[0]
    end
    def port
    	 @url.split("//")[1].split("/")[0].split(":")[1]
    end
 end


@new_url = UrlParser.new("http://www.google.com:60/search?q=cat&name=Tim#img=FunnyCat")

p @new_url.domain