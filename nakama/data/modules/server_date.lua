local nk = require("nakama")
local function server_date(context, payload)
    local nowDate = os.date("*t")

    return nk.json_encode(nowDate)
end

nk.register_rpc(server_date, "serverdate")
