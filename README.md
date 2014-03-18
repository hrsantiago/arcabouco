Arcabouço
=========

Arndt von Staa
arndt@inf.puc-rio.br

=========

A test automation framework is presented. This framework is specifically geared
towards modules written in C. Initially an abridged description of the key testing concepts
is presented. Afterwards two test automation approaches are described. The first one uses a
specific test module containing functions that exercise the module being tested. In this
approach, the test suite corresponds to the source code of the test control module. The
second approach is based on a framework that must be instantiated to test a specific
module. The instantiated test control module implements a test script interpreter. In this
approach one or more tests scripts specifically geared to sufficiently test the given module
defines the test suite. Afterwards techniques to control memory leakage control and test
coverage are introduced. The article emphasizes incremental development of programs as
well as of modules, combining this with a test driven development approach..
