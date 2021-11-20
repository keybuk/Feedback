Please see the attached sample project that demonstrates the issue.

The above message is printed on console, and the pushing of the navigation view is unreliable (e.g. simulator it gets stuck halfway sometimes)

The project is an app aiming for a two-pane navigation appearance with a Sidebar constructed from a List of tagged NavigationLink, one of which is set as the default.

The message appears due to the use of Section { } in the sidebar.

1. Run this project on an iPhone.

Expected behavior: working
Actual behavior: “SwiftUI encountered an issue when pushing aNavigationLink. Please file a bug.” printed on console
