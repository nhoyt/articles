Title: Navigation Menus 03  
Author:

Building Accessible Navigation Menus
by M. Nicholas Hoyt
January 2023

Introduction
The ARIA Authoring Practices Guide (APG) specifies that website navigation menus should utilize the Disclosure pattern, and recommends against using the Menu | Menubar pattern for navigation menus. In this article, we will examine the APG Disclosure design pattern and Disclosure Navigation Menu example to see how these can be utilized as the basis for creating navigation menus. We will also take a closer look at why you should not base navigation menus on the APG Menu | Menubar design pattern.
This article will take you, step-by-step, through the APG Disclosure Navigation Menu example and try to fill in gaps where it may not be obvious why certain choices were made. The main objective of this article is to clarify the what, how and why of building accessible navigation menus using the APG Disclosure pattern, and to go a few steps beyond the rather basic implementation that the APG Disclosure Navigation Menu example provides.

Resources
The information in this article is drawn from the following W3C online resources:
	•	Web Content Accessibility Guidelines 2.1 (WCAG)
	•	ARIA Authoring Practices Guide (APG)
	•	APG Disclosure Pattern
	•	APG Disclosure Navigation Menu Example
	•	APG Menu or Menubar Pattern
	•	APG Navigation MenuBar Example

Getting Started
To begin with, we will look at the APG Disclosure Navigation Menu example, which is built with HTML, CSS and JavaScript, to call out the accessibility features included within each of these areas.
Terminology
This article will use the following terms in order to discuss navigation menus:
Navigation Menu: a hierarchical collection of menu items. On desktop page formats, the top-level menu is typically always visible, and may be organized as a horizontal menu bar (series of menu buttons).
Menu Item: an interactive element in a navigation menu with a label that describes the element. The menu item may exhibit only one of two possible behaviors. Either it acts as a link to another web page, or as a menu button that opens an initially hidden submenu containing additional menu items.
Submenu:  a group of menu items that can be shown or hidden by activating a menu button. These are sometimes referred to as dropdown or fly-out menus.
Menu Button: a menu item that controls the visibility of a submenu. Often menu buttons are distinguished from menu items that are links by including an arrow or chevron icon indicating that it controls the visibility of additional menu items in a submenu.
Navigation Menu Structure
The example Disclosure Navigation Menu provided by the APG has a very simple structure, which makes it easier to understand and discuss. It comprises a set of disclosure buttons (menu buttons) arranged horizontally, where each button controls a submenu that is a simple flat list of links.

User Experience
One of the foundational principles of web accessibility from a user experience perspective is the desire to make the efficiency of accessing information as similar as possible for users of different abilities. It should not be far more difficult and time-consuming for a keyboard-only user to interact with a navigation menu than it is for someone using a mouse or trackpad, or other pointing device.
To emphasize this principle, which we will refer to as "achieving parity", we will delve into some of the accessibility implications that arise from trying to incorporate features such as "expand on hover" that are seen in many navigation menus in the wild. After analyzing some of these implications, it should become clear that "expand on hover" is a feature best omitted from our designs.

Keyboard-only users
In this article, we refer to people who do not use pointing devices and instead use only the keyboard for interacting with web resources as keyboard-only users. People who are blind that use screen readers are typically keyboard-only users. People with motor skill impairments that make it difficult to use pointing devices may also be keyboard-only users.
The interaction model for keyboard-only users is one where sequential access plays a primary role, as we will see by examining cursor keys in detail.
Cursor keys
The subset of keys that move the cursor in various directions are known as the cursor keys. They include tab, shift-tab, return, home, end, page up, page down and the up-, left-, down- and right-arrow keys.
Tab/shift-tab traversal of interactive elements

Pointing device users
We categorize people who interact with web resources primarily, or at least initially, by using a trackpad, trackball or mouse as pointing device users.
The interaction model for pointing device users is characterized by random access. Starting from a given point on a web page, a pointing device user can move the cursor from that point to any other visible point without concern for what lies between.

Non-sequential, "random access"
Move the pointer anywhere, any time

Achieving parity
Problems with "open submenu on hover"
The APG Disclosure Pattern

Menu Design Patterns
Menus have been part of software user interface design for a relatively long period of time and there is a bit of history and a few distinctions that are important for web developers to be aware of.
Menu | Menubar Pattern
The APG includes the pattern entitled Menu | Menubar, and the first section of its description, "About This Pattern," begins with this text: "A menu is a widget that offers a list of choices to the user, such as a set of actions or functions."
At the end of this opening section there is a link to the "Navigation Menubar Example." Near the beginning of this example, you encounter the following warning:
> CAUTION! Before considering use of the ARIA menubar pattern for site navigation, it is important to understand: The menubar pattern requires complex functionality that is unnecessary for typical site navigation that is styled to look like a menubar with expandable sections or fly outs. A pattern more suited for typical site navigation with expandable groups of links is the disclosure pattern. For an example, see Example Disclosure Navigation Menu.
Why the warning? Am I not supposed to use the Menu | Menubar pattern for my navigation menus? Let's try and break this down.
Because menus that offer a list of actions or functions are still being used on web pages for a variety of reasons (one example being an embedded application such as an HTML editor in a CMS), the ARIA specification must include the Menu | Menubar design pattern with examples illustrating all of the complex keyboard interactions it requires.
However, as the cautionary statement points out, "a pattern more suited for typical site navigation... is the disclosure pattern." Why is this?
Based on discussions within the ARIA APG that were described to me by a member of the group, my best explanation is as follows: (1) A link (a.k.a. an anchor) is one of the primary interactive elements, along with form controls, in HTML, the markup language used for web pages. (2) The default method for traversing interactive elements on a web page is to use the tab and shift-tab keys for moving forward and backward, respectively. (3) Website navigation menus at their lowest levels are hierarchical collections of links. (4) To move through this collection of links that we call a navigation menu, what better choice than to support tab and shift-tab? This is what users expect in order to traverse interactive HTML elements.
Widgets vs. HTML Interactive Elements
widgets are one tab stop in the document's tab sequence
navigation menus do not need to be widgets, being composed of (and only of) native HTML interactive elements
The quoted warning above ends with a recommendation: use the Disclosure Pattern. In the following subsections, we will look more deeply into this design pattern and how it can be used for navigation menus.
Disclosure Pattern
Paragraph

Disclosure Navigation Menu
Paragraph

Keyboard Enhancements
Paragraph

Implementation Details
Paragraph

HTML Markup
Paragraph

JavaScript and Event Handling
Paragraph

Working Example
Paragraph

Conclusions
We have examined in detail the user experience of keyboard-only users when interacting with navigation menus, and compared their experience with that of pointing device and touchscreen users. We have also learned how to assess whether the keyboard interaction model is coherent and complete. It is left up to you to judge whether or not these experiences and modalities are relatively similar, or at least as closely related as possible.
Regarding the technical implementation details of building accessible navigation menus, this article has shown how to build on a relatively simple standards-based foundation of HTML markup in order to add the behaviors that our interaction models call for.
Finally, by delving into the JavaScript code of the nav-menu-example on GitHub, some of the less obvious software development requirements for creating real-world navigation menus with nested submenus are unearthed and for these, possible solutions are proposed.