//
//  AddTableViewController.swift
//  Projet
//
//  Created by robert jean-noel on 13/02/2019.
//  Copyright © 2019 robert jean-noel. All rights reserved.
//

import UIKit
import CoreData

class AddTableViewController: UITableViewController {
    
    var note: Note?
    

    @IBOutlet weak var titreTextField: UITextField!
    
    @IBOutlet weak var noteTextField: UITextField!
    
    @IBOutlet weak var localisationTextField: UITextField!
    
    @IBOutlet weak var buttonSave: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testSave()
        
        if let note = note {
            titreTextField.text = note.titre
            noteTextField.text = note.contenu
            localisationTextField.text = note.localisation
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveUnwind" {
            let titre = titreTextField.text ?? ""
            let contenue = noteTextField.text ?? ""
            let localisation = localisationTextField.text ?? ""
            let date = Date()
            
            note = Note(titre: titre, contenu: contenue, date: date, localisation: localisation)
            
            
            
        }
    }
    
    func testSave() {
        if titreTextField.text == "" || noteTextField.text == ""{
            buttonSave.isEnabled = false
        }
        else {
            buttonSave.isEnabled = true
        }
    }
    
    @IBAction func titreUpdateText(_ sender: UITextField) {
        testSave()
    }
    
    @IBAction func noteUpdate(_ sender: UITextField) {
        testSave()
    }
    
    

}
