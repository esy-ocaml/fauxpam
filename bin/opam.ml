let error ?(code=1) msg =
  Printf.eprintf "error: %s\n" msg;
  exit code

let () =

  let cur__install =
    try
      Sys.getenv "cur__install"
    with
      Not_found ->
        error "fauxopam is only available when running in Esy environment"
  in

  match Array.to_list Sys.argv with
  | _::"config"::"var"::"prefix"::[] ->
    print_endline cur__install
  | _ ->
    error "unsupported fauxpam invocation"

