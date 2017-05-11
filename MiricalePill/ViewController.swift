//
//  ViewController.swift
//  MiricalePill
//
//  Created by neil mallory on 09/05/2017.
//  Copyright © 2017 neil mallory. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var countryTextbox: UITextField!
    @IBOutlet weak var zipCodeTextbox: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var pillImageView: UIImageView!
    @IBOutlet weak var mircalePillsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextbox: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var successImageView: UIImageView!
   
    let states = ["Alaska", "California", "Colorado", "Michigan", "New York", "Ohio", "Texas"]
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        
        // hide country, zip code, buy Now
        countryLabel.isHidden = true
        countryTextbox.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextbox.isHidden = true
        buyNowButton.isHidden = true
        
        // reveal the state picker
        statePicker.isHidden = false
    }
    
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        
        // clear the screen by hiding everything
        pillImageView.isHidden = true
        mircalePillsLabel.isHidden = true
        priceLabel.isHidden = true
        dividerView.isHidden = true
        nameLabel.isHidden = true
        nameTextbox.isHidden = true
        streetLabel.isHidden = true
        streetTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        statePickerButton.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTextbox.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextbox.isHidden = true
        buyNowButton.isHidden = true
        
        // reveal the success image
        successImageView.isHidden = false
        
    }
    

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
        
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        
        // hide state picker
        statePicker.isHidden = true
        
        // unhide  country, zip code, buynow
        countryLabel.isHidden = false
        countryTextbox.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextbox.isHidden = false
        buyNowButton.isHidden = false
    }
}


