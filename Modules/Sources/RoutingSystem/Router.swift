import SwiftUI

public protocol Router {
    associatedtype Paths: RawRepresentable where Paths.RawValue == String
    var modulePath: String { get }

    func getRoute(
        path: String,
        context: Any?
    ) -> AnyView
}
