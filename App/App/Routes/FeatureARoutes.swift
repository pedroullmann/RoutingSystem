import FeatureA
import RoutingSystem
import SwiftUI

struct FeatureARoutes: Router {
    var modulePath: String = "/featureA"

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
            return AnyView(FeatureAView(routeService: RouteService()))
        }
    }
}
