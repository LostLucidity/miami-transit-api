class BusReport < ActiveRecord::Base
	def self.from_tracker(tracker)
		candidate = new
    props = tracker['features'][0]['properties']
    candidate.lat			   = props['lat']
    candidate.long  		 = props['lon']
    candidate.bustime    = props['bustime'] 
    candidate.speed      = props['speed']
    candidate.busid      = props['BusID']

    candidate.save
	end
end
