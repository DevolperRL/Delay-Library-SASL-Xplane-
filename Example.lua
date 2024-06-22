--SETUP SCRIPT THIS SHOULD BE IN MAIN.LUA
--Put TimerLibrary.lua inside SASL > data > modules > Custom Module

library = {}

function draw()
	drawAll(components)
end

components = {
  TimerLibrary {0, 0, 10, 10},
}

function update()
    updateAll(components)
end
