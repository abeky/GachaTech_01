//
//  ResultViewController.swift
//  GachaTech_01
//
//  Created by 阿部一真 on 2018/07/04.
//  Copyright © 2018年 阿部一真. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

     //一番後ろの背景画像
    @IBOutlet var hakeiImageView: UIImageView!
    
    //モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    
    
    //戻るボタン
    @IBAction func modoru() {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    var monsterArray: [UIImage]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let number = Int(arc4random_uniform(10))
        
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!,]
        
        //ランダムに選んだモンスターを表示させる
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            hakeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 6 {
            hakeiImageView.image = UIImage(named: "bd_red.png")
        } else {
            hakeiImageView.image = UIImage(named: "bd_blue.png")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
