//
//  ViewController.swift
//  webContent
//
//  Created by Filip on 05.06.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func goButton(_ sender: Any) {
        
    if let userURL = textField.text{
            
       let url = URL(string: userURL)
            
            webView.loadRequest(URLRequest(url: url!))
            
        } else {
            
          print("Error")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let url = URL(string: "https://www.stackoverflow.com")!
        webView.loadRequest(URLRequest(url: url))
        */
        
        /*
        if let url = URL(string: "https://www.stackoverflow.com") {
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {data, response, error in
                
                if error != nil {
                    
                    print(error!)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString!)
                        
                    }
                    
                }
            }
            task.resume()
            
        
        }
        */
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
}

