# Dynamic Form

A proof of concept demo project on how to build a dynamic form using JSON and [SwiftUI](https://developer.apple.com/xcode/swiftui/).

## Components

The components are only intended to work in a vertical list similar to UIKits `UITableView`.
Below you'll find the current components and their completion state:

- [ ] TextField row
- [ ] URLImage row
- [ ] Button row 

### TextField row

- [x] Text from JSON response
- [x] Placeholder text from JSON response
- [x] Background color
- [x] Textcolor
- [ ] Placeholder textcolor _(currently no API for this yet, see this [StackOverflow post](https://stackoverflow.com/questions/57688242/swiftui-how-to-change-the-placeholder-color-of-the-textfield))_
- [x] Corner radius
- [ ] Text alignment
- [ ] Custom fonts

### URLImage row

- [x] Load image from URL
- [x] Default fallback image
- [ ] Caching loaded images from network
- [ ] Loading indicator/loading image
- [ ] Support multiple aspect ratios
	- Right now only 16:9 works "good"

### Button row

- [x] Text from JSON response
- [x] Background color
- [x] Textcolor
- [x] Corner radius
- [ ] Custom fonts