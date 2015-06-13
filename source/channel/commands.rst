================
Channel Commands
================

Korobi allows channel operators to create dynamic commands in a channel. Commands output a preset piece of text to a
channel, either as a standard message or action. Commands can be targeted at individual users and sent via a notice
or by highlighting the target in a channel message. Additionally, it's possible to have the contents of a command sent
to you without appearing in the channel.

Channel commands are triggered by using the channel command prefix (configurable per channel) followed by the command
name or an alias. The command prefix is included on the channel overview page. For simplicity, the documentation
assumes a command prefix of '.'.

Creating a new command
======================

**Usage:** `.<addcmd|setcmd|cmdinfo> [-a] [-v] <name> [value]`

Creating a command is a straightforward process. Assuming commands are enabled for the channel in question, it's simply
a matter of using the 'addcmd' command. The command has a number of aliases which are documented above and takes one
mandatory argument (the command name) and an optional value. Omitting a value for the command will send you a notice
with information about the supplied command name, if it exists.

A basic command could be created by executing `.addcmd gist Please use https://gist.github.com for long text`. All users
can then use the command by typing `.gist` which will print the result to the channel.

Advanced commands
~~~~~~~~~~~~~~~~~

More advanced commands can be created by using the two switches, -a and -v. The -a switch tells Korobi to create an
action command. The bot will then send a CTCP ACTION message which is the equivalent of what would be sent from most
IRC clients using the `/me` command. For example, a simple action command could be created with `.addcmd -a cry cries`.
When executed, the output in the chat is as follows:

"\* Korobi cries"

You can also create commands which refer to command arguments. These are represented as array indexes surrounded with
curly braces and are replaced with whatever the user supplies. For example, `.addcmd -a hit hits {0}` would add a
new command that can be invoked by typing `.hit <name>` in the channel. `.hit lol768` would produce the following
output:

"\* Korobi hits lol768"

The system will automatically ensure that the correct number of arguments are supplied when the user runs the command.
An incorrect number of arguments will result in an error message notice being sent.

It's possible to create multiple variations of a command with the -v switch. For example, consider a channel in which a
".hit" command already exists and is defined as described above. By executing `.addcmd -a -v hit hits {0} with a {1}`
you can add another value to the existing command. if the user executes `.hit lol768` the output will be "\* Korobi
hits lol768" and if the user executes `.hit lol768 stick` the output will be "\* Korobi hits lol768 with a stick".

Adding aliases for commands
===========================

**Usage:** `.<addalias> <command name> <alias name> [2nd alias] [another alias]...`

Dynamic commands are normally invoked by using the command prefix followed by the command name but in some cases you
may with to create command aliases to make the command more user friendly to use. You can do this by executing the
addalias command and providing the 'real' command name as the first argument and a space-separated list of aliases as
the next arguments.

You can view all of the aliases for a command by executing the `addcmd` (alias `cmdinfo`) command. This will list all
 of the aliases attached to the supplied command.

Removing commands
=================

**Usage:** `.<delcmd|unsetcmd> [-i <index>] <name>`

Removing dynamic commands is very straightforward: simply issue the `delcmd` command and pass in the name of the command
you want to remove. In addition to normal commands, you can use `delcmd` or one of its aliases to remove a user-created
command alias.

If you've added multiple values to a command as described above, you can use the -i option to specify the index of the
value to remove. You can get a list of values with the `cmdinfo` command. At present, the first value is treated as
the 0th index, so to remove the first value of the `hit` command you could use `.delcmd -i 0 hit`.


Targeting commands
==================

.. note::
    In the table below, `.` is used as a placeholder channel command prefix. This will need to be changed if the channel you are targeting commands in uses a different prefix.

+----------------+------------------------------------------------------------------------------------------------------------------------------+
| Command prefix | Explanation                                                                                                                  |
+================+==============================================================================================================================+
| .              | No user is targeted.                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------+
| .>             | After the command name, a comma-separated list of users to target should be supplied. These users are pinged in the channel. |
+----------------+------------------------------------------------------------------------------------------------------------------------------+
| .>>            | After the command name, a comma-separated list of users to target should be supplied. These users are sent a notice.         |
+----------------+------------------------------------------------------------------------------------------------------------------------------+
| .<             | Korobi will send you a notice with the channel contents in. Useful if you don't want to spam the channel.                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------+

For example, I could send the results of the `.factions` command to users lol768 and Kashike in a notice by executing `.>> factions lol768,Kashike`.
