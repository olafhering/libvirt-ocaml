(lang dune 1.11)

(name libvirt)

(generate_opam_files true)

(license "LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception")

(authors "Richard W.M. Jones <rjones@redhat.com>")

(maintainers "Richard W.M. Jones <rjones@redhat.com>")

(homepage "https://libvirt.org/ocaml/")

(package
 (name libvirt)
 (synopsis "OCaml bindings for libvirt")
 (description
   "OCaml bindings for libvirt, allowing you to write OCaml programs and scripts which control virtualisation features.")
 (depends
  (dune
   (>= 1.11))
  dune.configurator
  (ocaml
   (>= 4.02.0))))
