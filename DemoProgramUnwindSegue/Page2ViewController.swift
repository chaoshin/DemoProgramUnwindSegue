//
//  Page2ViewController.swift
//  DemoProgramUnwindSegue
//
//  Created by Chao Shin on 2018/4/28.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func backButtonPress(_ sender: Any) {
        if inputTextField.text != "" {  // 判斷使用者是否有輸入
            performSegue(withIdentifier: "backToPage1", sender: nil)
        }else {
            showAlertMessage(title: "Sorry", message: "一定要輸入")
        }
    }
    
    func showAlertMessage(title: String, message: String) {
        let inputErrorAlert = UIAlertController(title: title, message: message, preferredStyle: .alert) //產生AlertController
        let okAction = UIAlertAction(title: "確認", style: .default, handler: nil) // 產生確認按鍵
        inputErrorAlert.addAction(okAction) // 將確認按鍵加入AlertController
        self.present(inputErrorAlert, animated: true, completion: nil) // 顯示Alert
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
