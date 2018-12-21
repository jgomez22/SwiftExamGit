//
//  ListTicketViewController.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//  

import UIKit

class ListTicketViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let cellId = "ticketCell"
    var tableView = UITableView()
    var listTicket:Array<Any> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.frame = self.view.frame
        

        // Do any additional setup after loading the view.
        
        self.loadTableView()
    }
    
    
    func loadTableView (){
        self.tableView.backgroundColor = .black
        self.tableView.register(TicketTableViewCell.self , forCellReuseIdentifier: cellId)
        
        
        
        var  constraints1:Array<NSLayoutConstraint>=Array()
        self.view.addSubview(self.tableView)
        //MARK:constraint tableview
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        constraints1.append(NSLayoutConstraint(item: tableView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0))
        
        constraints1.append(NSLayoutConstraint(item: tableView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 0))
        
        constraints1.append(NSLayoutConstraint(item: tableView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 0))
        
        constraints1.append(NSLayoutConstraint(item: tableView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0))
        
        self.view.addConstraints(constraints1)
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    
    func setListTicket(lista:Array<Any>) {
        self.listTicket = lista
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //agrega el numero de filas del json
        
       return listTicket.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //modifica
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TicketTableViewCell
        cell.addViews()
        cell.loadWithTicket(tickets: self.listTicket[indexPath.row] as! Ticket)
        cell.backgroundColor = .black

        //cell.contact = contacts[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle==UITableViewCell.EditingStyle.delete{
            self.listTicket.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
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
