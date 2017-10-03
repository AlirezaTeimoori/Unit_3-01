//Created by: Alireza Teimoori
//Created on: 3 Oct 2017
//Created for: ICS3UR-1
//Lesson: Unit 3-01
//This program is to learn if statments 
//The code shows "you won!"if the user's entry is 5


import UIKit
// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var NumberTextField : UITextField!
    var CheckButton : UIButton!
    var answerLabel : UILabel!
    let WinningNumber = Int(5)
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 500, height: 50))
        instructionLabel.text = "Guess a number between 1 and 10 and type it in the box below"
        view.addSubview(instructionLabel)
        
        NumberTextField = UITextField(frame: CGRect(x: 200, y: 150, width: 200, height: 50))
        NumberTextField.borderStyle = UITextBorderStyle.roundedRect
        NumberTextField.placeholder = "between 1 & 10"
        view.addSubview(NumberTextField)
        
        
        CheckButton = UIButton(frame: CGRect(x: 100, y: 230, width: 100, height: 50))
        CheckButton.setTitle("Check!", for: UIControlState.normal)
        CheckButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        CheckButton.addTarget(self, action: #selector(CheckTheNumber), for: UIControlEvents.touchUpInside)
        view.addSubview(CheckButton)
        
        
        answerLabel = UILabel(frame: CGRect(x: 50, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    @objc func CheckTheNumber() {
        // calculate the person's height
        
        let userNumber : Int =  Int(NumberTextField.text!)!
        
        if userNumber == WinningNumber {
            answerLabel.text = "You Won!!!"
        }
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()

