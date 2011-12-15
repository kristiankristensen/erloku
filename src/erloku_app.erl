%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the erloku application.

-module(erloku_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for erloku.
start(_Type, _StartArgs) ->
    erloku_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for erloku.
stop(_State) ->
    ok.
