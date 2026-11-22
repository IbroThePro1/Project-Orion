local MainMenu = {}

function MainMenu.load()
    MainMenu.Background = {}
    MainMenu.Button = {}
    MainMenu.Button.Image = love.graphics.newImage('Assets/Images/Startbutton_Project_Orion.png')
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