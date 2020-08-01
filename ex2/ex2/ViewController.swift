//
//  ViewController.swift
//  ex2
//
//  Created by alok singh  on 25/07/20.
//  Copyright © 2020 alok singh . All rights reserved.
//

import UIKit
import Flutter
// Used to connect plugins (only if you have plugins with iOS platform code).
import FlutterPluginRegistrant

class ViewController: UIViewController {
    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    override func viewDidLoad() {
        super.viewDidLoad()
        //GeneratedPluginRegistrant.register(with: self.flutterEngine)
        // Do any additional setup after loading the view.
        
        // Make a button to call the showFlutter function when pressed.
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.setTitle("Show Flutter!", for: UIControl.State.normal)
        button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
        //GeneratedPluginRegistrant.register(with: self.flutterEngine)
    }
    @objc func showFlutter() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        GeneratedPluginRegistrant.register(with: flutterEngine)
        present(flutterViewController, animated: true, completion: nil)
//        present(flutterViewController, animated: true) {
//            GeneratedPluginRegistrant.register(with: flutterViewController)
//        }
    }


}

