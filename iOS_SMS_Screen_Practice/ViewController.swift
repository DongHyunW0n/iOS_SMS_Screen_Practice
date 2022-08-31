//
//  ViewController.swift
//  iOS_SMS_Screen_Practice
//
//  Created by WonDongHyun on 2022/08/31.
//

import UIKit

class ViewController: UIViewController {
    
    
    let numberAry = [
        "010 5100 5330",
        "010 5545 2929",
        "아버지",
        "화니",
        "010 6655 7497",
        "051 744 2929",
        "국민카드",
        "박사장",
        "집"
    ]
    
    let dateAry = [
        "00:27",
        "어제",
        "어제",
        "화요일",
        "화요일",
        "월요일",
        "월요일",
        "일요일",
        "토요일",
    ]
    
    let contentAry = [
        "Web발신 (광고)제이다울 추석기획전 세일 upto 50%~ https://bit.ly/3TrIOTT 무료수신거부:0800222287",
        "사장님 ~ 60000원 드려요 바다이야기 구경",
        
        "[한국모바일인증] 본인확인 인증번호 [545621] 입니다.",
        
        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다.",
        
        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다.",

        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다.",

        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다.",

        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다.",

        "[WEB]발신 쿠팡 로켓박스 1박스 배달완료했습니다."
    ]
    
    

    @IBOutlet weak var messageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let SMSTableViewCell = UINib(nibName: "SMSTableViewCell", bundle: nil)
        
        self.messageTableView.register(SMSTableViewCell, forCellReuseIdentifier: "SMSTableViewCell")
        
        
        self.messageTableView.rowHeight = UITableView.automaticDimension
        self.messageTableView.estimatedRowHeight = 300
        
        self.messageTableView.dataSource = self
        self.messageTableView.delegate = self
    }


    
    @IBAction func editButton(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func writeButton(_ sender: UIBarButtonItem) {
    }
}



extension ViewController : UITableViewDelegate{
    
    
    
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageTableView.dequeueReusableCell(withIdentifier: "SMSTableViewCell", for: indexPath) as! SMSTableViewCell
        cell.numberLabel.text = numberAry[indexPath.row]
        cell.dateLabel.text = dateAry[indexPath.row]
        cell.contentLabel.text = contentAry[indexPath.row]
        
        return cell
    }
    
    
}

