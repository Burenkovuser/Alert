//
//  ViewController.swift
//  Alert
//
//  Created by Vasilii on 17/06/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var HiLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: Any) {
    //в наш лейбл вызваем текст
    self.HiLabel.text = "Hi,"
    self.alert(title: "Внимание", message: "Введите Ваше имя", style: .alert)
        
        //let alertController = UIAlertController(title: "Error", message: "Ahtun", preferredStyle: .actionSheet)
        //создаем кнопку
        //let action = UIAlertAction(title: "OK", style: .default) { (action) in
            // при нажатии на кнопку будет выводится текст (first первый элемент)
            //let text = alertController.textFields?.first?.text
            //print(text ?? "nil")
            
      //  }
        //добавлем текстовое поле
       // alertController.addTextField(configurationHandler: nil)
        
        //вызываем контроллер и вызываем в нем кнопку
        //alertController.addAction(action)
        //метод презентации, который вызовет сообщение
       // self.present(alertController, animated: true, completion:
       //     nil)
        
    }
    
    //2
    func alert (title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        //создаем кнопку
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
        let mytext = alertController.textFields?.first
        self.HiLabel.text! += (mytext?.text!)! + ("!")
        }
        //создаем текстовое поле
        alertController.addTextField { (textField) in
            textField.isSecureTextEntry = true // вводим скрыты текст
        }
        
        //вызываем контроллер и вызываем в нем кнопку
        alertController.addAction(action)
        //метод презентации, который вызовет сообщение
        self.present(alertController, animated: true, completion:
            nil)
    }
   
}


