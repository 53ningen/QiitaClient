//
//  ViewController.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import RxCocoa
import SwiftyJSON
import Alamofire
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DefaultQiitaApiClient().getStockersOfItem("eed571e0a15a75f41c1f", page: 1, perPage: 20)
            >- subscribe(next: { e in println(e.getContent()) }, error:{  println($0) }, completed: { println("completed")})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

