pcall(function()makefolder("LoggedOutputs")end)local logs=game:GetService("LogService")function UpdateLogs()pcall(function()writefile("LoggedOutputs\\".."LOGS---"..tostring(game.PlaceId).."---"..game.JobId,game:GetService("HttpService"):JSONEncode(logs:GetLogHistory()))end)end;logs.MessageOut:Connect(function()UpdateLogs()end)UpdateLogs()
