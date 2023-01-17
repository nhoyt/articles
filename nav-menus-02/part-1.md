# Building Accessible Navigation Menus

by M. Nicholas Hoyt, Jan. 2023

## Introduction

The ARIA Authoring Practices Guide (APG) maintains that navigation menus should be built using the Disclosure (Show/Hide) pattern, and warns against using the Menu | Menubar pattern for such purposes. In this article, we will examine the APG Example Disclosure Navigation Menu and the associated Disclosure design pattern to see how these can be utilized as the basis for creating robust and arbitrarily complex navigation menus. We will also take a closer look at why you should not base navigation menus on the APG Menu | Menubar design pattern.

This article will take you, step-by-step, through the Example Disclosure Navigation Menu and try to fill in gaps where it may not be obvious why certain choices were made. The main objective of this article is to clarify the why, what, and how of building accessible navigation menus using the APG Disclosure pattern, and to go a few steps beyond the basic implementation that the APG Example Disclosure Navigation Menu provides.

### Intended Audience

This article is intended for web developers and designers who are accessibility-minded. It assumes that you have experience in at least one of the following two areas:

1. Web development — building accessible websites using HTML, CSS and JavaScript.
1. Web design/user experience — ensuring that the user experience is optimized for all users, regardless of ability.

### Terminology

The following terms relating to navigation menus are used in this article:

* _Navigation Menu_: a hierarchical collection of menu items. On desktop formats, the top-level menu is typically always visible, and may be organized as a horizontal menu bar (a collection of menu buttons).

* _Menu Item_: an interactive element in a navigation menu with a label that describes the element. The menu item may exhibit only one of two possible behaviors. Either it acts as a link to another web page, or as a menu button that opens an initially hidden submenu containing additional menu items.

* _Submenu_:  a group of menu items that can be shown or hidden by activating a menu button. These are sometimes referred to as dropdown or fly-out menus.

* _Menu Button_: a menu item that controls the visibility of a submenu. Often menu buttons are distinguished from menu items that are links by including an arrow or chevron icon indicating that it controls the visibility of additional menu items in a submenu.

### Resources

The information in this article is drawn from the following W3C online resources:

* [Web Content Accessibility Guidelines (WCAG) 2.1](https://www.w3.org/TR/WCAG21/)

* [ARIA Authoring Practices Guide | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/)

* [Disclosure (Show/Hide) | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/patterns/disclosure/)

* [Example Disclosure Navigation Menu | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/example-index/disclosure/disclosure-navigation.html)

* [Menu or Menu bar | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/patterns/menu/)

* [Navigation Menubar Example | APG | WAI | W3C](https://www.w3.org/WAI/ARIA/apg/example-index/menubar/menubar-navigation.html)
