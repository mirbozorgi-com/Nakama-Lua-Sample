
local nk = require("nakama")

local function add_leader_board(context, payload)
    local json = nk.json_decode(payload)

    local id = json.id
    local authoritative = false
    local sort = json.sort
    local operator = json.operator
    local reset = json.reset
    local metadata = json.metadata
    nk.leaderboard_create(id, authoritative, sort, operator, reset, metadata)

    return payload
end

nk.register_rpc(add_leader_board, "addleaderboard")
