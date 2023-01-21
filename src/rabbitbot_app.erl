-module(rabbitbot_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Modules = rabbitbot:modules(), ok = erlmachine:init(Modules),

    Res = rabbitbot_sup:start_link(), rabbitbot:boot(),
    Res.

stop(_State) ->
    ok.
