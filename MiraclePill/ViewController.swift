//
//  ViewController.swift
//  MiraclePill
//
//  Created by William Collier on 10/30/17.
//  Copyright © 2017 William Collier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var eFName: UITextField!
    @IBOutlet weak var mPillText: UILabel!
    @IBOutlet weak var sA: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var stateText: UILabel!
    @IBOutlet weak var eCity: UITextField!
    @IBOutlet weak var eSA: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var eCountry: UITextField!
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var eZipcode: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var success: UIButton!
    
    let states = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
       
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        statePicker.isHidden = true
        country.isHidden = true
        eCountry.isHidden = true
        zipcode.isHidden = true
        eZipcode.isHidden = true
        buyNowBtn.isHidden = true
        pillImage.isHidden = true
        divider.isHidden = true
        one.isHidden = true
        fName.isHidden = true
        eFName.isHidden = true
        mPillText.isHidden = true
        sA.isHidden = true
        eSA.isHidden = true
        city.isHidden = true
        eCity.isHidden = true
        stateText.isHidden = true
        statePickerBtn.isHidden = true
        success.isHidden = false
        
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        eCountry.isHidden = true
        zipcode.isHidden = true
        eZipcode.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        country.isHidden = false
        eCountry.isHidden = false
        zipcode.isHidden = false
        eZipcode.isHidden = false
    }
    
}

