## What I would like to convey

These are the main points that I want to explicate and make crystal clear:
  1.  That there is justifiable confusion re. how to build accessible navigation menus.
      * Software menus have been around much longer than the web, and there is baggage we have to deal with.
      * Navigation menus do not need to, and in fact should not, be built with the same behaviors as software application menus.
      * Understanding keyboard interaction models for navigation menus — knowing what keyboard-only users and screen reader users expect and want, in comparison to pointing device users.
      * Making assumptions about pointing device users regarding whether clicking is preferable to hovering, and the difference between hover and focus.
      * Prevalence of 'open on hover' menu buttons that lead to a less than optimal user experience for keyboard-only users.
      * APG design patterns — the labels are confusing and can be misleading, especially with respect to menu design patterns.
      * General confusion re. ARIA — How to use ARIA to ensure that information regarding what types of interactions can be expected (e.g. button role, aria-expanded state, aria-controls property) are conveyed to screen reader users.
  2.  That we should strive toward 'achieving equity' with respect to the user experience for users of all abilities.
      * Keyboard-only users should not be treated like second class citizens.
      * Likewise, pointing device users should not be treated as if they were the only users we care about.
  3.  That the APG can be useful if we know what the pitfalls are: what to avoid, what to ignore.
      * Don't build navigation menus based on the APG Menu | Menubar pattern.
      * Do use the Disclosure pattern and the Example Disclosure Navigation Menu.
      * Override terminology so that we can discuss and refer to our 'menu', 'menu buttons', and 'menu items' without reference to the corresponding ARIA roles.
  4.  How to build accessible navigation menus based on the APG Example Disclosure Navigation Menu.
      * Going beyond the example to build menus with real-world complexity.
      * Adding one or two simple keyboard enhancements borrowed from the APG Menu | Menubar pattern that bring us closer to 'achieving equity' with respect to UX.
