======
Kicks
======

**Usage:** :code:`.kick [-a] [-c <channel>] <nick> [reason...]`

The :code:`-a` flag allows you to kick users anonymously by messaging the bot. This flag must be used in conjunction with the :code:`-c` flag to specify the channel. The nick must be a user present in the channel, and they will be kicked using the provided reason. The reason will be visible to all users in the channel.

A typical kick will appear in the channel in a manner similar to the example below:

.. code-block:: none

    <-- Korobi has kicked lol768 ((bendem) testing123)

Anonymous kicks will use "a moderator" instead of including the nick of the issuing user.
