import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    {
      'id': 1,
      "name": "Amazon Echo Show 8 (3rd Gen)",
      "description": "Smart display with Alexa and upgraded camera",
      "features": "8\" HD screen, smart home hub, video calls",
      "price": "\$129.99",
      "imageUrl": "https://m.media-amazon.com/images/I/5172m6LnUJL.jpg",
    },
    {
      'id': 2,
      "name": "Roborock S8 Pro Ultra",
      "description": "AI-powered robot vacuum with auto-empty dock",
      "features": "LIDAR navigation, mop mode, voice control",
      "price": "\$1,599.99",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEk3sT76lb6NcTDycMbkWUou3EyOd-bIiwKw&s",
    },
    {
      'id': 3,
      "name": "Google Nest Thermostat",
      "description": "Smart thermostat with energy-saving features",
      "features": "Remote control, scheduling, eco mode",
      "price": "\$129.99",
      "imageUrl":
          "https://www.cnet.com/a/img/resize/24912b06112f02ceb8ad1f1d8119834fdd143c4f/hub/2022/03/23/73673cfe-27fe-485b-a088-8e6cbfea4d24/eufy-doorbell-4.jpg?auto=webp&width=1200",
    },
    {
      'id': 4,
      "name": "Philips Hue Gradient Lightstrip",
      "description": "Smart LED strip with dynamic color effects",
      "features": "Voice control, app sync, multi-zone lighting",
      "price": "\$179.99",
      "imageUrl":
          "https://images.philips.com/is/image/PhilipsConsumer/046677555326-A1P-global-001",
    },
    {
      'id': 5,
      "name": "Arlo Pro 5 Security Camera",
      "description": "Wireless 2K security cam with spotlight",
      "features": "Color night vision, motion alerts, cloud storage",
      "price": "\$249.99",
      "imageUrl":
          "https://www.techhive.com/wp-content/uploads/2023/04/220325-eufy-1.jpg?quality=50&strip=all",
    },
    {
      'id': 6,
      "name": "Samsung SmartThings Hub 3.0",
      "description": "Central hub for smart home automation",
      "features": "Zigbee/Z-Wave support, app control",
      "price": "\$69.99",
      "imageUrl":
          "https://images.samsung.com/is/image/samsung/p6pim/ca/smartthings-hub-3.0",
    },
    {
      'id': 7,
      "name": "LG InstaView ThinQ Refrigerator",
      "description": "Smart fridge with touchscreen and voice control",
      "features": "Door-in-Door, Wi-Fi, inventory tracking",
      "price": "\$3,499.99",
      "imageUrl":
          "https://www.lg.com/us/images/refrigerators/md07501379/gallery/desktop-01.jpg",
    },
    {
      'id': 8,
      "name": "Sonos Arc Soundbar",
      "description": "Premium smart soundbar with Dolby Atmos",
      "features": "Voice assistant, multi-room audio",
      "price": "\$899.99",
      "imageUrl":
          "https://www.sonos.com/dam/jcr:7a1e1e3e-8c7f-4e9b-9f9e-3b3f0d2e6e6e/sonos-arc-black-front.jpg",
    },
    {
      'id': 9,
      "name": "August Wi-Fi Smart Lock",
      "description": "Keyless entry with auto-lock and remote access",
      "features": "App control, guest access, door sensor",
      "price": "\$229.99",
      "imageUrl":
          "https://cdn.shopify.com/s/files/1/0266/8023/7067/products/august-wifi-smart-lock.jpg",
    },
    {
      'id': 10,
      "name": "Eufy Video Doorbell Dual",
      "description": "Dual-camera smart doorbell with package detection",
      "features": "2K resolution, local storage, AI alerts",
      "price": "\$199.99",
      "imageUrl":
          "https://cdn.shopify.com/s/files/1/0266/8023/7067/products/eufy-video-doorbell-dual.jpg",
    },
  ];

  List getProducts() {
    return _products;
  }

  List<Map<String, dynamic>> _cartList = [];

  List<Map<String, dynamic>> getCart() {
    return _cartList;
  }

  void addTocart(Map<String, dynamic> product) {
    debugPrint(_cartList.where((x) => x['id'] == product['id']).toString());
    if (_cartList.where((x) => x['id'] == product['id']).isEmpty) {
      _cartList.add(product);
      notifyListeners();
    }
  }

  int getCartCount() => _cartList.length;
}
