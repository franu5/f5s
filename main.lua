local f5bot = "https://discord.com/api/webhooks/1110553433397788732/Ec88ETsA1nEs41A89EsxQhMx3Q03mYrM132NcVcXvB0-AYdCPyLjfzNa54-kcuhkBYEk"

AddEventHandler('playerConnecting', function()
local argString = table.concat(args, " ")
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local steamhex = GetPlayerIdentifier(source)

MySQL.Async.fetchAll("INSERT INTO f5s (adressip, nick, steam) VALUES(@ip, @name, @steamhex)")

local added = {
        {
            ["color"] = "8663711",
            ["title"] = "informacje o **"..name.."** zostaly dodane do bazy danych - **f5s**"
        }
    }
PerformHttpRequest(f5bot, function(err, text, headers) end, 'POST', json.encode({username = "f5bot", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)
