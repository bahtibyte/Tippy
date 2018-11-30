//
//  ViewController.swift
//  Tippy
//
//  Created by Bahtiyor Rasulov on 11/27/18.
//  Copyright © 2018 Bahti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label_current_bill: UILabel!
    @IBOutlet weak var label_tip_amount: UILabel!
    @IBOutlet weak var label_total_bill: UILabel!
    @IBOutlet weak var input_slider: UISlider!
    @IBOutlet weak var label_tip: UILabel!
    @IBOutlet weak var input_bill: UISegmentedControl!
    
    var total = 0
    var shared = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update();
    }
    @IBAction func input_bill_share(_ sender: Any) {
        
        shared = input_bill.selectedSegmentIndex + 1
        update();
    }
    
    func update(){
        label_current_bill.text = "$"+String(total)
        let tip_percent = Int(input_slider.value)
        var tip = Int(Double(total) * (Double(tip_percent) / 100.0));
        
        tip = tip / shared;
        
        var total_bill = (total / shared) + tip;
        
        label_tip_amount.text = "$"+String(tip);
        label_total_bill.text = "$"+String(total_bill);
    }
    
    @IBAction func input_slider_value_change(_ sender: Any) {
        label_tip.text = "Tip: "+String(Int(input_slider.value))+"%"
        update()
    }
    
    @IBAction func input_0(_ sender: Any) {
        total = total * 10;
        update();
    }
    @IBAction func input_1(_ sender: Any) {
        if (total == 0){
            total = 1
        }else{
            total = (total * 10) + 1;
        }
        update();
    }
    @IBAction func input_2(_ sender: Any) {
        if (total == 0){
            total = 2
        }else{
            total = (total * 10) + 2;
        }
        update();
    }
    @IBAction func input_3(_ sender: Any) {
        if (total == 0){
            total = 3
        }else{
            total = (total * 10) + 3;
        }
        update();
    }
    @IBAction func input_4(_ sender: Any) {
        if (total == 0){
            total = 4
        }else{
            total = (total * 10) + 4;
        }
        update();
    }
    @IBAction func input_5(_ sender: Any) {
        if (total == 0){
            total = 5
        }else{
            total = (total * 10) + 5;
        }
        update();
    }
    @IBAction func input_6(_ sender: Any) {
        if (total == 0){
            total = 6
        }else{
            total = (total * 10) + 6;
        }
        update();
    }
    @IBAction func input_7(_ sender: Any) {
        if (total == 0){
            total = 7
        }else{
            total = (total * 10) + 7;
        }
        update();
    }
    @IBAction func input_8(_ sender: Any) {
        if (total == 0){
            total = 8
        }else{
            total = (total * 10) + 8;
        }
        update();
    }
    @IBAction func input_9(_ sender: Any) {
        if (total == 0){
            total = 9
        }else{
            total = (total * 10) + 9;
        }
        update();
    }
    @IBAction func input_backspace(_ sender: Any) {
        if (total < 10){
            total = 0
        }else{
            total = total / 10;
        }
        update();
    }
    @IBAction func input_clear(_ sender: Any) {
        total = 0;
        update();
    }
}

