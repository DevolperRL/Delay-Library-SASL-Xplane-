--SETUP SCRIPT THIS SHOULD BE IN MAIN.LUA
--Put TimerLibrary.lua inside SASL > data > modules > Custom Module

library = {}

local first = false

function draw()
	drawAll(components)
end

components = {
  TimerLibrary {0, 0, 10, 10},
}

function firstCall()
    if not first then
        first =  true
	--You will need to put the Delay in numbers and then make a function
        library.wait(3, function()
            print("First") -- This should print after 3 seconds
        end)
    end
end

function update()
    firstCall()
    updateAll(components)
end
