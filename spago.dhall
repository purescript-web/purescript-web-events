{ name = "web-events"
, dependencies =
  [ "datetime", "enums", "nullable", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
