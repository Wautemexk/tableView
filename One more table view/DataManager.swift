//
//  DataManager.swift
//  One more table view
//
//  Created by Артём Козлов on 07.02.2024.
//

import Foundation
import UIKit

class DataManager {
    static let shared = DataManager()
    
    var countries: [Countries] = []
    
    private init() {
        self.countries = [
            Countries(flagImageView: UIImageView(image: UIImage(named: "British")), valetName: "Pound sterling", countryName: "GBP", courseOfValet: "42.492057", courseParam: "1 GBP = 11.766905 SEK"),
            
            Countries(flagImageView: UIImageView(image: UIImage(named: "Canada")), valetName: "Canadian dollar", countryName: "CAD", courseOfValet: "70.882534", courseParam: "1 CAD = 7.053924 SEK"),
            Countries(flagImageView: UIImageView(image: UIImage(named: "Czech")), valetName: "Czech koruna", countryName: "CZK", courseOfValet: "1,208.611941", courseParam: "1 CZK = 0.413698 SEK"),
            
            Countries(flagImageView: UIImageView(image: UIImage(named: "Indonesia")), valetName: "Indonesian  rupiah", countryName: "IDR", courseOfValet: "763,393.560017", courseParam: "1 IDR = 0.000655 SEK"),
            Countries(flagImageView: UIImageView(image: UIImage(named: "Shved")), valetName: "Swedish krona", countryName: "SEK", courseOfValet: "500.000000", courseParam: "1 SEK = 1.000000 SEK"),
            
            Countries(flagImageView: UIImageView(image: UIImage(named: "Thailand")), valetName: "Thai baht", countryName: "THB", courseOfValet: "1,657.656376", courseParam: "1 THB = 0.301631 SEK"),
            
        ]
    }
    
}
