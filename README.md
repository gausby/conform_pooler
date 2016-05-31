# Conform Pooler

I can't seem to figure out how to make conform create a working the
pooler configuration. The solution is probably pretty easy, but no
matter what I do, this seems to be the scenario:

``` shell
Development/pooler_deploy - [master] » mix conform.configure && mix conform.effective

You already have a .conf at config/pooler_deploy.conf.
Do you want to overwrite this config file with a new one?
 [Yn] Y

==> The .conf file for pooler_deploy has been placed in config/pooler_deploy.conf
** (Protocol.UndefinedError) protocol Enumerable not implemented for {:name, 'riaklocal1'}
    (elixir) lib/enum.ex:1: Enumerable.impl_for!/1
    (elixir) lib/enum.ex:116: Enumerable.reduce/3
    (elixir) lib/enum.ex:1486: Enum.reduce/3
    (elixir) lib/enum.ex:1092: Enum.map/2
    (elixir) lib/enum.ex:1088: Enum."-map/2-lists^map/1-0-"/2
    lib/conform/translate.ex:118: anonymous fn/6 in Conform.Translate.convert_types/2
    (elixir) lib/enum.ex:1473: Enum."-reduce/3-lists^foldl/2-0-"/3
    lib/conform/translate.ex:115: Conform.Translate.convert_types/2
```

The schema should be pretty basic.
