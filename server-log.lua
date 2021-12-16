function sendToDiscord(farve, titel, besked, undertext)
    local embed = {
          {
              ["color"] = farve,
              ["title"] = "**".. titel .."**",
              ["description"] = besked,
              ["footer"] = {
                  ["text"] = undertext,
              },
          }
      }
  
    PerformHttpRequest('https://discord.com/api/webhooks/921089748146200666/5WXvln9eT6oBos8K0JybZg3lFfnaapn7cktDqJiSkvCIcmMwEQm4EDobOlHlgDZmx_Zk', function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

sendToDiscord(16711680, "Server Drift", "```connect din-server-ip```", "Lavet af Fr3ddie#0001")