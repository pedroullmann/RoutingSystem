import Dependencies
import RoutingSystem
import SwiftUI

struct RouteService: RouterProvider {
    var routes: [any Router] {
        [
            FeatureARoutes(),
            FeatureBRoutes(),
            FeatureCRoutes()
        ]
    }

    func getRoute(
        path: String,
        context: Any?
    ) -> AnyView {
        var route = path.split(separator: "/")
        print(route)
        guard let modulePath = route.first else {
            fatalError("Wrong path!")
        }
        guard let module = routes.first(where: { $0.modulePath == "/\(modulePath)" }) else {
            fatalError("Module not found!")
        }
        route.removeFirst()
        guard let path = route.first else {
            fatalError("Path not found!")
        }
        return module.getRoute(
            path: "/\(path)",
            context: context
        )
    }
}

extension RouteService: DependencyKey {
    public static var liveValue: RouterProvider {
        RouteService()
    }
}
