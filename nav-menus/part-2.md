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
