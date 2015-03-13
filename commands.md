## Channel commands

Korobi allows channel operators to create dynamic commands in a channel. Commands output a preset piece of text to a
channel, either as a standard message or action. Commands can be targeted at individual users and sent via a notice
or by highlighting the target in a channel message. Additionally, it's possible to have the contents of a command sent
to you without appearing in the channel.

Channel commands are triggered by using the channel command prefix (configurable per channel) followed by the command
name or an alias. The command prefix is included on the channel overview page. For simplicity, the documentation
assumes a command prefix of '.'.

### Creating a new command

**Usage:** `.<addcmd|setcmd|cmdinfo> [-a] [-v] <name> [value]`

Creating a command is a straightforward process. Assuming commands are enabled for the channel in question, it's simply
a matter of using the 'addcmd' command. The command has a number of aliases which are documented above and takes one
mandatory argument (the command name) and an optional value. Omitting a value for the command will send you a notice
with information about the supplied command name, if it exists.

A basic command could be created by executing `.addcmd pastebin Please use http://pastebin.com for long text`. All users
can then use the command by typing `.pastebin` which will print the result to the channel.

More advanced commands can be created by using the two switches, -a and -v. The -a switch tells Korobi to create an
action command. The bot will then send a CTCP ACTION message which is the equivalent of what would be sent from most
IRC clients using the `/me` command. For example, a simple action command could be created with `.addcmd -a cry cries`.
When executed, the output in the chat is as follows:

"\* Korobi cries"

More advanced action commands can be created by referring to command arguments. These are represented as array indexes
surrounded with curly braces and are replaced with whatever the user supplies. For example, `.addcmd -a hit hits {0}`
would add a new command that can be invoked by typing `.hit <name>` in the channel. `.hit lol768` would produce the
following output:

"\* Korobi hits lol768"

The system will automatically ensure that the correct number of arguments are supplied when the user runs the command.
An incorrect number of arguments will result in an error message notice being sent. It's possible to append multiple
variations of a command with the -v switch. For example, consider a channel in which a ".hit" command already exists
and is defined as described above. By executing `.addcmd -a -v hit hits {0} with a {1}` you can add to the existing command.
If the user executes `.hit lol768` the output will be "\* Korobi hits lol768" and if the user executes `.hit lol768 stick`
the output will be "\* Korobi hits lol768 with a stick".
