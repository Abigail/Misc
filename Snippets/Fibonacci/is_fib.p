uses
    fgl;

type
    fib_t = longint;

var 
    fib_prev: fib_t;
    fib_last: fib_t;
    fib: specialize TFPGMap <fib_t, boolean>;


procedure init_fib;
    begin
        fib      := specialize TFPGMap <fib_t, boolean> . Create;
        fib_prev := 0;
        fib_last := 1;
        fib . Add (fib_prev, true);
        fib . Add (fib_last, true);
    end;

function is_fib (n: fib_t): boolean;
    var 
        t: fib_t;

    begin
        while fib_last < n do begin
            t        := fib_last;
            fib_last := fib_prev + fib_last;
            fib_prev := t;

            fib . Add (fib_last, true);
        end;

        is_fib := fib . IndexOf (n) >= 0;
    end;


begin
    init_fib;
end.
