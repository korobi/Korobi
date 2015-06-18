====
AI
====

Korobi supports sending automated messages in response to various triggers as part of the channel AI module. If you have the necessary permission, you can add and remove as well as update existing patterns for your channel. Patterns are available to view via the web interface. For an example, see https://dev.korobi.io/esper/factions/ai/.

Creating a pattern
==================

Creating a pattern is as simple as issuing the :code:`.aip -n` command in the channel you'd like to add the pattern to. You'll receive a notice from Korobi which will include the index for the newly created pattern. This is important to keep in mind since the rest of the commands will reference the index.

The next step is to specify the *pattern value*. This is the regular expression that will be applied to messages in the channel. If a match is found and the user hasn't already triggered the auto message, it will be sent. The value is set by issuing :code:`.aip -i <index> -p <pattern value>`.

As an example, a simple pattern matching the word 'help' anywhere in the message could be set up using :code:`.aip -i 0 -p help`.

Next, it's time to specify the message to be sent. This is achieved using :code:`.aip -i <index> -m <message to send>`. For example, :code:`.aip -i 0 -m Please ask your question and wait patiently for assistance!`.

Finally, to enable the pattern use :code:`.aip -i <index> -e`. Now, your pattern will be active for all new messages in the channel.

It's possible to manipulate many other options for patterns, including case-sensitivity, selecting a user mode to only trigger the message for (e.g. excluding ops and voices), removing the "[Auto]" prefix etc. These options are not yet documented, but will be in due course.