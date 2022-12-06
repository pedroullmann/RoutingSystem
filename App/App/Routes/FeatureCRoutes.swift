import FeatureC
import RoutingSystem
import SwiftUI

struct FeatureCRoutes: Router {
    var modulePath: String = "/featureC"

    enum Paths: String, CaseIterable {
        case home = "/home"
    }

    func getRoute(
        path: String,
        context: Any?
    ) -> AnyView {
        guard let path = Paths(rawValue: path) else {
            fatalError("Path not found!")
        }
        switch path {
        case .home:
            return AnyView(FeatureCView())
        }
    }
}
