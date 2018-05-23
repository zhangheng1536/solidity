contract C {
    struct S { uint x; }
    S s;
    struct T { }
    T t;
    enum A { X, Y }
    function f() public pure {
        bytes memory a = abi.encodePacked(S, A, A.X, T, uint, uint[]);
        a;
    }
}
// ----
// Warning: (51-63): Defining empty structs is deprecated.
// TypeError: (166-167): This type cannot be encoded.
// TypeError: (169-170): This type cannot be encoded.
// TypeError: (177-178): This type cannot be encoded.
// TypeError: (180-184): This type cannot be encoded.
// TypeError: (186-192): This type cannot be encoded.
