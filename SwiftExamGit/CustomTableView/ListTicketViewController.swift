//
//  ListTicketViewController.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//  

import UIKit

class ListTicketViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var tableView = UITableView()
    var listTicket:Array<Any> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setListTicket(lista:Array<Any>) {
        self.listTicket = lista
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //agrega el numero de filas del json
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //modifica
        let cell:TicketTableViewCell=TicketTableViewCell()
        //agrega codigo
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
