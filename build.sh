# apt-get install libgrib-api-dev libffi-dev
# opam pin cohttp https://github.com/danielrichman/ocaml-cohttp#v0.20.2-hotpatch
# opam install core async cohttp ctypes ctypes-foreign 


ocamlbuild \
    -use-ocamlfind \
    -pkg core \
    -tag "ppx(ppx-jane -as-ppx)" \
    -tag thread \
    -tag debug \
    -tag bin_annot \
    -tag short_paths \
    -cflags "-w A-4-33-40-41-42-43-34-44" \
    -cflags -strict-sequence \
    -pkg ctypes.foreign \
    -pkg async \
    -pkg cohttp.async \
    -lflags -cclib,-lgrib_api \
    main.native 
