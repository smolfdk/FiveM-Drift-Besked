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
  
    PerformHttpRequest('DIN-WEBHOOK', function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

sendToDiscord(16711680, "Server Drift", "```connect din-server-ip```", "Lavet af Fr3ddie#0001")
