-module(amqpbot_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Modules = amqpbot:modules(), ok = erlmachine:init(Modules),

    Res = amqpbot_sup:start_link(), amqpbot:boot(),
    Res.

stop(_State) ->
    ok.
