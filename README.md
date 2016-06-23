# Korobi Documentation [![Build Status](https://travis-ci.org/korobi/Korobi.svg?branch=master)](https://travis-ci.org/korobi/Korobi)

Korobi is a cross-network IRC bot aimed at making channel management easier. It has the functionality to log and track statistics for channels, as well as providing a variety of other useful utilities.

This repository includes the [official documentation](https://github.com/korobi/Korobi/tree/master/source) which is available at https://docs.korobi.io and also functions as an [issue tracker](https://github.com/korobi/Korobi/issues) for the project as a whole. Please don't hesitate to create an issue if you have an idea or you've found an issue with the site, IRC bot or another component of the project.

## Local Environment

You can setup an environment to instantly see the changes made to the docs.

1. [Install Python 2.7 and Sphinx](http://sphinx-doc.org/latest/install.html)
2. [Install pip](https://pip.pypa.io/en/latest/installing.html)
3. [Install node.js](http://nodejs.org/download/)

In terminal or the command line, within the directory containing this README, run the following commands:

```bash
npm install -g gulp
npm install
pip install -r etc/requirements.txt
gulp
```

Your browser should open to reveal the docs. When you make a change to the documentation, the docs should refresh in the browser (possibly after a few seconds).
