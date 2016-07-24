================
Channel Commands
================

Introduction
============

Korobi allows channel operators to create dynamic commands in a channel. Commands output a preset piece of text to a
channel, either as a standard message or action. Commands can be targeted at individual users and sent via a notice
or by highlighting the target in a channel message. Additionally, it's possible to have the contents of a command sent
to you without appearing in the channel.

Channel commands are triggered by using the channel command prefix (configurable per channel) followed by the command
name or an alias. The command prefix is included on the channel overview page. For simplicity, the documentation
assumes a command prefix of a period.

To list commands available in the channel, issue the :code:`.listcmd` command.

Contents
========

.. toctree::
    :maxdepth: 2
    :titlesonly:

    creating
    aliases
    targeting
    removing
    reminders
