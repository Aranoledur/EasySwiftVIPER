//
//  ExampleInteractor.swift
//  888ru
//
//  Created by Nikolay Ischuk on 01/11/2017.
//  Copyright © 2017 easyverzilla. All rights reserved.
//

import Foundation

protocol ExampleInteractorInput {

}

protocol ExampleInteractorOutput: class {

}

final class ExampleInteractor: ExampleInteractorInput {

    weak var output: ExampleInteractorOutput?

    // MARK: - Input
}
