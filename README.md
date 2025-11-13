# open_sky_network.cr
Web-API for [opensky-network.org](https://opensky-network.org/) which lets you retrieve live airspace information for research and non-commerical purposes.

## Example
```cr
require "./open_sky_network"

open_sky_network = OpenSkyNetwork.new
states = open_sky_network.get_all_states()
puts states
```
