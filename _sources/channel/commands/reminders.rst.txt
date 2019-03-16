===========================
User reminders
===========================

Sometimes you might be in your favourite IRC channel and quickly want to be reminded of something at a later time. A few minutes?
Maybe a few days? Korobi Reminders are simple to use and precise down to the second; sending you reminders exactly on time with your message.

**Usage:** :code:`.remind [-w <who>] <when> <reminder...>`

To get started using reminders you can hop on into a Korobi channel with reminders enabled and type :code:`.remind 1m Isn't this awesome?!`
to setup your first reminder. In the case that reminders are disabled, Korobi will inform you.

The following table displays all possible time units which can be used for the :code:`<when>` argument:

+-----------+-------------+---------+
| Time unit | Description | Example |
+===========+=============+=========+
| s         | Second      | 1s      |
+-----------+-------------+---------+
| m         | Minute      | 1m      |
+-----------+-------------+---------+
| h         | Hour        | 1h      |
+-----------+-------------+---------+
| d         | Day         | 1d      |
+-----------+-------------+---------+
| w         | Week        | 1w      |
+-----------+-------------+---------+
| mo        | Month       | 1mo     |
+-----------+-------------+---------+

**Any combination of units may be used to construct a reminder e.g.** :code:`.remind 1s1m1h 1 Second 1 Minute 1 Hour has passed.`

Remind others
-------------

You can remind other users on the same channel by using the :code:`-w` flag followed by the target's name. For example
:code:`.remind -w SupaHam 1m You're still SupaHam` will set a reminder by you for the user SupaHam that will be sent a minute later.
