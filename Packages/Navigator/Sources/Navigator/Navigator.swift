// Created 8/7/22

import SwiftUI

public final class Navigator: ObservableObject {

    enum NavigatorError: Error {
        case destinationNotInNavigationPath
        case popToTop
    }

    @Published public var path = NavigationPath() {
        didSet {
            if path.count < oldValue.count {
                pathDestinations.removeLast(oldValue.count - path.count)
            }
        }
    }
    /// This must remain synchronized with `path`, in order to determine what `Destination`s are in the path.
    private(set) public var pathDestinations: [any Destination] = []

    // MARK: - Object Lifecycle

    public init() {}

    // MARK: - Navigation

    public func navigate(to destination: any Destination) {
        path.append(destination)
        pathDestinations.append(destination)
    }

    public func pop(count: Int = 1) {
        path.removeLast(count)
        pathDestinations.removeLast(count)
    }

    public func pop(to destination: any Destination) throws {
        guard let index = pathDestinations.lastIndex(where: { $0.rawValue == destination.rawValue }) else { throw NavigatorError.destinationNotInNavigationPath }
        let countToPop = pathDestinations.count - 1 - index
        guard countToPop > 0 else { throw NavigatorError.popToTop }

        pop(count: countToPop)
    }

}
