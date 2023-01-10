## The Problem

Before we delve into the Example Disclosure Navigation Menu, let us step back and ask: what is the problem we are trying to solve?

From my experience as a user of websites and navigation menus, what I often encounter is a menu system where the following characteristics are present:

### Activate-on-hover

1. The top-level collection of menu buttons (often in a horizontally-oriented menubar) are activated by hovering over them. By activated, I am referring to the behavior that causes a menu button's submenu to be displayed (or unhidden).

My guess is that developers feel that this is the most efficient way of displaying the submenu, and that they are doing their users a favor by implementing this behavior (it saves them from having to click on the menu button).

However, when we add keyboard support (covered in the next section), we are faced with a conundrum: When I tab to a button, giving it focus, should that trigger the same behavior that hovering does? At first blush, that seems logical. The problem is that when I automatically expose the submenu on focus, I am forcing the user to tab all the way through the submenu in order to reach the next top-level menu button.

As a side note: When a "menu button" automatically opens its submenu on hover or focus, then it is no longer acting like a button. That is, the ARIA button role defines how a user interacts with a button. It says

### Keyboard support lacking or only supports tab/shift-tab

