local nk = require("nakama")
local function server_time(context, payload)
    local nowTime = os.time()

    nowTime = nk.json_encode(nowTime)


    return nowTime
end

nk.register_rpc(server_time, "servertime")
