local character = {}
function character.load()
    character.x = 30
    character.y = 45
    character.width = love.graphics.getWidth() / 30
    character.height = love.graphics.getHeight() / 30
    character.speed = 300
    character.damaging = false
end

function character.update(dt)
     if love.keyboard.isDown('d') then 
        character.x = character.x + character.speed * dt
    end
    
    if love.keyboard.isDown('a') then 
        character.x = character.x - character.speed * dt
    end

    if love.keyboard.isDown('s') then
        character.y = character.y + character.speed * dt
    end

    if love.keyboard.isDown('w') then
        character.y = character.y - character.speed * dt
    end
end
function character.getdamage()
character.attack = true
Timer.after(0.1, function() character.attack = false end)

    if character.attack == true then
        lovelyToasts.show('you are getting attacked', 1)
        NotificationDing:play()
    end

end
function character.keypressed(key)
    if key == 'e' then
        character.getdamage()
    end
end
function character.draw() 
    if character.attack == true then
        love.graphics.setColor(255,0,0)
    else
        love.graphics.setColor(255,255,255)
    end
    love.graphics.rectangle('fill', character.x, character.y, character.width, character.height) 
end


return character 