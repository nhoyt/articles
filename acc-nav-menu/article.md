# Building Accessible Navigation Menus

by M. Nicholas Hoyt

As a web developer and user experience designer with an abiding interest in accessibility, it often surprises me to find examples of navigation menus  that provide a reasonably good user experience for pointing device and touchscreen users, but do not serve the needs of keyboard-only and screen reader users at anywhere close to the same level. In other words, for keyboard-only and screen reader users, the experience of interacting with these types of menus can be downright frustrating.

This article asks the question: “Why should it be significantly more difficult for some users to interact with a navigation menu than it is for others?” and will argue that ‘achieving parity’ among the various user experiences for all users is a worthy goal that increases the overall level of accessibility.

Furthermore, this article is an attempt to answer the question: “What design patterns should be used for navigation menus that result in the highest level of accessibility?” From a slightly different perspective, the question becomes: “What behaviors should be built in to navigation menus such that the resulting user experiences are efficient and intuitive for all users, regardless of ability?”

## Introduction

The ARIA Authoring Practices Guide (APG) maintains that navigation menus should be built using the Disclosure (Show/Hide) pattern, and warns against using the Menu | Menubar pattern for such purposes. In this article, we will examine the APG Example Disclosure Navigation Menu and the associated Disclosure design pattern to see how these can be utilized as the basis for creating robust and arbitrarily complex navigation menus. We will also take a closer look at why you should not base navigation menus on the APG Menu | Menubar design pattern.

This article will take you, step-by-step, through the Example Disclosure Navigation Menu and try to fill in gaps where it may not be obvious why certain choices were made. The main objective of this article is to clarify the why, what, and how of building accessible navigation menus using the APG Disclosure pattern, and to go a few steps beyond the basic implementation that the APG Example Disclosure Navigation Menu provides.

It will also delve into the confusing mixture of advice on how navigation menus should behave, much of which is implicit by nature of the design patterns that are in common usage. Most importantly, this article will argue that the most accessible design pattern on which to base navigation menus is the Disclosure pattern and the Example Disclosure Navigation Menu, both of which are described in detail in the ARIA Authoring Practices Guide.

By utilizing accessible design patterns in building navigation menus, the larger goal of ‘achieving parity’ among the user experiences of different types of users can be reached, regardless of the physical means of interaction being employed.

### Intended Audience

This article is intended for web developers and designers who are accessibility-minded. It assumes that you have experience in at least one of the following two areas:

1. Web development — building accessible websites using HTML, CSS and JavaScript.
1. Web design/user experience — ensuring that the user experience is optimized for all users, regardless of ability.

### Resources

The information in this article is drawn from the following W3C online resources:

* [ARIA Authoring Practices Guide | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/)

* [Disclosure (Show/Hide) | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/patterns/disclosure/)

* [Example Disclosure Navigation Menu | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/example-index/disclosure/disclosure-navigation.html)

* [Menu or Menu bar | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/patterns/menu/)

* [Navigation Menubar Example | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/example-index/menubar/menubar-navigation.html)

* [Web Content Accessibility Guidelines (WCAG) 2.1](https://www.w3.org/TR/WCAG21/)

## Getting Started

One of the main goals of this article, as we get further into the technical aspects and details of building navigation menus, is to take a closer look at the APG Example Disclosure Navigation Menu, which is built with HTML, CSS and JavaScript, and highlight the accessibility features that are implemented within each of these technology areas.

Before we get to that point, however, there are a number of related questions and themes that we need to touch upon and provide answers for:

1. What design patterns and their associated behaviors are currently being used in implementing navigation menus?

2. Why is there so much confusion in trying to use the APG to figure out what design patterns should be used for navigation menus?

3. What is the history of menu design patterns and does this explain why some of this confusion exists?

### Terminology

The following terms relating to navigation menus are used in this article:

* _Navigation Menu_: a hierarchical collection of links to web pages, some of which may be contained within initially hidden submenus. On desktop formats, the top-level menu is typically always visible, and may be organized as a horizontal menu bar (a collection of menu buttons).

* _Menu Item_: an interactive element in a navigation menu with a label that describes the element. The menu item may exhibit only one of two possible behaviors. Either it acts as a link to another web page, or as a menu button that opens an initially hidden submenu containing additional menu items.

* _Submenu_:  a group of menu items that can be shown or hidden by activating a menu button. These are sometimes referred to as dropdown or fly-out menus.

* _Menu Button_: a menu item that controls the visibility of a submenu. Often menu buttons are distinguished from menu items that are links by including an arrow or chevron icon indicating that it controls the visibility of additional menu items in a submenu.

It is important to note that while this article uses these terms as they are defined above, the ARIA specification and the APG use some of these same terms with very different meanings in relation to menu design patterns that we will not be using. We will explore some of these differences in greater depth in a subsequent section.

## Disclosure Navigation Menu

For website navigation menus, the disclosure navigation menu pattern provides what keyboard-only users expect: Tabbing through menu lists and pressing Enter or Spacebar to activate a menu item (i.e., either a menu button that expands or collapses a submenu, or a menu item link that takes you to another page).

The key concepts for this pattern are ‘toggling’ and 'tabbing': menu buttons toggle the visibility of their submenus, and the primary keyboard interaction for the traversal of menus and submenus is tabbing.

## Conclusions

We have examined in detail the user experience of keyboard-only users when interacting with navigation menus, and compared their experience with that of pointing device and touchscreen users. We have also learned how to assess whether the keyboard interaction model is coherent and complete. It is left up to you to judge whether or not these experiences and modalities are relatively similar, or at least as closely related as possible.

Regarding the technical implementation details of building accessible navigation menus, this article has shown how to build on a relatively simple standards-based foundation of HTML markup in order to add the behaviors that our interaction models call for.

Finally, by delving into the JavaScript code of the nav-menu-example on GitHub, some of the less obvious software development requirements for creating real-world navigation menus with nested submenus are unearthed and for these, possible solutions are proposed.

