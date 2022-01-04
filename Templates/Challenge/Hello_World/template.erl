%
% See https://theweeklychallenge.org/blog/perl-weekly-challenge-000
%

%
% Run as: ln ch-1.erl ch1.erl
%         erl -compile ch1
%         erl -noshell -s ch1 main -s init stop
%

-module (ch1).
-export ([main/0]).

main () ->
    io:fwrite ("%TEXT\n").
