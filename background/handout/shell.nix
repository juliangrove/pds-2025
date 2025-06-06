with import (fetchTarball https://github.com/NixOS/nixpkgs/archive/nixos-24.11.tar.gz) { };
stdenv.mkDerivation {
  name = "docsEnv";
  shellHook = ''
    export LANG=en_US.UTF-8
  '';
  buildInputs = [
    biber
    fontconfig
    glibcLocales
    inconsolata
    libertinus
    (texlive.combine {
      inherit (texlive)
        adjustbox
        appendix
        biblatex
        bussproofs
        capt-of
        catchfile
        cleveref
        doublestroke
        enumitem
        eso-pic
        expex
        forest
        gitinfo2
        hardwrap
        inconsolata
        kpfonts
        libertine
        libertinus
        libertinus-fonts
        lualatex-math
        luatex
        mathtools
        newtx
        newunicodechar
        pgf
        ragged2e
        relsize
        scheme-full
        sectsty
        setspace
        stackengine
        stmaryrd
        tcolorbox
        textcase
        tikz-qtree
        tipa
        titlesec
        titling
        tufte-latex
        txfonts
        ulem
        upquote
        unicode-math
        wasysym
        wrapfig
        xkeyval
        xstring
        ;
    })
  ];
}
