//
//  ViewController.swift
//  Test-InApp-Screenshot
//
//  Created by Apiphoom Chuenchompoo on 13/7/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func screenShot(_ sender: Any) {
        let renderer = UIGraphicsImageRenderer(bounds: view.bounds)
        let screenshot = renderer.image { context in
            view.layer.render(in: context.cgContext)
        }
        // Do something with the screenshot
        // For example, save it to the photo library
        UIImageWriteToSavedPhotosAlbum(screenshot, nil, nil, nil)
        presentScreenshotAlert()
    }
    
    func presentScreenshotAlert() {
         let alert = UIAlertController(title: "Screenshot Captured", message: "The screenshot has been saved to your Photos album.", preferredStyle: .alert)
         let okAction = UIAlertAction(title: "OK", style: .default)
         alert.addAction(okAction)
         self.present(alert, animated: true)
     }

}

