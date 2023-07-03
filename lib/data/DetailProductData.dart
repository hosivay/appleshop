//
//IPHONE :

//iPhone 14 Images :
import 'package:appleshop/data/ProductData.dart';

const List iphone14 = [
  //images
  "https://media.croma.com/image/upload/v1662703653/Croma%20Assets/Communication/Mobiles/Images/261933_eiuolg.png",
  "https://www.zdnet.com/a/img/resize/c37d8a47a6ac5c5f513567d33d051e77ecd2205f/2023/03/08/cf255c76-a49d-4a0b-a1d9-73b467abec1c/iphone-14-plus-yellow-camera-module.jpg?auto=webp&fit=crop&height=1200&width=1200",
  "https://www.androidauthority.com/wp-content/uploads/2022/10/apple-iphone-14-plus-back-standing-2.jpg",
  "https://www.zdnet.com/a/img/resize/0fa0a807c8d2f4109296e7cf1d41a94df83babc2/2022/09/16/d7526fec-e541-4a7e-b729-020d0fb4020a/iphone-14-4.jpg?auto=webp&fit=crop&height=1200&width=1200",
  "https://fscl01.fonpit.de/userfiles/7695213/image/Apple-iPhone-14-Plus/Apple-iPhone-14-Plus-10.jpg",
];

//iPhone 14 Pro Images :
const List iphone14Pro = [
  //images
  "https://static-www.o2.co.uk/sites/default/files/iphone-14-pro-deep-purple-sku-header-070922.png",
  "https://www.01net.com/app/uploads/2022/09/3506-mea_1400.jpg",
  "https://www.digitaltrends.com/wp-content/uploads/2022/09/iPhone-14-Pro-Back-Purple-Hand.jpg?p=1",
  "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/iphone_13_pro_trusted_reviews_7.jpeg",
];

//iPhone SE Pro Images :
const List iphoneSE = [
  //images
  "https://iphonechi.com/1755-superlarge_default/iphone-se2-256gb-white.jpg",
  "https://sm.mashable.com/mashable_in/photo/default/iphone-se-edit03_4x6z.jpg",
  "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_new-iphone-se-white_04152020_big.jpg.large.jpg",
  "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_new-iphone-se-black-white-product-red-colors_04152020_inline.jpg.large.jpg",
];

//
//IPAD :

//iPad Pro Images :
const List iPadPro = [
  //images
  "https://assets.stickpng.com/images/61d4a5448b51e20004664d4a.png",
  "https://cdn0.vox-cdn.com/hermano/verge/product/image/9586/iPad-SQ.jpg",
  "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-2-202212_FMT_WHH?wid=1280&hei=720&fmt=p-jpg&qlt=95&.v=1667594383218",
  "https://www.apple.com/newsroom/images/product/ipad/standard/apple_ipad-pro-spring21_hero_04202021_big.jpg.large.jpg"
];

//iPad Air Pro Images :
const List iPadAir = [
  //images
  "https://media.cnn.com/api/v1/images/stellar/prod/4-ipad-air-fifth-generation-cnn-underscored.jpg?c=16x9&q=h_720,w_1280,c_fill",
  "https://www.apple.com/newsroom/images/product/ipad/standard/Apple-iPad-Air-hero-color-lineup-220308_big.jpg.slideshow-large_2x.jpg",
  "https://www.cnet.com/a/img/resize/cb2bdc2feef0a8fc1c46784eb07e97b0ab534625/hub/2016/07/01/8c4ea9b8-32b6-4374-94e5-180f942ba2af/apple-ipad-mini-8924-004.jpg?auto=webp&width=1920",
  "https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/p/ipad-mini-select-wifi-gold-201911_3.png"
];

//
//WATCH :

//Watch Ultra Images :
const List watchUltra = [
  //images
  "https://ivenus.in/wp-content/uploads/2022/09/MQEE3_VW_34FRwatch-49-titanium-ultra_VW_34FR_WF_COwatch-face-49-ocean-ultra_VW_34FR_WF_CO_GEO_IN-1.png",
  "https://techcrunch.com/wp-content/uploads/2022/09/apple-watch-ultra-mid-hike.jpg",
  "https://connectthewatts.com/wp-content/uploads/sites/11/2022/09/Apple-Watch-Ultra-Review-3.jpg?quality=82&strip=all&w=1600",
  "https://d.newsweek.com/en/full/2123363/apple-watch-ultra.jpg"
];

//Watch 8 Images :
const List watch8 = [
  //images
  "https://media.croma.com/image/upload/v1685968328/Croma%20Assets/Communication/Wearable%20Devices/Images/262072_nwe2iq.png",
  "https://www.apple.com/newsroom/images/environments/stores/Apple-Fifth-Avenue-New-York-trying-Apple-Watch-Series-8-220916_big.jpg.slideshow-xlarge.jpg",
  "https://cdn.mos.cms.futurecdn.net/CjZ8FA7q7c9cgQSP5U9K2E.jpg",
 
];

//Watch SE Images :
const List watchSE = [
  //images
  "https://ochek.ir/wp-content/uploads/2022/09/MP7U3ref_VW_34FRwatch-44-alum-silver-nc-se_VW_34FR_WF_CO-removebg-preview.png",
  "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MPH73ref_VW_PF+watch-44-alum-starlight-nc-se_VW_PF_WF_CO+watch-face-44-nike-se-coconutmilk-sesame_VW_PF_WF_CO?wid=1400&hei=1400&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1683264824930",
  "https://sm.pcmag.com/pcmag_au/review/a/apple-watc/apple-watch-se-2022_h5f1.jpg"
];

getProduct({required String category, required String productName}) {
  switch (category) {
    case "iPhone":
      if (productName == "iPhone 14") {
        return iphone14;
      } else if (productName == "iPhone 14 Pro") {
        return iphone14Pro;
      } else if (productName == "iPhone SE") {
        return iphoneSE;
      }
      break;
    case "iPad":
      if (productName == "iPad Pro") {
        return iPadPro;
      } else if (productName == "iPad Air") {
        return iPadAir;
      }
      break;
    case "Watch":
      if (productName == "Watch Ultra") {
        return watchUltra;
      } else if (productName == "Watch 8") {
        return watch8;
      } else if (productName == "Watch SE") {
        return watchSE;
      }
      break;
  }
}

getPriceProduct({required String category, required String productName}) {
  switch (category) {
    case "iPhone":
      if (productName == "iPhone 14") {
        return IphoneList[0]["price"];
      } else if (productName == "iPhone 14 Pro") {
        return IphoneList[1]["price"];
      } else if (productName == "iPhone SE") {
        return IphoneList[2]["price"];
      }
      break;
    case "iPad":
      if (productName == "iPad Pro") {
        return IpadList[0]["price"];
      } else if (productName == "iPad Air") {
        return IpadList[1]["price"];
      }
      break;
    case "Watch":
      if (productName == "Watch Ultra") {
        return watchList[0]["price"];
      } else if (productName == "Watch 8") {
        return watchList[1]["price"];
      } else if (productName == "Watch SE") {
        return watchList[2]["price"];
      }
      break;
  }
}
