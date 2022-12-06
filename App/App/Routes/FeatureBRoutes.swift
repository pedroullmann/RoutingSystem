import FeatureB
import RoutingSystem
import SwiftUI

struct FeatureBRoutes: Router {
    var modulePath: String = "/featureB"

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
            return AnyView(FeatureBView())
        }
    }
}
