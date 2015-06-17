===========================
Adding aliases for commands
===========================

**Usage:** :code:`.<addalias> <command name> <alias name> [2nd alias] [another alias]...`

Dynamic commands are normally invoked by using the command prefix followed by the command name but in some cases you
may with to create command aliases to make the command more user friendly to use. You can do this by executing the
addalias command and providing the 'real' command name as the first argument and a space-separated list of aliases as
the next arguments.

You can view all of the aliases for a command by executing the :code:`addcmd` (alias :code:`cmdinfo`) command. This will list all
of the aliases attached to the supplied command.
