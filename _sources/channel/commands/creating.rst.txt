======================
Creating a new command
======================

**Usage:** :code:`.<addcmd|setcmd> [-a] [-v] <name> [value]`

Creating a command is a straightforward process. Assuming commands are enabled for the channel in question, it's simply
a matter of using the 'addcmd' command. The command has a number of aliases which are documented above and takes one
mandatory argument (the command name) and an optional value. Omitting a value for the command will send you a notice
with information about the supplied command name, if it exists.

A basic command could be created by executing :code:`.addcmd gist Please use https://gist.github.com for long text`. All users
can then use the command by typing :code:`.gist` which will print the result to the channel.

You may overwrite a previous command by re-adding the command with the same name.

Advanced commands
=================

More advanced commands can be created by using the two switches, -a and -v. The -a switch tells Korobi to create an
action command. The bot will then send a CTCP ACTION message which is the equivalent of what would be sent from most
IRC clients using the :code:`/me` command. For example, a simple action command could be created with :code:`.addcmd -a cry cries`.
When executed, the output in the chat is as follows:

.. code-block:: none

    * Korobi cries

You can also create commands which refer to command arguments. These are represented as array indexes surrounded with
curly braces and are replaced with whatever the user supplies. For example, :code:`.addcmd -a hit hits {0}` would add a
new command that can be invoked by typing :code:`.hit <name>` in the channel. :code:`.hit lol768` would produce the following
output:

.. code-block:: none

    * Korobi hits lol768

The system will automatically ensure that the correct number of arguments are supplied when the user runs the command.
An incorrect number of arguments will result in an error message notice being sent.

It's possible to create multiple variations of a command with the -v switch. For example, consider a channel in which a
".hit" command already exists and is defined as described above. By executing :code:`.addcmd -a -v hit hits {0} with a {1}`
you can add another value to the existing command. if the user executes :code:`.hit lol768` the output will be "\* Korobi
hits lol768" and if the user executes :code:`.hit lol768 stick` the output will be :code:`* Korobi hits lol768 with a stick`.
