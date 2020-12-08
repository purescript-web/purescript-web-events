{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "web-events"
, dependencies =
  [ datetime", "enums", "nullable", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
