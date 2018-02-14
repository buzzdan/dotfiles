{:user {:plugins [
		[cider/cider-nrepl "0.15.1"]
		[http-kit/lein-template "1.0.0-SNAPSHOT"]
		[jonase/eastwood "0.2.5"]
		[lein-pprint "1.2.0"]
		[lein-kibit "0.1.5"]		
		[lein-ancient "0.6.15"]
		[lein-create-template "0.2.0"]
		; [venantius/ultra "0.5.2"]
		[lein-plz "0.4.0-SNAPSHOT" :exclusions [[rewrite-clj] [ancient-clj]]]]
		:dependencies [			
			[org.clojure/tools.nrepl "0.2.12"]
			[cljfmt "0.5.7"]]}}