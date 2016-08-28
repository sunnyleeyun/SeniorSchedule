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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView
        
    {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.blackColor()
        pickerLabel.text = subjects[row]
        pickerLabel.font = UIFont(name: pickerLabel.font.fontName, size: 15)
        pickerLabel.textAlignment = NSTextAlignment.Center
        return pickerLabel
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return subjects.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return subjects[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        subjectText.text = subjects[row]
    }

}