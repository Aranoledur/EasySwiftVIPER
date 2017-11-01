//
//  ExamplePresenter.swift
//  888ru
//
//  Created by Nikolay Ischuk on 01/11/2017.
//  Copyright © 2017 easyverzilla. All rights reserved.
//

import Foundation

protocol ExamplePresenterOutput: class {

}

final class ExamplePresenter: ExampleViewOutput, ExampleInteractorOutput {

    weak var view: ExampleViewInput?
    var interactor: ExampleInteractorInput!
    var output: ExamplePresenterOutput!

    // MARK: - View output

    func viewIsReady() {

    }

    // MARK: - Interactor output
}
