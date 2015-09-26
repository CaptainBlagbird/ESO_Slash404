--[[

Slash 404
by CaptainBlagbird
https://github.com/CaptainBlagbird

--]]

-- Language
local message = "Command not found"
local lang = GetCVar("Language.2")
if lang == "de" then
	message = "Befehl nicht gefunden"
elseif lang == "fr" then
	message = "Commande non trouvée"
end

-- Replace ExecuteChatCommand()
local func_orig = ExecuteChatCommand
ExecuteChatCommand = function(str)
	if SLASH_COMMANDS[str] == nil then
		d(message)
	else
		func_orig(str)
	end
end