AddEventHandler('playerConnecting', function()

    MySQL.Async.fetchAll("INSERT INTO f5s (adressip, nick, steam, connectdate, connecttime) VALUES(@ip, @name, @steamhex, @connectdate, @connecttime)",
        {["@ip"] = GetPlayerEndpoint(source), ["@name"] = GetPlayerName(source), ["@steamhex"] = GetPlayerIdentifier(source), ["@connectdate"] = (os.date("%x")), ["@connecttime"] = (os.date("%X"))}
    )

end)
