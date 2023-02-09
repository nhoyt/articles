# Notes

WAI-ARIA, which stands for Web Accessibility Initiative - Accessible Rich Internet Applications, is a W3C standard that specifies, among other things, accessibility best practices for highly interactive components on web pages, aka widgets. Many of these best practices are encoded in what are called design patterns, which can be found on the recently redesigned ARIA Authoring Practices Guide (APG) website.

Because ARIA is concerned first and foremost with how to ensure that rich internet applications are accessible, one of the design patterns you will encounter in the APG is the Menu or Menubar pattern. This pattern is used to create the menu widget, which is characterized by complex functionality that you may be familiar with on Windows or macOS applications.

The purpose of this article is not to delve into that complex functionality that is associated with the ARIA 'menu', 'menubutton' and 'menuitem' roles. On the contrary, if you are building navigation menus for websites, this article was written to explain why you *SHOULD NOT* use the APG Menu | Menubar pattern, and instead use the APG Example Disclosure Navigation Menu (which utilizes the ultra-simple APG Disclosure pattern), as your guide. The good news is that menus based on the APG Disclosure pattern are simpler and more straightforward to implement.
