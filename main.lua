-- Importa os game states.
require("states/StartSequence")

function love.load()
	-- Verifica os argumentos de inicialização para escolher o modo de execução.
	for l = 1, #arg do
		if (arg[l] == "-KelverMode") then
			-- Adiciona e ativa o DebugMode.
			require("states/DebugMode")
			addState(DebugMode, "DebugMode")
			enableState("DebugMode")
		end
	end
	-- Inicia o loveframes
	loveframes = require("lib.LoveFrames")

	-- Adiciona os game states para uso futuro.
	addState(StartSequence, "StartSequence")

	-- Game state inicial
	enableState("StartSequence")
end

function love.update(dt)
	lovelyMoon.update(dt)
	loveframes.update(dt)
end

function love.draw()
	lovelyMoon.draw()
	loveframes.draw()
end

function love.keypressed(key, unicode)
	lovelyMoon.keypressed(key, unicode)
	loveframes.keypressed(key, unicode)

end

function love.keyreleased(key, unicode)
	lovelyMoon.keyreleased(key, unicode)
	loveframes.keyreleased(key)
end

function love.mousepressed(x, y, button)
	lovelyMoon.mousepressed(x, y, button)
	loveframes.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	lovelyMoon.mousereleased(x, y, button)
	loveframes.mousereleased(x, y, button)
end

function love.textinput(text)
	loveframes.textinput(text)
end