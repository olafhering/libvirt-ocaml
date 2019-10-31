module C = Configurator.V1

let () =
C.main ~name:"libvirt" (fun c ->

let conf =
  match C.Pkg_config.get c with
  | None -> C.die "'pkg-config' missing"
  | Some pc ->
    match (C.Pkg_config.query pc ~package:"libvirt") with
      | None -> C.die "'pkg-config libvirt' missing"
      | Some deps -> deps
  in

  C.Flags.write_sexp "c_flags.sexp"         conf.cflags;
  C.Flags.write_sexp "c_library_flags.sexp" conf.libs)
