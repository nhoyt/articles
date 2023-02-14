# notes-03.md

## What I would like to convey

1. That there is justifiable confusion re. how to build accessible navigation menus:
    * Prevalence of 'open on hover' menu buttons that lead to a less than optimal user experience for keyboard-only users.
    * APG design patterns -- the labels are confusing and can be misleading.
    * Not taking into account the keyboard interaction model -- knowing what keyboard-only users and screen reader users expect and want.
    * General confusion re. ARIA -- How to use ARIA to ensure that information regarding what types of interactions can be expected (e.g. button role, aria-expanded state, aria-controls property) are conveyed to screen reader users.
2. That we should strive toward 'achieving equity' with respect to the user experience for users of all abilities:
    * Keyboard-only users should not be treated like second class citizens.
    * Likewise, pointing device users should not be treated as if they were the only users we care about.
3. That the APG can be useful if we know what the pitfalls are: what to avoid, what to ignore.
    * Don't build navigation menus based on the APG Menu | Menubar pattern.
    * Do use the Disclosure pattern and the Example Disclosure Navigation Menu.
    * Override terminology so that we can discuss and refer to our 'menu', 'menu buttons', and 'menu items' without reference to the corresponding ARIA roles.
4. How to build accessible navigation menus based on the APG Example Disclosure Navigation Menu:
    * Going beyond the example to build menus with real-world complexity.
    * Adding one or two simple keyboard enhancements borrowed from the APG Menu | Menubar pattern that bring us closer to 'achieving equity' with respect to UX.
