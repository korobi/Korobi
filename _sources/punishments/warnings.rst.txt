========
Warnings
========

**Usage:** :code:`.warn [-a] [-c <channel>] <nick> [message...]`

The :code:`-a` flag allows you to warn users anonymously by messaging the bot. This flag must be used in conjunction with the :code:`-c` flag to specify the channel. The nick must be a user present in the channel, and they will be sent the message (if one is provided) following the nick in the form of a notice.

A typical warning will be sent in a manner similar to the example below:

.. code-block:: none

    ** Warning from lol768 in #korobi:
    * Warning: some message here

Anonymous warnings will use "a moderator" instead of including the nick of the issuing user.
