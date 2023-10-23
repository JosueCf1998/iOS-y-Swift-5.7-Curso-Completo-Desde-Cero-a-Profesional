//
//  ViewController.swift
//  ConstrolsAndTextViews
//
//  Created by josue on 17/10/23.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControls: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myStepperLabel: UILabel!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    
    
    // Variables
    private let myPickerViewValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Buttons
        myButton.setTitle("Mi Botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        //Pickers
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myPickerView.isHidden = true
        
        //PageControls
        myPageControls.numberOfPages = myPickerViewValues.count
        myPageControls.currentPageIndicatorTintColor = .blue
        myPageControls.pageIndicatorTintColor = .lightGray
        
        //Segmented Controls
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        //Slider
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 1
        
        //Stepper
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
        
        //Switch
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        //Progress Indicator
        myProgressView.progress = 0
        
        myActivityIndicator.color = .orange
        myActivityIndicator.startAnimating()
        myActivityIndicator.hidesWhenStopped = true
        
        //Labels
        myStepperLabel.textColor = .darkGray
        myStepperLabel.font = UIFont.boldSystemFont(ofSize: 26)
        myStepperLabel.text = "1"
        
        mySwitchLabel.text = "Está Apagado"
        
        //TextField
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe Algo"
        myTextField.delegate = self
        
        //TextView
        myTextView.textColor = .brown
        myTextView.delegate = self
    }
    
    //Actions
    @IBAction func myButtonAction(_ sender: Any) {
        
        if  myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        }else {
            myButton.backgroundColor = .blue
        }
        
        myTextView.resignFirstResponder()
    }
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControls.currentPage, inComponent: 0, animated: true)
        
        let myString = myPickerViewValues[myPageControls.currentPage]
        myButton.setTitle(myString, for: .normal)
        
        mySegmentedControl.selectedSegmentIndex = myPageControls.currentPage
        
        mySlider.value = Float(myPageControls.currentPage + 1)
    }
    @IBAction func mySegmentedControlAction(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        
        myPageControls.currentPage = mySegmentedControl.selectedSegmentIndex
        
        mySlider.value = Float(mySegmentedControl.selectedSegmentIndex + 1)
    }
    @IBAction func mySliderAction(_ sender: Any) {
        var progress:Float = 0
        
        //OTHER CASE
//        let value =  Int(mySlider.value) - 1
//        mySegmentedControl.selectedSegmentIndex = value
//        
//        myPickerView.selectRow(value, inComponent: 0, animated: true)
//        
//        let myString = myPickerViewValues[value]
//        myButton.setTitle(myString, for: .normal)
//        
//        myPageControls.currentPage = value
        
        //OTHER CASE
        switch mySlider.value {
        case 1..<2:
            mySegmentedControl.selectedSegmentIndex = 0
            progress = 0.2
        case 2..<3:
            mySegmentedControl.selectedSegmentIndex =  1
            progress = 0.4
        case 3..<4:
            mySegmentedControl.selectedSegmentIndex =  2
            progress = 0.6
        case 4..<5:
            mySegmentedControl.selectedSegmentIndex =  3
            progress = 0.8
        default:
            mySegmentedControl.selectedSegmentIndex =  4
            progress = 1
        }
        
        
        myProgressView.progress = progress
    }
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value
        mySlider.value = Float(value)
        
        myStepperLabel.text = "\(value)"
    }
    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn {
            myPickerView.isHidden = false
            myActivityIndicator.stopAnimating()
            
            mySwitchLabel.text = "Está Encendido"
        }else {
            myPickerView.isHidden = true
            myActivityIndicator.startAnimating()
            
            mySwitchLabel.text = "Está Apagado"
        }
    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)
        
        myPageControls.currentPage = row
        
        mySegmentedControl.selectedSegmentIndex = row
        
        mySlider.value = Float(row + 1)
    }
    
}

//UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
}

//UITextViewDelegate
extension ViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        myTextField.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        myTextField.isHidden = false
    }
}
