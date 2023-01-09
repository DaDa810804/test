//
//  ViewController.swift
//  saveTest
//
//  Created by 蔡顯達 on 2022/10/14.
//

import UIKit
import CoreData

let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
class ViewController: UIViewController{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var nameinput: UITextField!
    @IBOutlet weak var numberinput: UITextField!
    
    @IBOutlet weak var secrchinput: UITextField!
    
    
    @IBAction func savebutton(_ sender: Any) {
        let dataInfo = NSEntityDescription.insertNewObject(forEntityName: "TestOnSave", into: context) as! TestOnSave
        if let inputNum = numberinput.text {
            dataInfo.number = inputNum
        }
        if let inputName = nameinput.text {
            dataInfo.name = inputName
        }
        do{
            try context.save()
        }catch {
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func secrchButton(_ sender: Any) {
        let dataInfo = NSEntityDescription.insertNewObject(forEntityName: "TestOnSave", into: context) as! TestOnSave
        let fer : NSFetchRequest<TestOnSave> = TestOnSave.fetchRequest()
        }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

