contract test {
    struct S {
        function (uint x, uint y) internal returns (uint a) f;
        function (uint, uint) external returns (uint) g;
        uint d;
    }
}
// ----
// SyntaxError: (49-55): Arguments in function types may not be named.
// SyntaxError: (57-63): Arguments in function types may not be named.
// SyntaxError: (83-89): Return parameters in function types may not be named.
