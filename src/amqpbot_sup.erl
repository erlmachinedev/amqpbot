-module(amqpbot_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
    Res = supervisor:start_link({local, ?MODULE}, ?MODULE, []),
    Res.

init([]) ->
    {ok, {{one_for_one, 1, 5}, _Procs = []}}.
