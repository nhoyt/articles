Title: Navigation Menus 01  
Author:

Building Accessible Navigation Menus
by M. Nicholas Hoyt
Nov. 22, 2022

Introduction
What are the necessary features that an accessible website navigation menu system must have? And what are the best practices for building such a menu system?
This article will attempt to answer those questions based on design patterns found in the ARIA Authoring Practices Guide (APG) website. In particular, the main pattern we will make use of is the Disclosure Pattern, along with an APG example that utilizes this pattern, i.e. the Disclosure Navigation Menu Example.
To a far lesser extent, we will borrow a couple of features from the Menu/Menubar pattern. It is important to note, however, that we are not following the Menu/Menubar pattern to build a navigation menu, and we will further explore the reasons for this a bit later.
In addition to providing technical details, this article will attempt to describe the various user experiences of interacting with navigation menus depending on the primary device used for those interactions. It will emphasize the experience that keyboard-only users have come to expect, and compare this to the "random access" experience with which pointing device users are familiar.
We will explore in detail the accessibility guidelines that come into play when using the design patterns we have selected, based on the APG recommendations, for building website navigation menus. This article will also provide additional guidance for building navigation menus with nested submenus, with a working example that goes beyond the Disclosure Navigation Menu Example currently found on the APG website.
This article is written for two types of readers: (1) designers of accessible websites and other non-technical professionals who evaluate web resources for accessibility, and (2) accessibility-minded developers who build websites that include navigation menus.
Designers and other non-technical professionals may wish to skip some of the technical details herein. Armed only with an understanding of the behaviors that comprise the overall user experience that keyboard-only users expect, and are therefore necessary for accessibility, along with principles involved with achieving parity with other types of user experiences, non-technical readers should be able to assess whether or not a given navigation menu is accessible.

Resources
The information in this article is drawn from the following online resources:
	•	WCAG 2.1
	•	ARIA Authoring Practices Guide (APG)
	•	APG Disclosure Pattern
	•	APG Disclosure Navigation Menu Example
	•	APG Menu or Menubar Pattern

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

Accessibility Guidelines
Paragraph

Concepts and Terminology
Paragraph

Basic Guidelines
Use the "click" event with the disclosure pattern. Button elements handle this event by default, but other elements with "role=button" will need to add an event listener specifically for this event.

Design Patterns
Paragraph

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