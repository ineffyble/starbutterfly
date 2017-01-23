require 'paint'
require 'launchy'
require 'uri'

class StarButterfly
	class << self
		@@enhancers = ['Mega','Radical','Shimmering','Shooting','Super','Turbo','Mystic','Radiant','Fantastic','Foaming','Sparkling']
		@@components = ['Bacon','Kitty','Hawaiian','Bunny Rabbit','Cupcake','Dagger','Crystal','Heart','Glowworm','Turtle','Makeup','Starfish','Mushroom','Narhwal','Rainbow','Raspberry','Destructo','Star','Spider With A Top Hat','Stardust','Daisy','Geyser','Dolphin','Syrup','Tsunami','Toothpaste','Tidal','Nuclear','Butterfly','Winter','Storm','Hyper','Beanbag','Monster','Emerald','Snake','Glitter','Dragon','Magnificence','Marshmallow','Man','Magnet','Love','Mending','Room','Suck','Porcupine','Beast','Shadow','Sparkle','Glitter','Bomb','Sunshine','Friendship','Cutie','Kitten','Clutter','Rainbow','Raccoon','Snail','Helpe','Height','Warnicorn','All-Seeing','Bright-Glow','Cotton Candy','Fire','Easy Peasy','Exit','Twinkle','Bubble','Honeybee','Tornado','Jellybean','Hallucination','Lamp','Lightning','Explosive','Crystal','Paper','Fist','Flytrap','Ribbon','Rubber','Sparkle','Bounce','Crystal','Spiral']
		@@outputs = ['Nightmare','Blast','Attack','Rescue','Tsunami','Destruction Blast','Rainbow Blast','Avalanche','Panzerfaust','Cannon','Explosion','Devastation','Windstorm','Slam','Shockwave','Tidal Blast','Hyper Blow','Blow','Metamorphisis','Strike','Escalation','Mush','Storm','Love Storm','Hurricane','Transform','Transformation','Expand','Spell','Cleaners','Rotation','Charm','Slap','Stampede','Eye','Pyro','Extinguish','Freezy','Beam','Ripple','Swarm','Mist','Destroy','Change Back','Laser','Tornado','Bridge','Punch','Lasso','House','Bounce House','Seesaw','Noodle','Annihilation','Tornado','Wave','Tidal Wave']
		@@spell = []
		@@enhancement_level = rand(0..2)
		@@component_level = rand(0..2)

		def 🌈
			return "%06x" % (rand * 0xffffff)
		end

		def 🖌
			Paint
		end

		def spell
			@@spell
		end

		def enhancers
			@@enhancers
		end

		def enhancement_level
			@@enhancement_level
		end

		def components
			@@components
		end

		def component_level
			@@component_level
		end

		def outputs
			@@outputs
		end

		def time_for_some_magic
			enhancement_level.times do
				enhancer = enhancers.sample
				spell << enhancer
				enhancers.delete(enhancer)
			end
		end

		def dip_down
			component_level.times do
				component = components.sample
				spell << component
				components.delete(component)
			end
		end

		def scrape_the_sides
			spell << outputs.sample
		end

		def activate
			incantation = ''
			spell.each do |s|
				incantation << 🖌["#{s} ", 🌈]
			end
			incantation.chomp!
			incantation << '!'
			puts incantation
		end

		def send_through_portal
			return spell.join(" ") + "!"
		end

		def cast!
			StarButterfly.time_for_some_magic
			StarButterfly.dip_down
			StarButterfly.scrape_the_sides
			StarButterfly.activate
		end

		def tweet!
			StarButterfly.time_for_some_magic
			StarButterfly.dip_down
			StarButterfly.scrape_the_sides
			tweet_spell = URI.encode(StarButterfly.send_through_portal)
			url = "https://twitter.com/intent/tweet?text=#{tweet_spell}&hashtags=FromAnotherDimension"
			Launchy.open(url)
		end
	end
end