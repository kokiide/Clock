//
//  ViewController.swift
//  Swift_Sample_Clock
//
//  Created by Koki Ide on 2017/4/21.
//  Copyright (c) 2017年 Koki Ide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var hour2:Int!
    var hour1:Int!
    var minute2:Int!
    var minute1:Int!
    var second2:Int!
    var second1:Int!
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    


    
    @IBOutlet var hour2ImageView: UIImageView!
    @IBOutlet var hour1ImageView: UIImageView!
    @IBOutlet var minute2ImageView: UIImageView!
    @IBOutlet var minute1ImageView: UIImageView!
    @IBOutlet var second2ImageView: UIImageView!
    @IBOutlet var second1ImageView: UIImageView!
    
    var image0:UIImage!
    var image1:UIImage!
    var image2:UIImage!
    var image3:UIImage!
    var image4:UIImage!
    var image5:UIImage!
    var image6:UIImage!
    var image7:UIImage!
    var image8:UIImage!
    var image9:UIImage!
    
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.textColor = UIColor(red: 0.961, green: 0.957, blue: 0945, alpha: 1)
        
        image0 = UIImage(named: "0.png")
        image1 = UIImage(named: "1.png")
        image2 = UIImage(named: "2.png")
        image3 = UIImage(named: "3.png")
        image4 = UIImage(named: "4.png")
        image5 = UIImage(named: "5.png")
        image6 = UIImage(named: "6.png")
        image7 = UIImage(named: "7.png")
        image8 = UIImage(named: "8.png")
        image9 = UIImage(named: "9.png")
        
        timer = Timer.scheduledTimer(timeInterval: 1.0,target: self,
                                                        selector: #selector(ViewController.time),
                                                        userInfo: nil,
                                                        repeats: true)
        super.viewDidLoad()
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        if 10 <= number {
            label.textColor = UIColor.red
        }else{
            label.textColor = UIColor(red: 0.961, green: 0.957, blue: 0945, alpha: 1)
        }
    }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
    }
    
    @IBAction func times(){
        number = number * 2
        label.text = String(number)
    }
    
    @IBAction func devide(){
        number = number / 2
        label.text = String(number)
    }
    
    
    @IBAction func reset(){
        number = 0
        label.text = String(number)
    }
    
    func time(){
        let myDate: Date = Date()
        //カレンダーを取得.
        let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: .gregorian)!
        
        //取得するコンポーネントを決める.
        let myComponetns = myCalendar.components([.year, .month, .day, .hour, .minute, .second],
                                                 from: myDate)
        
        let hour:Int = myComponetns.hour!
        let minute:Int = myComponetns.minute!
        let second:Int = myComponetns.second!
        
        if (hour>9) {
            hour2 = hour/10
            hour1 = hour - (hour/10)*10
        }
        else {
            hour2 = 0
            hour1 = hour
        }
        
        if (minute>9) {
            minute2 = minute/10
            minute1 = minute - (minute/10)*10
        }
        else {
            minute2 = 0;
            minute1 = minute;
        }
        if (second>9) {
            second2 = second/10;
            second1 = second - (second/10)*10
        }
        else {
            second2 = 0;
            second1 = second;
        }
        
        draw()
    }
    
    func draw(){
        switch(hour2){
        case 0:
            hour2ImageView.image = image0
            break
        case 1:
            hour2ImageView.image = image1
            break
        case 2:
            hour2ImageView.image = image2
            break
        case 3:
            hour2ImageView.image = image3
            break
        case 4:
            hour2ImageView.image = image4
            break
        case 5:
            hour2ImageView.image = image5
            break
        case 6:
            hour2ImageView.image = image6
            break
        case 7:
            hour2ImageView.image = image7
            break
        case 8:
            hour2ImageView.image = image8
            break
        case 9:
            hour2ImageView.image = image9
            break
        default:
            break
        }
        switch(hour1){
        case 0:
            hour1ImageView.image = image0
            break
        case 1:
            hour1ImageView.image = image1
            break
        case 2:
            hour1ImageView.image = image2
            break
        case 3:
            hour1ImageView.image = image3
            break
        case 4:
            hour1ImageView.image = image4
            break
        case 5:
            hour1ImageView.image = image5
            break
        case 6:
            hour1ImageView.image = image6
            break
        case 7:
            hour1ImageView.image = image7
            break
        case 8:
            hour1ImageView.image = image8
            break
        case 9:
            hour1ImageView.image = image9
            break
        default:
            break
        }
        
        switch(minute2){
        case 0:
            minute2ImageView.image = image0
            break
        case 1:
            minute2ImageView.image = image1
            break
        case 2:
            minute2ImageView.image = image2
            break
        case 3:
            minute2ImageView.image = image3
            break
        case 4:
            minute2ImageView.image = image4
            break
        case 5:
            minute2ImageView.image = image5
            break
        case 6:
            minute2ImageView.image = image6
            break
        case 7:
            minute2ImageView.image = image7
            break
        case 8:
            minute2ImageView.image = image8
            break
        case 9:
            minute2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(minute1){
        case 0:
            minute1ImageView.image = image0
            break
        case 1:
            minute1ImageView.image = image1
            break
        case 2:
            minute1ImageView.image = image2
            break
        case 3:
            minute1ImageView.image = image3
            break
        case 4:
            minute1ImageView.image = image4
            break
        case 5:
            minute1ImageView.image = image5
            break
        case 6:
            minute1ImageView.image = image6
            break
        case 7:
            minute1ImageView.image = image7
            break
        case 8:
            minute1ImageView.image = image8
            break
        case 9:
            minute1ImageView.image = image9
            break
        default:
            break
        }
        switch(second2){
        case 0:
            second2ImageView.image = image0
            break
        case 1:
            second2ImageView.image = image1
            break
        case 2:
            second2ImageView.image = image2
            break
        case 3:
            second2ImageView.image = image3
            break
        case 4:
            second2ImageView.image = image4
            break
        case 5:
            second2ImageView.image = image5
            break
        case 6:
            second2ImageView.image = image6
            break
        case 7:
            second2ImageView.image = image7
            break
        case 8:
            second2ImageView.image = image8
            break
        case 9:
            second2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(second1){
        case 0:
            second1ImageView.image = image0
            break
        case 1:
            second1ImageView.image = image1
            break
        case 2:
            second1ImageView.image = image2
            break
        case 3:
            second1ImageView.image = image3
            break
        case 4:
            second1ImageView.image = image4
            break
        case 5:
            second1ImageView.image = image5
            break
        case 6:
            second1ImageView.image = image6
            break
        case 7:
            second1ImageView.image = image7
            break
        case 8:
            second1ImageView.image = image8
            break
        case 9:
            second1ImageView.image = image9
            break
        default:
            break
        }
        
    }


}

