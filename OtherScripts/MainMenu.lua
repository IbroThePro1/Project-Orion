local MainMenu = {}

function MainMenu.load()
    MainMenu.Background = {}
    MainMenu.Background.width = love.graphics.getWidth() 
    MainMenu.Background.height = love.graphics.getHeight()
    MainMenu.Active = false
end

function MainMenu.update(dt)


end
function MainMenu.keypressed(key)
    if MainMenu.Active == true then 
        if key == 'esc' then
            love.event.quit()
        end
        
    end


end
function MainMenu.draw()


end

return MainMenu