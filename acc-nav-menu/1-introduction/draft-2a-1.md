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
