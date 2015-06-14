=================
Removing commands
=================

**Usage:** `.<delcmd|unsetcmd> [-i <index>] <name>`

Removing dynamic commands is very straightforward: simply issue the `delcmd` command and pass in the name of the command
you want to remove. In addition to normal commands, you can use `delcmd` or one of its aliases to remove a user-created
command alias.

If you've added multiple values to a command as described above, you can use the -i option to specify the index of the
value to remove. You can get a list of values with the `cmdinfo` command. At present, the first value is treated as
the 0th index, so to remove the first value of the `hit` command you could use `.delcmd -i 0 hit`.
