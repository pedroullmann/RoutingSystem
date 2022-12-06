import SwiftUI

@main
struct MainApp: App {
    private let routingSystem = RouteService()

    var body: some Scene {
        WindowGroup {
            routingSystem.getRoute(
                path: "/featureA/home",
                context: nil
            )
        }
    }
}
