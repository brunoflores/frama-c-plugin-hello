let help_msg = "output a welcome message to the user"

module Self = Plugin.Register
    (struct
      let name = "hello world"
      let shortname = "hello"
      let help = help_msg
    end)

let run () =
  Self.result "Hello, world!";
  let product =
    Self.feedback ~level:2 "Computing the product of 11 and 5...";
    11 * 5
  in
  Self.result "11 * 5 = %d" product

let () = Db.Main.extend run
