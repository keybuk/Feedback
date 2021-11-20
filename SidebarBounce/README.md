Please see the attached sample project that demonstrates the issue.

The project is similar to FB9182070, but slightly different. It contains a simple demonstration of an app aiming for a THREE-pane appearance with Sidebar on macOS, and an iPad experience where two panes are visible with a Sidebar accessible by swiping from the left.

It’s constructed using tagged NavigationLink and a common selection. The selection is set to the default view to be displayed.

1. Run this project on an iPhone.

Expected behavior: The “Planes” view should have been displayed.
Actual behavior: The “Placeholder” is displayed rather than the “default” view.
Note: in FB9182070, with only two views in NV, this worked on iPhone and “Planes” was shown - adding a third child broke it, thus the different feedback

2. Tap the “< Back” button

Expected behavior: The navigation stack should be popped to the “sidebar”
Actual behavior: the sidebar appears, but then the stack has the “Planes” view it should have shown in #1 pushed and animated in, and then popped back off again

While this bounce is enthusiastic, it’s not the desired user experience ;-)

I’ve included a video from the simulator of the behavior.

For comparison:
- iPad in Portrait mode shows the detail view first (okay), when “< Back” is pressed incorrectly shows “Placeholder”, and when “< Back” is pressed again, shows the Sidebar and replaces “Placeholder” with “Planes” - this is similar enough to FB9182070 to not warrant a new feedback - though it’s incorrect behavior
- iPad in Landscape mode (which worked in FB9182070 ) now shows the incorrect “Placeholder” view on the left, with “Detail” on the right. Swiping in the sidebar swaps that out for “Planes” but there’s no unruly bouncing - still incorrect behavior
- macOS shows the sidebar on the left of the window, with “Planes” in the middle, and “Detail” on the right
