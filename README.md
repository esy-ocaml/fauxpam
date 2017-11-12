# fauxpam

Fake opam binary.

Promises nothing.

Delivers nothing (except a binary named `opam`).

One million percent cross platform.


## Use Cases

You have a package that relies on opam at build time and the author won't fix
it. You can set up a local override that makes it depend on `fauxpam`.  Over
time we can make `fauxpam`'s `opam` binary actually kind of resemble `opam`'s
behavior. Most of the users of `opam` binary at build time are just asking for
opam config, so that could be pretty easy.
