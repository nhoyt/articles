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

