# Notes

## Week of Jan. 30 to Feb. 3, 2023

### Accessible Navigation Menus article — what it explains

1. The problem: Increasingly the menus I encounter are inaccessible to people with disabilities that prevent or make it difficult for them to use pointing devices such as a computer mouse or trackpad.
1. Why is this? It seems that a particular design pattern, or combination of patterns is being followed that prioritizes "open on hover or focus" behavior, probably because it is believed that this provides the greatest "ease of use" for the majority of users (i.e. those using the mouse or trackpad). (From a developer's point of view, and extra click, e.g., one on a menu button that opens a submenu, should be avoided at all costs.)
1. What this results in: keyboard-only users cannot traverse the top-level buttons in the menubar in the same way that a mouse or trackpad user can. Keyboard-only users are forced to tab through all of the items in the submenu in order to reach the next top-level menu button.
1. But wait, it gets worse! A screen reader user may not even know they are on a menu button that has opened a submenu. When they tabbed to the button, depending on how things are marked up, they may only have been informed that they are in a list of N items, where N is the number of top-level menu buttons. When they hit tab from there, they descend into the submenu that was previously hidden, and when they get to the first item, they are told that they are in a new list of M items.
1. So, if this design pattern causes problems for some users, what should we do instead?

### How to write this article
1. Start over — forget about what you've written so far.
1. Decide exactly what you want to say and put this in the introduction.
1. Write sequentially — at the end of the introduction, segue into the next section, and from that section into the next, and so on.
1. Use an outline — this provides the view from 10k feet.
1. Collect insights and ideas.

Insight: I suspect that one reason menus are built with "open on hover or focus" behavior is that, especially in the case of hover, it seems as if this is the best (i.e. most efficient, requiring the least amount of effort) way to provide discoverability — the answer to the question that is likely to be foremost on the mind of many users (especially those who are unfamiliar with the site): What are the categories of information or resources contained herein? By providing "open on hover or focus" behavior, we've done our users a big favor — they don't even have to click on the menu buttons to see their submenus. They just automatically appear — awesome!

6. Start by talking about the user experience (see above), common patterns and problems, the concept of achieving equity with respect to the user experience, and then the design patterns that support this (disclosure navigation menus); finally, explain the technical details re. how to build such menus; ending with a section on mega menus and best practices for implementing the way people navigate within them.
1. Stress the importance of keyboard support, a.k.a. the keyboard interaction model, and its relationship with the pointing device interaction model — "achieving equity" — the two should be as similar as possible in the ways in which they provide/offer access to the menu hierarchy and menu items.
1. The problem with "open on hover or focus" behavior arises when we start to add in keyboard support for the focus part. When a button has "open on hover" behavior built in, it seems logical that when I tab to that button, giving it focus, the same thing should happen as when I hover over it — its submenu should open. However, there are two problems with this approach:
    1. Hover and focus have different purposes. Hover indicates that an element is interactive, but it does not activate the element and it does not, by default, change or set focus. In fact, hover has nothing to do with the tab order of the page.
    1. When an element has focus, on the other hand, it can be activated via the keyboard by pressing enter (or spacebar if the element is a button). It also means that if you press the tab key, you will navigate to the next interactive (focusable) element. Conversely, if you press shift-tab, you will navigate to the previous element in the tab order.

### List of topics
What are all of the topics that we need to discuss in order to provide a convincing argument regarding accessible navigation menus?

### Where to start?
1. To determine whether a navigation menu is accessible, there are a number of characteristics we need to examine (and this article will attempt to cover all of the important ones). However, there are two areas we can start with that will immediately provide important information: (1) how does keyboard-only traversal of the menu system work, and (2) what information does a screen reader application give us when, in the course of our traversal, we tab to (set focus on) various menu elements such as a top-level button or the first item in a submenu?
