Please see the attached sample project that demonstrates the issue. The project contains a simple demonstration of an app aiming for a two-pane appearance with a Sidebar, constructed using tagged NavigationLink and a common selections. The selection is set to the default view to be displayed.

1. Run this project on an iPad in Portrait mode.

Expected behavior: The “Planes” view should have been displayed.
Actual behavior: The “Placeholder” is displayed rather than the “default” view.

2. Tap the “< Back” button

Expected behavior: The sidebar should appear on the left
Actual behavior: the view is immediately swapped for the “Planes” view and the sidebar does not appear.

I’ve included a video from the simulator of the behavior.

For comparison:
- iPad in Landscape mode shows the expected behavior, “Planes” view is on the right
- iPhone/iPod opens to the “Planes” view with the “sidebar” accessible by tapping “< Back”
- macOS shows the sidebar on the left of the window with “Planes” on the right
