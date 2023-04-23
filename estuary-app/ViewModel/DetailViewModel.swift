//
//  DetailViewModel.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins
import CoreImage

class DetailViewModel: ObservableObject {
    @Published var sneaker: Sneaker
    @Published var colors: [Color] = [Color.clear, Color.clear]
    @State private var image: UIImage?
    
    init(sneaker: Sneaker) {
        self.sneaker = sneaker
        loadAndProcessImage()
    }
    
    func loadAndProcessImage() {
        print("loading image")
        let task = URLSession.shared.dataTask(with: sneaker.images.original) { data, response, error in
            guard let data = data, error == nil else { return }
            let uiImage = UIImage(data: data)!
            print("processing image")
            if let extractedColors = uiImage.getColors() {
                self.colors = [Color(extractedColors.background), Color(extractedColors.secondary)]
            }
            print("processing completed")
            print(self.colors)
        }
        task.resume()
    }
    
    private func processImage(_ image: UIImage) {
        guard let ciImage = CIImage(image: image) else { return }
        let filter = CIFilter.colorClamp()
        filter.inputImage = ciImage
        filter.minComponents = CIVector(x: 0, y: 0, z: 0, w: 0)
        filter.maxComponents = CIVector(x: 1, y: 1, z: 1, w: 1)
        let outputImage = filter.outputImage!
        let context = CIContext()
        let cgImage = context.createCGImage(outputImage, from: outputImage.extent)!
        let uiImage = UIImage(cgImage: cgImage)
        self.image = uiImage
        let ciColor = ciImage.histogram!
        let color = UIColor(ciColor: ciColor).withAlphaComponent(1)
        let complementaryColor = color.complementaryColor.withAlphaComponent(1)
        let imageColors = [Color(color), Color(complementaryColor)]
        print("processed colors: \(imageColors)")
        self.colors = imageColors
    }
}

extension CIImage {
    var averageColor: CIColor? {
        let extentVector = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.width, w: extent.height)
        guard let filter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: self, kCIInputExtentKey: extentVector]), let outputImage = filter.outputImage else {
            return nil
        }
        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext()
        context.render(outputImage, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return CIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255)
    }
}

extension CIImage {
    var histogram: CIColor? {
        let extentVector = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.width, w: extent.height)
        guard let filter = CIFilter(name: "CIAreaHistogram", parameters: [kCIInputImageKey: self, kCIInputExtentKey: extentVector]), let outputImage = filter.outputImage else {
            return nil
        }
        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext()
        context.render(outputImage, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return CIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255)
    }
}

extension CIImage {
    var brightestColor: CIColor? {
        let extentVector = CIVector(x: extent.origin.x, y: extent.origin.y, z: extent.width, w: extent.height)
        guard let maxFilter = CIFilter(name: "CIAreaMaximum", parameters: [kCIInputImageKey: self, kCIInputExtentKey: extentVector]), let outputImage = maxFilter.outputImage else {
            return nil
        }
        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext()
        context.render(outputImage, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return CIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255)
    }
}


extension UIColor {
    var complementaryColor: UIColor {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        
        // Add 0.5 to the hue and take the modulo to wrap it around
        hue += 0.5
        hue.formTruncatingRemainder(dividingBy: 1)
        
        print("\(hue)")
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
}
