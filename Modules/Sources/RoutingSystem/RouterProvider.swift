import Dependencies
import SwiftUI

public protocol RouterProvider {
    var routes: [any Router] { get }

    func getRoute(
        path: String,
        context: Any?
    ) -> AnyView
}

public struct EmptyContext {
    public init() {}
}

public struct RouterProviderDummy: RouterProvider {
    public var routes: [any Router] = []
    public func getRoute<Context>(path: String, context: Context?) -> AnyView {
        return AnyView(EmptyView())
    }
}
