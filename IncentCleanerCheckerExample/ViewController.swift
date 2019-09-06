//
//  AppDelegate.swift
//  ViewController
//
//  Created by Appbooster on 03/09/2019.
//  Copyright © 2019 Appbooster. All rights reserved.
//

import UIKit
import IncentCleanerChecker

class ViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet private weak var textField: UITextField!
  @IBOutlet private weak var textView: UITextView!

  // MARK: UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()

    Listener.shared()?.start { [weak self] text in
      text.map({ self?.log($0 + "\n") })
    }
  }

  // MARK: UITextFieldDelegate

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()

    return true
  }

  // MARK: Actions

  @IBAction
  private func open() {
    guard let bundleId = textField.text else { return }

    log("Trying to open the app with bundle id \"\(bundleId)\"")

    if let opened = Opener.shared()?.openApp(withBundleId: bundleId), opened {
      log("The app is opened.")
    } else {
      log("Could not find the app.")
    }
  }

  // MARK: Others

  private func log(_ text: String) {
    textView.text += text + "\n"
  }

}
