//
//  ViewController.swift
//  Caculator
//
//  Created by EUNSUNG on 2023/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    let imgMinus: UIImage? = UIImage(named: "-.png")
    let _imgMinus: UIImage? = UIImage(named: "_-.png")
    let imgPlus: UIImage? = UIImage(named: "+.png")
    let _imgPlus: UIImage? = UIImage(named: "_+.png")
    let imgMulti: UIImage? = UIImage(named: "x.png")
    let _imgMulti: UIImage? = UIImage(named: "_x.png")
    
    var result: String = ""
    
    var calReuslt: Float = 0
    
    var dotBool: Bool = false
    var numBool: Bool = false
    var firstNum: Float? = nil
    var secondNum: Float? = nil
    var plusBool: Bool = false
    var minusBool: Bool = false
    var multiBool: Bool = false
    var equalBool: Bool = false
    var firstEqualBool: Bool = true

    @IBOutlet var lblOut: UILabel!
    
    @IBOutlet var vPlus: UIButton!
    
    @IBOutlet var vMinus: UIButton!
    
    @IBOutlet var vMulti: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn7(_ sender: UIButton) {
        numClick()
        result += "7"

        lblOut.text = result
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        numClick()
        result += "8"
        lblOut.text = result
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        numClick()
        result += "9"
        lblOut.text = result
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        numClick()
        result += "4"
        lblOut.text = result
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        numClick()
        result += "5"
        lblOut.text = result
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        numClick()
        result += "6"
        lblOut.text = result
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        numClick()
        result += "1"
        lblOut.text = result
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        numClick()
        result += "2"
        lblOut.text = result
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        numClick()
        result += "3"
        lblOut.text = result
    }
    
    @IBAction func btn0(_ sender: Any) {
        numClick()
        result += "0"
        lblOut.text = result
    }
    
    @IBAction func btnDot(_ sender: UIButton) {
        numClick()
        result += "."
        lblOut.text = result
        dotBool = true
    }
    
    @IBAction func btnPlus(_ sender: UIButton) {
        if(calBool() == 0 || calBool() == 1) {
            if(numBool == false && equalBool == false) {
                if(firstNum == nil) {
                    firstNum = Float(result)
                    //vPlus.backgroundColor = UIColor.yellow
                    vPlus.setBackgroundImage(_imgPlus, for: .normal)
                    plusBool = true
                    numBool = true
                }
                else if(firstNum != nil && secondNum == nil) {
                    secondNum = Float(result)
                    //vPlus.backgroundColor = UIColor.yellow
                    vPlus.setBackgroundImage(_imgPlus, for: .normal)
                    plusBool = true
                    numBool = true
                    calReuslt = firstNum! + secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
                else if(firstNum != nil && secondNum != nil) {
                    
                    firstNum = calReuslt
                    //vPlus.backgroundColor = UIColor.yellow
                    vPlus.setBackgroundImage(_imgPlus, for: .normal)
                    plusBool = true
                    numBool = true
                    secondNum = Float(result)
                    calReuslt = firstNum! + secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
            }
            else {
                //vPlus.backgroundColor = UIColor.yellow
                vPlus.setBackgroundImage(_imgPlus, for: .normal)
                plusBool = true
                equalBool = false
            }
        }
        else if(calBool() == 2) {
            btnMinus(vPlus)
            //vMinus.backgroundColor = UIColor.systemGray2
            vMinus.setBackgroundImage(imgMinus, for: .normal)
            //vPlus.backgroundColor = UIColor.yellow
            vPlus.setBackgroundImage(_imgPlus, for: .normal)
            minusBool = false
            plusBool = true
        }
        else if(calBool() == 3) {
            btnMulti(vMulti)
            vMulti.setBackgroundImage(imgMulti, for: .normal)
            vPlus.setBackgroundImage(_imgPlus, for: .normal)
            multiBool = false
            plusBool = true
        }
    }
    
    
    @IBAction func btnMinus(_ sender: UIButton) {
        if(calBool() == 0 || calBool() == 2) {
            if(numBool == false && equalBool == false) {
                if(firstNum == nil) {
                    firstNum = Float(result)
                    //vMinus.backgroundColor = UIColor.yellow
                    vMinus.setBackgroundImage(_imgMinus, for: .normal)
                    minusBool = true
                    numBool = true
                }
                else if(firstNum != nil && secondNum == nil) {
                    secondNum = Float(result)
                    //vMinus.backgroundColor = UIColor.yellow
                    vMinus.setBackgroundImage(_imgMinus, for: .normal)
                    minusBool = true
                    numBool = true
                    calReuslt = firstNum! - secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
                else if(firstNum != nil && secondNum != nil) {
                    
                    firstNum = calReuslt
                    //vMinus.backgroundColor = UIColor.yellow
                    vMinus.setBackgroundImage(_imgMinus, for: .normal)
                    minusBool = true
                    numBool = true
                    secondNum = Float(result)
                    calReuslt = firstNum! - secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
            }
            else {
                //vMinus.backgroundColor = UIColor.yellow
                vMinus.setBackgroundImage(_imgMinus, for: .normal)
                minusBool = true
                equalBool = false
            }
        }
        else if(calBool() == 1) {
            btnPlus(vMinus)
            vPlus.setBackgroundImage(imgPlus, for: .normal)
            vMinus.setBackgroundImage(_imgMinus, for: .normal)
            plusBool = false
            minusBool = true
        }
        else if(calBool() == 3) {
            btnMulti(vMulti)
            vMulti.setBackgroundImage(imgMulti, for: .normal)
            vMinus.setBackgroundImage(_imgMinus, for: .normal)
            multiBool = false
            minusBool = true
        }
    }
    
    @IBAction func btnMulti(_ sender: UIButton) {
        if(calBool() == 0 || calBool() == 3) {
            if(numBool == false && equalBool == false) {
                if(firstNum == nil) {
                    firstNum = Float(result)
                    //vMinus.backgroundColor = UIColor.yellow
                    vMulti.setBackgroundImage(_imgMulti, for: .normal)
                    multiBool = true
                    numBool = true
                }
                else if(firstNum != nil && secondNum == nil) {
                    secondNum = Float(result)
                    //vMinus.backgroundColor = UIColor.yellow
                    vMulti.setBackgroundImage(_imgMulti, for: .normal)
                    multiBool = true
                    numBool = true
                    calReuslt = firstNum! * secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
                else if(firstNum != nil && secondNum != nil) {
                    
                    firstNum = calReuslt
                    //vMinus.backgroundColor = UIColor.yellow
                    vMulti.setBackgroundImage(_imgMulti, for: .normal)
                    multiBool = true
                    numBool = true
                    secondNum = Float(result)
                    calReuslt = firstNum! * secondNum!
                    if(dotBool == false) {
                        lblOut.text = String(Int(calReuslt))
                    } else {
                        lblOut.text = String(calReuslt)
                    }
                    firstEqualBool = false
                }
            }
            else {
                //vMinus.backgroundColor = UIColor.yellow
                vMulti.setBackgroundImage(_imgMulti, for: .normal)
                multiBool = true
                equalBool = false
            }
        }
        else if(calBool() == 1) {
            btnPlus(vMulti)
            vPlus.setBackgroundImage(imgPlus, for: .normal)
            vMulti.setBackgroundImage(_imgMulti, for: .normal)
            plusBool = false
            multiBool = true
        }
        else if(calBool() == 2) {
            btnMinus(vMulti)
            vMinus.setBackgroundImage(imgMinus, for: .normal)
            vMulti.setBackgroundImage(_imgMulti, for: .normal)
            minusBool = false
            multiBool = true
        }
    }
    
    func numClick() {
        if(equalBool == true) {
            btnAC(vPlus)
        }
        else {
            if(numBool == true && plusBool == true)
            {
                vPlus.setBackgroundImage(imgPlus, for: .normal)
                result = ""
                lblOut.text = ""
                numBool = false
            }
            else if(numBool == true && minusBool == true)
            {
                vMinus.setBackgroundImage(imgMinus, for: .normal)
                result = ""
                lblOut.text = ""
                numBool = false
            }
            else if(numBool == true && multiBool == true)
            {
                vMulti.setBackgroundImage(imgMulti, for: .normal)
                result = ""
                lblOut.text = ""
                numBool = false
            }
        }
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {

        if(firstEqualBool == false) {
            firstNum = calReuslt
        }
        if(plusBool == true) {
            vPlus.setBackgroundImage(imgPlus, for: .normal)
            secondNum = Float(result)
            numBool = true
            calReuslt = firstNum! + secondNum!
            if(dotBool == false) {
                lblOut.text = String(Int(calReuslt))
            } else {
                lblOut.text = String(calReuslt)
            }
            plusBool = false
            firstEqualBool = false
        } 
        else if(minusBool == true) {
            vMinus.setBackgroundImage(imgMinus, for: .normal)
            secondNum = Float(result)
            numBool = true
            calReuslt = firstNum! - secondNum!
            if(dotBool == false) {
                lblOut.text = String(Int(calReuslt))
            } else {
                lblOut.text = String(calReuslt)
            }
            minusBool = false
            firstEqualBool = false
        }
        else if(multiBool == true) {
            vMulti.setBackgroundImage(imgMulti, for: .normal)
            secondNum = Float(result)
            numBool = true
            calReuslt = firstNum! * secondNum!
            if(dotBool == false) {
                lblOut.text = String(Int(calReuslt))
            } else {
                lblOut.text = String(calReuslt)
            }
            multiBool = false
            firstEqualBool = false
        }
        equalBool = true
    }
    
    func calBool() -> Int {
        if(plusBool == true) {
            return 1
        }
        else if(minusBool == true) {
            return 2
        }
        else if(multiBool == true) {
            return 3
        }
        return 0
    }
    
    @IBAction func btnAC(_ sender: UIButton) {
        result = ""
        
        calReuslt = 0
        
        numBool = false
        firstNum = nil
        secondNum = nil
        plusBool = false
        minusBool = false
        multiBool = false
        equalBool = false
        firstEqualBool = true
        dotBool = false
        
        lblOut.text = "0"

        vPlus.setBackgroundImage(imgPlus, for: .normal)
        vMinus.setBackgroundImage(imgMinus, for: .normal)
        vMulti.setBackgroundImage(imgMulti, for: .normal)
    }
}

