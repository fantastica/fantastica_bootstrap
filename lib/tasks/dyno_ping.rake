# https://coderwall.com/p/u0x3nw/avoid-heroku-idling-with-new-relic-pings
desc "Pings PING_URL to keep a dyno alive"
	task :dyno_ping do
		require "net/http"

		if ENV['PING_URL']
		uri = URI(ENV['PING_URL'])
		Net::HTTP.get_response(uri)
	end
end

# heroku config:add PING_URL=http://fantasticabootstrap.herokuapp.com

# heroku addons:add scheduler:standard
# heroku addons:open scheduler

# rake dyno_ping