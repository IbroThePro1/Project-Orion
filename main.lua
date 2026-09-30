function love.load()
-- other scripts
inputs = require('OtherScripts/inputs')
-- load other scripts
inputs.load()

end

function love.update(dt)
    inputs.right()
    inputs.left()
    inputs.space()
    inputs.Fkey()
end

function love.draw()

end