# .emacs.d

Emacs configuration mainly for working with Clojure.


## Startup

Emacs 25.3 on openSUSE have an expired key for ELPA. Before startign emacs
run:

```
gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40
```


## Who is this for?

Since openSUSE 15.3 have an old version of Emacs (as of writing 2021
december, 25.3), the ELPA repository don't work without updating a key
and MELPA (both stable and ordinary) contains CIDER packages which
requires Emacs 26.

So a niche within a niche. This is for Clojurists on OpenSUSE 15.3.
