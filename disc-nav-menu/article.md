# Building Accessible Navigation Menus

by M. Nicholas Hoyt, Jan. 2023

## Introduction

You've been tasked with designing and implementing a navigation menu system for your employer's website. What features should it have? What are the design patterns you can use as guidance? How can you make it as accessible as possible for users with disabilities?

This article will answer those questions along with a few others:
* What are the basic HTML building blocks to use for navigation menus?
* How can I use CSS to simplify my HTML markup and JavaScript code?
* Should I implement the 'open on hover' behavior for menu buttons?
* Which ARIA APG design patterns are recommended for navigation menus, and which are not?





Software menus have existed as user interface components for quite some time and their behaviors (i.e. the features and affordances offered to users) have varied depending on the different contexts in which they have been implemented.

This article will explore the various design patterns upon which different kinds of menus are based, with the ultimate goal of clarifying why some of these patterns should be used, and other patterns avoided, in building the particular kind of menu known as the website navigation menu.




[Begin Move]
To understand how to build accessible navigation menus, it is helpful to delve into this legacy and look at the design patterns associated with diffent kinds of menus.

Predating the web, application menus evolved into composite UI components, which included sophisticated focus management and support for first-character navigation. Importantly, the way that application menu widgets handle keyboard navigation and focus is non-idiomatic compared with how web pages typically work.

Web pages, written in HTML, allow navigating through interactive elements with the tab and shift-tab keys. The most common HTML interactive elements are links (‘a’ elements) and buttons (‘button’ element or an element with role=“button”).
[End Move]



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

## Getting Started

To begin with, we will take a closer look at the APG Example Disclosure Navigation Menu, which is built with HTML, CSS and JavaScript, and highlight the accessibility features that are implemented within each of these technology areas.

### Navigation Menu Structure

The Example Disclosure Navigation Menu provided by the APG has a very simple structure, which makes it easier to understand and discuss. It comprises a set of disclosure buttons (menu buttons) arranged horizontally, where each button controls a submenu that is a simple flat list of links.

** Add more details **

## User Experience

One of the foundational principles of web accessibility from a user experience perspective is the desire to make the efficiency of accessing information as similar as possible for users of different abilities. It should not be far more difficult and time-consuming for a keyboard-only user to interact with a navigation menu than it is for someone using a mouse or trackpad, or other pointing device.

To emphasize this principle, which we will refer to as “achieving parity”, we will delve into some of the accessibility implications that arise from trying to incorporate features such as “expand on hover” that are seen in many navigation menus in the wild. After analyzing some of these implications, it should become clear that “expand on hover” is a feature best omitted from our designs.

## Menu Design Patterns

Menus have been part of software user interface design for a relatively long period of time and there is a bit of history and a few distinctions that are important for web developers to be aware of.

### Menu | Menubar Pattern

The APG includes the pattern entitled Menu | Menubar, and the first section of its description, “About This Pattern,” begins with this text: “A menu is a widget that offers a list of choices to the user, such as a set of actions or functions.”

At the end of this opening section there is a link to the “Navigation Menubar Example.” Near the beginning of this example, you encounter the following warning:

> CAUTION! Before considering use of the ARIA menubar pattern for site navigation, it is important to understand: The menubar pattern requires complex functionality that is unnecessary for typical site navigation that is styled to look like a menubar with expandable sections or fly outs. A pattern more suited for typical site navigation with expandable groups of links is the disclosure pattern. For an example, see Example Disclosure Navigation Menu.

Why the warning? Am I not supposed to use the Menu | Menubar pattern for my navigation menus? Let’s try and break this down.

Because menus that offer a list of actions or functions are still being used on web pages for a variety of reasons (one example being an embedded application such as an HTML editor in a CMS), the ARIA specification must include the Menu | Menubar design pattern with examples illustrating all of the complex keyboard interactions it requires.

However, as the cautionary statement points out, “a pattern more suited for typical site navigation… is the disclosure pattern.” Why is this?

Based on discussions within the ARIA APG that were described to me by a member of the group, my best explanation is as follows: (1) A link (a.k.a. an anchor) is one of the primary interactive elements, along with form controls, in HTML, the markup language used for web pages. (2) The default method for traversing interactive elements on a web page is to use the tab and shift-tab keys for moving forward and backward, respectively. (3) Website navigation menus at their lowest levels are hierarchical collections of links. (4) To move through this collection of links that we call a navigation menu, what better choice than to support tab and shift-tab? This is what users expect in order to traverse interactive HTML elements.

### Widgets vs. HTML Interactive Elements

widgets are one tab stop in the document’s tab sequence
navigation menus do not need to be widgets, being composed of (and only of) native HTML interactive elements
The quoted warning above ends with a recommendation: use the Disclosure Pattern. In the following subsections, we will look more deeply into this design pattern and how it can be used for navigation menus.

### Disclosure Pattern

Paragraph

### Disclosure Navigation Menu
Paragraph

### Keyboard Enhancements
Paragraph

## Overview

Website navigation menus take on many different forms and behaviors. In browsing random sites we often see menus that are implemented with the assumption that users will interact with them only through a pointing device such as the mouse or trackpad.

In order to make navigation menus accessible to all users, regardless of abilities, there are additional modalities and behaviors we need to consider.

Keyboard-only users are a constituency group consisting of people who are unable to use the mouse or trackpad effectively, or at all. Blind users are among them, as are people with motor skill impairments. To meet accessibility requirements, we need a keyboard interaction model for navigation menus that takes their needs into account.

## What keyboard-only users expect and want

Keyboard-only users, like most users, expect that interacting with navigation menus will be easy and intuitive. Additionally, keyboard-only users benefit from some means of jumping out of a submenu that does not seem to contain what they are looking for, rather than having to traverse all of the remaining items to get to the next menu button. This would be a similar affordance to what sighted users have by simply moving the mouse pointer out of a submenu to another menu button.

Additionally, for them as for other users, the user experience is improved when it includes streamlined behaviors in the form of shortcuts that will relocate focus within the menu system to the next or previous parent menu button.

Another important factor in understanding what keyboard-only users expect is context. Because our focus is navigation menus on web pages, our context for these menus is HTML.

HTML supports focus traversal of two categories of elements: form controls and links (A elements) with HREF attributes. By default, these elements are included in the tab order of any web page in which they appear: they are interactive elements that are focusable.

Because navigation menus are hierarchical lists of links, and links are focusable and in the tab order, the clear expectation is that a keyboard-only user should be able to traverse the menu system using the Tab and Shift-Tab keys.

## History of menu design patterns

Web pages made up of HTML, CSS and JavaScript started out as relatively simple concoctions, and the interactions they afforded were pretty basic. Over time, all three of these technologies have grown to include more sophisticated features, and in combination can reach near parity with standalone applications in terms of the types of interaction behaviors they offer.

Because of this evolution, it is easy for developers to think that navigation menus should behave like menus in standalone applications. However, going back to the previously mentioned factor of context, it is important to remember that navigation menus differ from application menus in one important aspect: they typically consist entirely of links to other web pages, whereas application menus offer menu items that, when activated, perform actions related to features of the application.

For this reason, the WAI-ARIA description of the Disclosure Navigation Menu example points out in its introduction:
  “Although this example uses the word ‘menu’ in the colloquial sense to refer to a set of navigation links, it does not use the WAI-ARIA menu role. That is because the menu and menubar roles require complex functionality, such as composite widget focus management and first-character navigation, that is unnecessary for typical site navigation.”

## Disclosure navigation menu pattern

For website navigation menus, the disclosure navigation menu pattern provides what keyboard-only users expect: Tabbing through menu lists and pressing Enter or Spacebar to activate a menu item (i.e., either a menu button that expands or collapses a submenu, or a menu item link that takes you to another page).

The key concept for this pattern is ‘toggle’: menu buttons toggle the visibility of their submenus. And the primary keyboard interaction for the traversal of menus and submenus is tabbing.

## Keyboard enhancements

Although the Disclosure Navigation Menu implementation as described in the WAI-ARIA APG 1.2 example/specification uses Arrow keys for navigating within menus in the same way that Tab and Shift-Tab are used, there is a simple enhancement borrowed from the ARIA Menu/Menubar pattern that can provide a couple of convenient shortcuts for keyboard users navigating lengthy submenus.

When the top-level menu button orientation is horizontal and you are within   a submenu, the Up- and Down-Arrow keys function exactly like the Shift-Tab  and Tab keys do: they move focus to the previous or next menu item. However, the Left- and Right-Arrow keys act as shortcut keys to take you directly to the previous or next parent item in the hierarchy.

When the top-level menu button orientation is vertical and you are within a  submenu, the arrow key functions are reversed: the Left- and Right-Arrow keys move focus to the previous or next menu item, and the Up- and Down-Arrow keys act as shortcut keys to take you directly to the previous or next parent item in the hierarchy.

Without this keyboard enhancement/shortcut, you have to use Tab/Shift-Tab or the Arrow keys sequentially through an entire submenu to get to the next (or previous) top-level menu button, unless you use the Escape key to close the submenu and place focus on its menu button.

## Disclosure Navigation Menu

For website navigation menus, the disclosure navigation menu pattern provides what keyboard-only users expect: Tabbing through menu lists and pressing Enter or Spacebar to activate a menu item (i.e., either a menu button that expands or collapses a submenu, or a menu item link that takes you to another page).

The key concepts for this pattern are ‘toggling’ and 'tabbing': menu buttons toggle the visibility of their submenus, and the primary keyboard interaction for the traversal of menus and submenus is tabbing.

## Conclusions

We have examined in detail the user experience of keyboard-only users when interacting with navigation menus, and compared their experience with that of pointing device and touchscreen users. We have also learned how to assess whether the keyboard interaction model is coherent and complete. It is left up to you to judge whether or not these experiences and modalities are relatively similar, or at least as closely related as possible.

Regarding the technical implementation details of building accessible navigation menus, this article has shown how to build on a relatively simple standards-based foundation of HTML markup in order to add the behaviors that our interaction models call for.

Finally, by delving into the JavaScript code of the nav-menu-example on GitHub, some of the less obvious software development requirements for creating real-world navigation menus with nested submenus are unearthed and for these, possible solutions are proposed.

