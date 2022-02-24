// ignore_for_file: camel_case_types

class product {
  static int currentID = 0;
  String image;
  String ProductName;
  int productID = currentID;
  String descreption;
  double price;
  bool fav = false;
  product(
      {required this.image,
      required this.ProductName,
      required this.descreption,
      required this.price}) {
    currentID = currentID + 1;
    fav = false;
  }
  void setFav(bool Fav) {
    this.fav = fav;
  }

  String getImage() {
    return image;
  }

  bool getFav() {
    return fav;
  }

  int getProductID() {
    return productID;
  }
}

class data {
  List<product> products = [
    product(
        image: "1.jpg",
        ProductName: "AMD Ryzen 5 5600X",
        price: 5000,
        descreption:
            "AMD Ryzen 5 5600X Processor (6C/12T, 35MB Cache, up to 4.6 GHz Max Boost)"),
    product(
        image: "2.jpg",
        ProductName: "AMD Ryzen 7 3700X",
        descreption:
            "AMD 100100000071BOX Ryzen 7 3700X Processor (8C/16T, 36MB Cache, 4.4 GHz Max Boost) Black",
        price: 5900),
    product(
        image: "3.jpg",
        ProductName: "ASUS Prime B450M-K",
        descreption: "ASUS PRIME Z490-P (Socket 1200/Z490/DDR4/S-ATA 600/ATX)",
        price: 3900),
    product(
        image: "4.jpg",
        ProductName: "Gigabyte GeForce RTX 3060 Ti",
        descreption:
            "NVIDIA Ampere Streaming Multiprocessors 2nd Generation RT Cores 3rd Generation Tensor Cores Powered by GeForce RTX™ 3060 Ti Integrated with 8GB GDDR6 256-bit memory interface WINDFORCE 3X Cooling System with alternate spinning fans RGB Fusion 2.0 Protection metal back plate LHR (Lite Hash Rate) version",
        price: 26550),
    product(
        image: "5.jpg",
        ProductName: "Gigabyte GeForce RTX 3080 Ti",
        descreption:
            "FEATURES NVIDIA Ampere Streaming Multiprocessors 2nd Generation RT Cores 3rd Generation Tensor Cores Powered by GeForce RTX 3080 Ti Integrated with 12GB GDDR6X 384-bit memory interface WINDFORCE 3X Cooling System with alternate spinning fans RGB Fusion 2.0 Protection metal back plate CORE CLOCK 1710 MHz (Reference Card: 1665 MHz)",
        price: 45000),
    product(
        image: "6.jpg",
        ProductName: "Intel Core i5-11400",
        descreption:
            "Intel® Core™ i5-11400 Desktop Processor 6 Cores up to 4.4 GHz LGA1200 (Intel® 500 Series & Select 400 Series Chipset) 65W",
        price: 3000),
    product(
        image: "7.jpg",
        ProductName: "Intel Core i7-11700K",
        descreption:
            "# of Cores: 8, # of Threads: 16, Processor Base Frequency: 3.60 GHz, Max Turbo Frequency: 5.00 GHz, Cache: 16 MB Intel Smart Cache, Bus Speed: 8 GT/s, Intel Turbo Boost Max Technology 3.0 Frequency 5.00 GHz, Intel Turbo Boost Technology 2.0 Frequency 4.90 GHz, TDP: 125 W, Configurable TDP-down Frequency: 3.10 GHz",
        price: 7700),
    product(
        image: "8.jpg",
        ProductName: "MSI Performance Gaming B450GPCMAXWIFI",
        descreption:
            "MSI Performance Gaming AMD Ryzen 1st, 2nd, and 3rd Gen AM4 M.2 USB 3.2 Gen 2 DDR4 HDMI Display Port Wi-Fi ATX Motherboard (B450 Gaming PRO Carbon MAX WiFi)",
        price: 2775),
    product(
        image: "9.jpg",
        ProductName: "Nvidia GeForce GT 1030",
        descreption:
            "Gigabyte GeForce graphics card features 2GB GDDR5 RAM and provides an immersive gaming experience. The Gigabyte GeForce 2GB graphics card has a durable make.Play the latest high-resolution games or watch high-definition videos with the Gigabyte GeForce GT 1030 OC 2 GB GDDR5 Graphics Card. The components are made of top class materials that assure you of long-lasting performance. The NVIDIA Pascal architecture coupled with 2GB GDDR5 RAM lets you take on the most demanding of games, without experience and lags or jitters. Furthermore, this Gigabyte GeForce 2GB graphics card comes equipped with HDMI and DVI port and supports 4K resolution at 60Hz. The AORUS Graphics Engine with One-click overclocking allows for the ease of use while the custom-designed cooler makes it ideal for long gaming sessions.",
        price: 3250),
    product(
        image: "10.jpg",
        ProductName: "Cooler Master HYPER 212 SPECTRUM RGB CPU",
        descreption:
            "Brand : Cooler Master , Manufacturer Number : RR-212A-20PD-R1 , Compatible with : CPU , Are batteries needed to power the product or is this product a battery : No , Is this a Dangerous Good or a Hazardous Material, Substance or Waste that is regulated for transportation, storage, and/or disposal? : No , External Product ID Type : EAN-13",
        price: 1100),
    product(
        image: "11.jpg",
        ProductName: "AORUS ATC800 CPU Cooler",
        descreption:
            "Manufacturer Number : GP-ATC800 , External Product ID : 4719331551278 , Brand : AORUS , External Product ID Type : EAN-13 , Compatible with : CPU",
        price: 1800),
    product(
        image: "12.jpg",
        ProductName: "Seagate 4 TB External Hard Disk",
        descreption:
            "Seagate external hard disk delivers a reliable performance. This Seagate 4TB external hard disk is available at Souq.com. The Seagate 4TB External Hard Disk is an excellent choice to back up files. It is equipped with two integrated high-speed USB 3.0 ports on the front that allow you to connect and recharge your USB devices. By installing the provided NTFS drive for Mac computer, this Seagate external hard disk can work interchangeably on both Mac computers and Windows PC without needing to reformat. With a capacity of 4TB, this hard disk gives you the freedom to back up all your digital files under one roof.",
        price: 2000),
    // product(
    //     image: "13.jpg",
    //     ProductName: "Transcend 4 TB External Hard Disk",
    //     descreption: "Transcend 3 TB&External Hard&Drive StoreJet 25H3 USB 3.0 portable hard drive combines the superior performance of USB 3.0, vast storage space, eye-catching enclosure, and a three-stage shock protection system that meets U.S. military drop-test standards. What else can you ask for?&Features - Military-grade shock resistance Fully Compliant with the Hi-Speed USB 2.0 specification, Advanced 3-stage shock protection system, Durable anti-shock rubber outer case, Advanced internal hard drive suspension system, Quick Reconnect Button – after safely removing the hard drive from the system, Press to reconnect the drive without having to unplug and re-plug the USB connector again,One Touch Auto-Backup button.",
    //     price: 1800)
  ];
}
