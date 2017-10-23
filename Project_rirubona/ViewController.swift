//
//  ViewController.swift
//  Project_rirubona
//
//  Created by 김형철 on 2017. 10. 3..
//  Copyright © 2017년 misono. All rights reserved.
//
import UIKit
enum SelectedButtonTag: Int {
    case Zero = 0
    case First
    case Second
    case Third
    case Forth
    case Fifth
    case Sixth
    case Sevneth
    case Eighth
    case Nineth
}
class ViewController: UIViewController {

    var first_Number:Double? = nil
    var second_Number:Double? = nil
    var temp_Number:Double? = 0
    var If_click_Operation:Bool? = false
    var Is_it_Double:Bool? = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   // @IBOutlet weak var entry_label: UILabel!
    @IBOutlet weak var Screen: UILabel!
    @IBAction func Reset(_ sender: UIButton) {
        self.Screen.text = "0"
        first_Number? *= 0.0
        second_Number? *= 0.0
        temp_Number? *= 0.0
    }
    @IBAction func numbers(_ sender: UIButton) {
        if(first_Number == nil)
        {
            switch sender.tag
            {
                case SelectedButtonTag.Zero.rawValue: self.Screen.text = "0"; first_Number! = 0
                case SelectedButtonTag.First.rawValue: self.Screen.text = "1"; first_Number! = 1
                case SelectedButtonTag.Second.rawValue: self.Screen.text = "2"; first_Number! = 2
                case SelectedButtonTag.Third.rawValue: self.Screen.text = "3"; first_Number! = 3
                case SelectedButtonTag.Forth.rawValue: self.Screen.text = "4"; first_Number! = 4
                case SelectedButtonTag.Fifth.rawValue: self.Screen.text = "5"; first_Number! = 5
                case SelectedButtonTag.Sixth.rawValue: self.Screen.text = "6"; first_Number! = 6
                case SelectedButtonTag.Sevneth.rawValue: self.Screen.text = "7"; first_Number! = 7
                case SelectedButtonTag.Eighth.rawValue: self.Screen.text = "8"; first_Number! = 8
                case SelectedButtonTag.Nineth.rawValue: self.Screen.text = "9"; first_Number! = 9
                default:break
            }
        }
        else
        {
            first_Number! *= 10
            switch sender.tag
            {
            case SelectedButtonTag.Zero.rawValue: second_Number! = 0 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.First.rawValue: second_Number! = 1 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Second.rawValue: second_Number! = 2 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Third.rawValue: second_Number! = 3 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Forth.rawValue: second_Number! = 4 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Fifth.rawValue: second_Number! = 5 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Sixth.rawValue: second_Number! = 6 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Sevneth.rawValue: second_Number! = 7 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Eighth.rawValue: second_Number! = 8 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            case SelectedButtonTag.Nineth.rawValue: second_Number! = 9 ; first_Number! += second_Number!; self.Screen.text = String(describing: first_Number);
            default:break
            }
        }
    }
}


