Please see the sample application attached to this bug.

It builds a two-pane app with a Sidebar using the same approach given at the WWDC code-along, where the Sidebar uses a List with a binding to a selection that is also shared by the DetailView.

This works great on macOS!

1. Run the app on the iPad simulator in landscape; the app opens with the sidebar on the left, and the detail view on the right
2. Tap any item in the Sidebar on the left

Expected results: detail view on the right changes
Actual results: nothing happens

3. Try using the keyboard arrow keys instead, note that the list selection actually moves with the keyboard, just like on macOS

Expected results: detail view on the right changes
Actual results: nothing happens

iPhone is even worse, it opens to the sidebar, but you can’t tap anything. Maybe expecting this to work on iPhone is a stretch since there’s no “push” to the navigation view here, but it would be nice if the same SwiftUI code worked across all three platforms? :-)
