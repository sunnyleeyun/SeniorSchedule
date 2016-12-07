//
//  SecondViewController.swift
//  SeniorSchedule
//
//  Created by Sunny on 2016/8/28.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate {
    
    var subjects = ["國文","英文","數學","地理","歷史","公民","物理","化學","地科","生物","術科","其他"]
    @IBOutlet weak var subjectText: UITextField!
    
    @IBOutlet weak var typeClass: UISegmentedControl!
    @IBOutlet weak var typePractice: UISegmentedControl!
    @IBOutlet weak var typeRange: UISegmentedControl!
    
    
    @IBOutlet weak var time1: UITextField!
    @IBOutlet weak var time2: UITextField!
    @IBOutlet weak var range1: UITextField!
    @IBOutlet weak var range2: UITextField!
//    let timeToTime = "~"
//    let rangeToRange = "~"
    
    
    
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelPractice: UILabel!
    @IBOutlet weak var labelRange: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var firstVC: FirstViewController = segue.destination as! FirstViewController
        
    }
    
    
    
    
    
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView!) -> UIView
    {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.black
        pickerLabel.text = subjects[row]
        pickerLabel.font = UIFont(name: pickerLabel.font.fontName, size: 15)
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return subjects.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return subjects[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        subjectText.text = subjects[row]
    }
    
    @IBAction func typeClass(_ sender: AnyObject) {
        if typeClass.selectedSegmentIndex == 0 {
            labelType.text = "補習"
        }else if typeClass.selectedSegmentIndex == 1 {
            labelType.text = "進度"
        }else if typeClass.selectedSegmentIndex == 2 {
            labelType.text = "複習"
        }
    }
    
    @IBAction func typePractice(_ sender: AnyObject) {
        if typePractice.selectedSegmentIndex == 0{
            labelPractice.text = "考卷"
        }else if typePractice.selectedSegmentIndex == 1{
            labelPractice.text = "習作"
        }else if typePractice.selectedSegmentIndex == 2{
            labelPractice.text = "課本"
        }else if typePractice.selectedSegmentIndex == 3{
            labelPractice.text = "參考書"
        }else if typePractice.selectedSegmentIndex == 4{
            labelPractice.text = "歷屆"
        }else{
            labelPractice.isHidden = true
        }
    }
   
    @IBAction func typeRange(_ sender: AnyObject) {
        if typeRange.selectedSegmentIndex == 0{
            labelRange.text = "頁"
        }else if typeRange.selectedSegmentIndex == 1{
            labelRange.text = "課"
        }else if typeRange.selectedSegmentIndex == 2{
            labelRange.text = "章"
        }else if typeRange.selectedSegmentIndex == 3{
            labelRange.text = "冊"
        }else{
            labelRange.isHidden = true
        }
    }
    
    
    
    @IBAction func confirm(_ sender: AnyObject) {
        
        
    }
    
    

}
