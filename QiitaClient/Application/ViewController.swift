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
    
    let components = DefaultApplicationComponents()

    override func viewDidLoad() {
        super.viewDidLoad()
        println(components.qiitaApiClient())
        components.config
        
        
        DefaultQiitaApiClient().getAuthenticatedUser(DefaultSession(accessToken: ""))
            >- subscribe(next: { e in println(e.getContent()) }, error:{  println($0) }, completed: { println("completed")})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

