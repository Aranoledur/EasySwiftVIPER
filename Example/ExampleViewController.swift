//
//  ExampleViewController.swift
//  888ru
//
//  Created by Nikolay Ischuk on 01/11/2017.
//  Copyright © 2017 easyverzilla. All rights reserved.
//

import UIKit

protocol ExampleViewInput: class {

}

protocol ExampleViewOutput {
	func viewIsReady()
}

final class ExampleViewController: ViewController, ExampleViewInput {

    var output: ExampleViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }

    // MARK: - Input
}
