DESCRIPTION
===========

Installs and configures MongoDB from the 10gen apt repository.

REQUIREMENTS
============

Platform
--------

Known to work on Ubuntu 10.4. Should work on older Ubuntu and Debian
Lenny. Probably needs more work for other OSs.


ATTRIBUTES
==========

None.

RECIPES
=======

default
-------

The default recipe installs mongodb-stable from the 10gen
repository. It will do an `apt-get update` in the process.

LICENSE AND AUTHOR
==================

Author:: Ben VandenBos (<ben@avvo.com>) and Justin Weiss (<jweiss@avvo.com>)

Copyright 2009, Avvo, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
