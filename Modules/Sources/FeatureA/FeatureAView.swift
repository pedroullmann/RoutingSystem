import RoutingSystem
import SwiftUI

public struct FeatureAView: View {
    private let routeService: RouterProvider

    public init(routeService: RouterProvider) {
        self.routeService = routeService
    }

    public var body: some View {
        routeService.getRoute(
            path: "featureB/home",
            context: nil
        )
    }
}
