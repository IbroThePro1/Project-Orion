local character = {}
function character.load()
character.x = 30
character.y = 45
character.width = love.graphics.getWidth() / 30
character.height = love.graphics.getHeight() / 30
character.speed = 300

end

function character.update(dt)
     if love.keyboard.isDown('d') then 
        character.x = character.x + character.speed * dt
    end
    
    if love.keyboard.isDown('a') then 
        character.x = character.x - character.speed * dt
    end
end


function character.draw() 
    love.graphics.rectangle('fill', character.x, character.y, character.width, character.height) 
end


return character 