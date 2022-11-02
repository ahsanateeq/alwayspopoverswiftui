# AlwaysPopoverSwiftUI
This library is used to show contents as a popover view on iPhone just like iPad and this library is supported for SwiftUI only.

## Installation
To install use swift package manager
URL:
`https://github.com/ahsanateeq/alwayspopoverswiftui.git`

## Usage

- First Import Libarary
`import AlwaysPopoverSwiftUI`

- Then use as modifier
```swift
    .alwaysPopover(isPresented: $showsAlwaysPopover) {
        Content() // Content for popover view
    }
```


## Extra

**Code Sample:**

```swift
    Button("Custom Always Popover") {
        showsAlwaysPopover = true
    }
    .alwaysPopover(isPresented: $showsAlwaysPopover) {
        PopoverContent()
    }
```
