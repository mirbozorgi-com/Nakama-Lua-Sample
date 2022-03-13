# Intro of NAKAMA

NAKAMA is an open-source distributed social and realtime server for games and apps. It includes a
large set of services for users, data storage, and realtime client/server communication; as well as
specialized APIs like realtime multiplayer, groups/guilds, and chat.

NAKAMA has advised that if anyone wants something customize or additional, they should add RPC by
writing Lua/Go/TypeScript scripts in order to customize and change the default behaviour of their
functions.

In this repository I am using Lua scripts. I developed multiple function:

Notice: in Lua model all request type must be `text`

- add leaderboard
- server time
- server date

### add leaderboard

`path`:`/v2/rpc/addleaderboard?http_key=mirbozorgi_admin`
<br>
`method`:`POST`
<br>
`desc`:`This api adds leaderboard to nakama`
<br>
`request model : text format`
<br>

`"{\"id\":\"uniuqeId\",\"metadata\":{\"name\":\"amqezi\"},\"sort\":\"desc\",\"operator\":\"incr\",\"reset\":\"0 1 * * *\"}"`

`
<br>

`Sort: desc, asc Operator: best, set, incr`
`
<br>

`response model`:
`{
"payload": "{\"id\":\"uniuqeId\",\"metadata\":{\"name\":\"amqezi\"},\"sort\":\"desc\",\"operator\":\"incr\",\"reset\":\"0 1 * * *\"}"
}`

### server time

`path`:`/v2/rpc/servertime?http_key=mirbozorgi_admin`
<br>
`method`:`POST/GET`
<br>
`desc`:`This api returns server utc time`
<br>
`response model`:
`{
"payload": "1643523929"
}`

### server date

`path`:`/v2/rpc/serverdate?http_key=mirbozorgi_admin`
<br>
`method`:`GET/POST`
<br>
`desc`:`This api returns the human-readable server date`
<br>
`response model`:
`{
"payload": "{\"day\":23,\"hour\":6,\"isdst\":false,\"min\":46,\"month\":6,\"sec\":58,\"wday\":3,\"yday\":174,\"year\":2021}"
}`
