# SwiftUI Navigation Lab

Date: 2026-08-26

Exploring NavigationStack with value-based routing.

## Key takeaways

- Use `NavigationStack(path: $path)` with a typed `[Route]` array.
- `navigationDestination(for:)` should be attached inside the stack, not on the destination view.
- Enum routes with associated values keep type safety.

## Code sketch

```swift
enum Route: Hashable {
    case detail(id: UUID)
    case settings
}

@State private var path: [Route] = []

NavigationStack(path: $path) {
    ContentView()
        .navigationDestination(for: Route.self) { route in
            switch route {
            case .detail(let id):
                DetailView(id: id)
            case .settings:
                SettingsView()
            }
        }
}
```

## Next steps

- Test deep linking with URL schemes.
- Compare with Flutter's Navigator 2.0 ergonomics.
