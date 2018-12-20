//
//  ViewController.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addTaskAsync(_ sender: Any) {
        NotificationCenter.default.addObserver(self, selector: #selector(loadTableView(notification:)), name: Notification.Name("GetListTicket"), object: nil)
        self.requestListTickets()
    }
    
    @objc func loadTableView(notification:Notification) {
        var listTickets:Array<Any>=Array()
        listTickets = notification.object as! Array<Any>
        let listView = ListTicketViewController()
        listView.setListTicket(lista: listTickets)
        self.present(listView,animated: true,completion: nil)
    }
    
    func requestListTickets(){
        do {
            let url = URL(string: "https://api.myjson.com/bins/tp1am")
            let data = try Data(contentsOf: url!)
            let datajson = try JSONSerialization.jsonObject(with: data, options: [])
            var sendListTickets:Array<Any>=Array()
            
            for ticketsDictionary in datajson as! [Dictionary<String, String>]{
                let newTickets:Ticket = Ticket()
                newTickets.initWithDictionary(data: ticketsDictionary)
                sendListTickets.append(newTickets)
            }
            
            dispatch_queue_main_t.main.async {
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "GetListTicket"), object: sendListTickets)
            }
            
        } catch {
            print("algo salio mal")
        }
    }
}

