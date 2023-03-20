# Building Accessible Navigation Menus

by M. Nicholas Hoyt

As a web developer and user experience designer with an abiding interest in accessibility, it often surprises me to find examples of navigation menus  that provide a reasonably good user experience for pointing device and touchscreen users, but do not serve the needs of keyboard-only and screen reader users at anywhere close to the same level. In other words, for keyboard-only and screen reader users, the experience of interacting with these types of menus can be downright frustrating.

This article asks the question: “Why should it be significantly more difficult for some users to interact with a navigation menu than it is for others?” and will argue that ‘achieving parity’ among the various user experiences for all users is a worthy goal that increases the overall level of accessibility.

Furthermore, this article is an attempt to answer the question: “What design patterns should be used for navigation menus that result in the highest level of accessibility?” From a slightly different perspective, the question becomes: “What behaviors should be built in to navigation menus such that the resulting user experiences are efficient and intuitive for all users, regardless of ability?”

----------------------------------------------------------------

This article will explain how to ‘achieve parity’ by utilizing accessible design patterns in building navigation menus, which will result in user experiences that are much more nearly the same for all users, regardless of the physical means of interaction being employed.

It will also delve into the confusing mixture of advice on how navigation menus should behave, much of which is implicit by nature of the design patterns that are in common usage. Most importantly, this article will argue that the most accessible design pattern on which to base navigation menus is the Disclosure pattern and the Example Disclosure Navigation Menu, both of which are described in detail in the ARIA Authoring Practices Guide.

Argue: That 'achieving parity' among the various user experiences is a goal that increases the overall level of accessibility for all users.

Explain: How to use the APG for building navigation menus; how to understand which APG design patterns to use and which to ignore; how to go beyond the APG Example Disclosure Navigation Menu to build real world menus with nested submenus to arbitrary depths.
