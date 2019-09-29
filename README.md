# Dynamic Form

A repository trying to figure out some SwiftUI stuff, like building a dynamic form.

## Setup

### ViewModel

The ViewModel is built up out of:

	- ItemModel
	- SectionModel
	- RegisterViewModel

#### ItemModel

```swift
struct ItemModel: Identifiable {
    public let id = UUID()
    public let placeholder: String
    public var value: String = ""
    
    init(placeholder: String) {
        self.placeholder = placeholder
    }
}
```

### SectionModel

```swift
struct SectionModel: Identifiable {
    public let id = UUID()
    public let title: String
    public let items: [ItemModel]
    
    init(title: String, items: [ItemModel]) {
        self.title = title
        self.items = items
    }
}

```

### RegisterViewModdel

```swift
class RegisterViewModel: ObservableObject {
    public let navigationTitle: String
    public let sections: [SectionModel]
    
    init() {
        self.navigationTitle = "Register"
        var sections: [SectionModel] = []
        let domainCell: ItemModel = ItemModel(placeholder: "Domain")
        let domainSection: SectionModel = SectionModel(title: "Server Information", items: [domainCell])
        sections.append(domainSection)
        
        let usernameCell: ItemModel = ItemModel(placeholder: "Username")
        let firstNameCell: ItemModel = ItemModel(placeholder: "Firstname")
        let lastNameCell: ItemModel = ItemModel(placeholder: "Lastname")
        let emailCell: ItemModel = ItemModel(placeholder: "Email address")
        let personalSection: SectionModel = SectionModel(title: "Personal Information", items: [usernameCell, firstNameCell, lastNameCell, emailCell])
        sections.append(personalSection)
        
        let passwordCell = ItemModel(placeholder: "Password")
        let confirmPassword: ItemModel = ItemModel(placeholder: "Confirm password")
        let passwordSection: SectionModel = SectionModel(title: "Password", items: [passwordCell, confirmPassword])
        sections.append(passwordSection)
        self.sections = sections
    }
}
```

## The SwiftUI view

- The `RegisterView` is instansiated with a `RegisterViewModel`. 
- It has a `NavigationView` with a `Form` inside of it.
- We then iterate through each `SectionModel` in `viewModel.sections` making a new SwiftUI `Section` view
- We then iterate through each `ItemModel` in `section.items` make a new SwiftUI `TextField` view

However the project does not compile due to the: `Type of expression is ambiguous without more context` error.

```swift
public struct RegisterView: View {
    @ObservedObject var viewModel: RegisterViewModel
    
    public var body: some View {
        NavigationView {
            Form {
                ForEach(viewModel.sections) { section in
                    SectionModel(header: Text(section.title)) { // Type of expression is ambiguous without more context
                        ForEach(section.items) { item in
                            TextField(item.placeholder, text: item.value)
                            .font(.body)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(viewModel.navigationBarTitle)
        .navigationBarHidden(false)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let viewModel = RegisterViewModel()
    
    static var previews: some View {
        RegisterView(viewModel: viewModel)
    }
}
```

Changing from `ForEach()` to `for foo in bar`:

```swift
Form {
    for section in viewModel.sections {
        Section(header: Text(section.title)) {
            for item in section.items {
                TextField(item.placeholder, text: item.value)
                .font(.body)
            }
        }
    }
}
```
Results in the following error: `Closure containing control flow statement cannot be used with function builder 'ViewBuilder'`.

## URLs related to my issue

### StackOverflow

- [How to have a dynamic List of Views using SwiftUI](https://stackoverflow.com/questions/56645647/how-to-have-a-dynamic-list-of-views-using-swiftui)
- [SwiftUI dynamic List with Sections does not Layout correctly](https://stackoverflow.com/questions/56690310/swiftui-dynamic-list-with-sections-does-not-layout-correctly)
