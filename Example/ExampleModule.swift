//
//  ExampleModule.swift
//  888ru
//
//  Created by Nikolay Ischuk on 01/11/2017.
//  Copyright © 2017 easyverzilla. All rights reserved.
//

import UIKit
import SwarmClient

protocol ExampleModuleOutput: class {

}

final class ExampleModule: ExamplePresenterOutput {

    let storyboard = UIStoryboard(name: "Example", bundle: nil)

    weak var output: ExampleModuleOutput?

    var router: ExampleRouter?

    init(router: ExampleRouter?) {
        self.router = router
    }

    //Store weak pointers to embeded and pushed modules.

    func assembly(with authenticator: Authenticator?, swarmClient: SwarmClient?) -> UIViewController {

        guard let view = storyboard.instantiateInitialViewController() as? ExampleViewController else {
            assert(false)
            return UIViewController()
        }
        let presenter = ExamplePresenter()
        let interactor = ExampleInteractor()

        view.output = presenter
        interactor.output = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.output = self

        return view
    }

    // MARK: - ExamplePresenterOutput
}
