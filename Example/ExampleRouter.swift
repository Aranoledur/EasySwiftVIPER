//
//  ExampleRouter.swift
//  888ru
//
//  Created by Nikolay Ischuk on 01/11/2017.
//  Copyright © 2017 easyverzilla. All rights reserved.
//

import Foundation
import UIKit

final class ExampleRouter {

    typealias RootViewControllerType = UINavigationController

    typealias ParametersTuple = (ServiceOne?, ServiceTwo?, RootViewControllerType)

    private weak var rootViewController: RootViewControllerType?
    private weak var serviceOne: ServiceOne?
    private weak var serviceTwo: ServiceTwo?

    init(_ injection: ParametersTuple) {
        self.rootViewController = injection.2
        self.serviceOne = injection.0
        self.serviceTwo = injection.1
    }

    func show(module: AnyClass, setupClosure: (ParametersTuple) -> UIViewController) {

        guard let rootViewController = rootViewController else {
            return
        }

        let assembledView = setupClosure((serviceOne, serviceTwo, rootViewController)
        rootViewController.pushViewController(assembledView, animated: true)
    }

    func needClose(module: AnyClass) {
        rootViewController?.popViewController(animated: true)
    }
}
