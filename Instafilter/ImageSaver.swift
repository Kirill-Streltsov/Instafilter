//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Kirill Streltsov on 03.08.23.
//

import UIKit

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSaveWithError: Error?, contextInfo: UnsafeRawPointer) {
        print("Save finished!")
    }
}
