=================
Removing commands
=================

**Usage:** :code:`.<delcmd|unsetcmd> [-i <index>] <name>`

Removing dynamic commands is very straightforward: simply issue the :code:`delcmd` command and pass in the name of the command
you want to remove. In addition to normal commands, you can use :code:`delcmd` or one of its aliases to remove a user-created
command alias.

If you've added multiple values to a command as described above, you can use the -i option to specify the index of the
value to remove. You can get a list of values with the :code:`cmdinfo` command. At present, the first value is treated as
the 0th index, so to remove the first value of the :code:`hit` command you could use :code:`.delcmd -i 0 hit`
