//
//  ViewController.swift
//  MessagingDemo
//
//  Created by Kerr Marin Miller on 3/7/23.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    @IBAction func presentMessagingController() {
        let controller = MFMessageComposeViewController()
        self.present(controller, animated: true)
    }
}

extension ViewController: MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true)
    }
}
