//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Lin Zhou on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var setting: GithubRepoSearchSettings!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        slider.value = 2
        slider.maximumValue = 10
        sliderLabel.text =  "\((Int)(slider.value))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slide(_ sender: Any) {
        sliderLabel.text =  "\((Int)(slider.value))"
    }

    @IBAction func onSave(_ sender: Any) {
        setting.minStars = Int(slider.value)
        self.delegate?.didSaveSettings(settings: setting)
        sliderLabel.text =  "\((Int)(slider.value))"
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
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
