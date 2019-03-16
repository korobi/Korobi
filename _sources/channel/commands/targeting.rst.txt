==================
Targeting commands
==================

.. note::

    In the table below, a period is used as a placeholder channel command prefix. This will need to be changed if the
    channel you are targeting commands in uses a different prefix.

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

For example, I could send the results of the :code:`.factions` command to users lol768 and Kashike in a notice by executing :code:`.>>factions lol768,Kashike`.
