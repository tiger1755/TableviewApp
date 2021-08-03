//
//  ViewController.swift
//  TableviewApp
//
//  Created by MasayaFujioka on 2021/08/03.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    
    
    

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var tableview: UITableView!
    
    var datas_Array = [String]()
    var send_Data = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        textfield.delegate = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func button(_ sender: Any) {
        
        datas_Array.append(textfield.text!)
        textfield.text = ""
        tableview.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas_Array.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableview.frame.height / 8
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = datas_Array[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        send_Data = datas_Array[indexPath.row]
            performSegue(withIdentifier: "next", sender: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.datas = send_Data
    }
    
    
    
    
    
//    キーボードを閉じる処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textfield.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }

}

