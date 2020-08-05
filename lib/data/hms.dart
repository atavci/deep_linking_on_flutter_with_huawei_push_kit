class HMS {
  final String name;
  final String url;
  final HMSGroup hmsGroup;

  const HMS(this.name, this.url, this.hmsGroup);

  static const Map<HMSGroup, List<HMS>> HMSMap = {
    HMSGroup.APP_SERVICES : _appServicesList,
    HMSGroup.MEDIA : _mediaServicesList,
    HMSGroup.AI : _aiServicesList,
    HMSGroup.GRAPHICS : _graphicsServicesList,
    HMSGroup.SMART_DEVICE : _smartDeviceServicesList,
    HMSGroup.SECURITY : _securityServicesList,
    HMSGroup.SYSTEM : _systemServicesList
  };

  static const List<HMS> _appServicesList = [
    HMS('Account Kit','https://developer.huawei.com/consumer/en/hms/huawei-accountkit',HMSGroup.APP_SERVICES),
    HMS('Ads Kit','https://developer.huawei.com/consumer/en/hms/huawei-adskit',HMSGroup.APP_SERVICES),
    HMS('Analytics Kit','https://developer.huawei.com/consumer/en/hms/huawei-analyticskit',HMSGroup.APP_SERVICES),
    HMS('App Linking','https://developer.huawei.com/consumer/en/doc/development/AppGallery-connect-Guides/agc-applinking-introduction',HMSGroup.APP_SERVICES),
    HMS('Awareness Kit','https://developer.huawei.com/consumer/en/hms/huawei-awarenesskit',HMSGroup.APP_SERVICES),
    HMS('Drive Kit','https://developer.huawei.com/consumer/en/hms/huawei-drivekit',HMSGroup.APP_SERVICES),
    HMS('Dynamic Tag Manager','https://developer.huawei.com/consumer/en/hms/huawei-dynamic-tag-manager',HMSGroup.APP_SERVICES),
    HMS('Game Service','https://developer.huawei.com/consumer/en/hms/huawei-game',HMSGroup.APP_SERVICES),
    HMS('Identity Kit','https://developer.huawei.com/consumer/en/hms/huawei-identitykit',HMSGroup.APP_SERVICES),
    HMS('In-App Purchases','https://developer.huawei.com/consumer/en/hms/huawei-iap/',HMSGroup.APP_SERVICES),
    HMS('Location Kit','https://developer.huawei.com/consumer/en/hms/huawei-locationkit',HMSGroup.APP_SERVICES),
    HMS('Map Kit','https://developer.huawei.com/consumer/en/hms/huawei-MapKit',HMSGroup.APP_SERVICES),
    HMS('Push Kit','https://developer.huawei.com/consumer/en/hms/huawei-pushkit',HMSGroup.APP_SERVICES),
    HMS('Quick App','https://developer.huawei.com/consumer/en/quickApp',HMSGroup.APP_SERVICES),
    HMS('Scan Kit','https://developer.huawei.com/consumer/en/hms/huawei-scankit/',HMSGroup.APP_SERVICES),
    HMS('Site Kit','https://developer.huawei.com/consumer/en/hms/huawei-sitekit/',HMSGroup.APP_SERVICES),
    HMS('Wallet Kit','https://developer.huawei.com/consumer/en/hms/huawei-walletkit/',HMSGroup.APP_SERVICES)
  ];

  static const List<HMS> _mediaServicesList = [
    HMS('Audio Engine','https://developer.huawei.com/consumer/en/audioengine',HMSGroup.MEDIA),
    HMS('Audio Kit','https://developer.huawei.com/consumer/en/hms/huawei-audiokit/',HMSGroup.MEDIA),
    HMS('Camera Kit','https://developer.huawei.com/consumer/en/CameraKit',HMSGroup.MEDIA),
    HMS('Image Kit','https://developer.huawei.com/consumer/en/hms/huawei-imagekit/',HMSGroup.MEDIA),
    HMS('Panorama Kit','https://developer.huawei.com/consumer/en/hms/huawei-panoramakit',HMSGroup.MEDIA),
    HMS('Video Kit','https://developer.huawei.com/consumer/en/hms/huawei-videokit/',HMSGroup.MEDIA),
    HMS('WisePlay DRM','https://developer.huawei.com/consumer/en/hms/huawei-wiseplay',HMSGroup.MEDIA)
  ];

  static const List<HMS> _aiServicesList = [
    HMS('ML Kit','https://developer.huawei.com/consumer/en/hms/huawei-mlkit',HMSGroup.AI),
    HMS('HUAWEI HiAI Foundation','https://developer.huawei.com/consumer/en/hiai#Foundation',HMSGroup.AI),
    HMS('HUAWEI HiAI Engine','https://developer.huawei.com/consumer/en/hiai#Engine',HMSGroup.AI),
    HMS('HUAWEI HiAI Service','https://developer.huawei.com/consumer/en/hiai#Service',HMSGroup.AI)
  ];

  static const List<HMS> _graphicsServicesList = [
    HMS('Accelerate Kit','https://developer.huawei.com/consumer/en/hms/huawei-acceleratekit/',HMSGroup.GRAPHICS),
    HMS('AR Engine','https://developer.huawei.com/consumer/en/hms/huawei-arengine/',HMSGroup.GRAPHICS),
    HMS('Computer Graphics Kit','https://developer.huawei.com/consumer/en/hms/huawei-computer-graphics/',HMSGroup.GRAPHICS),
    HMS('Game Kit','https://developer.huawei.com/consumer/en/game-kit',HMSGroup.GRAPHICS),
    HMS('Scene Kit','https://developer.huawei.com/consumer/en/hms/huawei-scenekit/',HMSGroup.GRAPHICS)
  ];

  static const List<HMS> _smartDeviceServicesList = [
    HMS('CaaS Kit','https://developer.huawei.com/consumer/en/caas-kit',HMSGroup.SMART_DEVICE),
    HMS('Cast+ Kit','https://developer.huawei.com/consumer/en/cast-kit',HMSGroup.SMART_DEVICE),
    HMS('DeviceVirtualization Kit','https://developer.huawei.com/consumer/en/device-virtualization',HMSGroup.SMART_DEVICE),
    HMS('Health Kit','https://developer.huawei.com/consumer/en/hms/huawei-healthkit',HMSGroup.SMART_DEVICE),
    HMS('HUAWEI HiHealth','https://developer.huawei.com/consumer/en/huaweihealth',HMSGroup.SMART_DEVICE),
    HMS('OneHop Kit','https://developer.huawei.com/consumer/en/onehop-kit',HMSGroup.SMART_DEVICE),
    HMS('Share Kit','https://developer.huawei.com/consumer/en/share-kit',HMSGroup.SMART_DEVICE)
  ];

  static const List<HMS> _securityServicesList = [
    HMS('FIDO','https://developer.huawei.com/consumer/en/hms/huawei-fido',HMSGroup.SECURITY),
    HMS('Safety Detect','https://developer.huawei.com/consumer/en/hms/huawei-safetydetectkit/',HMSGroup.SECURITY)
  ];

  static const List<HMS> _systemServicesList = [
    HMS('hQUIC Kit','https://developer.huawei.com/consumer/en/hms/huawei-hQUIC/',HMSGroup.SYSTEM),
    HMS('Nearby Service','https://developer.huawei.com/consumer/en/hms/huawei-nearbyservice',HMSGroup.SYSTEM),
    HMS('Wireless Kit ','https://developer.huawei.com/consumer/en/hms/huawei-wirelesskit/',HMSGroup.SYSTEM)
  ];
}

enum HMSGroup {
  APP_SERVICES,
  MEDIA,
  GRAPHICS,
  AI,
  SMART_DEVICE,
  SECURITY,
  SYSTEM
}

extension HMSGroupExtension on HMSGroup {
  String get text {
    switch (this) {
      case HMSGroup.APP_SERVICES:
        return "App Services";
      case HMSGroup.MEDIA:
        return "Media";
      case HMSGroup.GRAPHICS:
        return "Graphics";
      case HMSGroup.AI:
        return "AI";
      case HMSGroup.SMART_DEVICE:
        return "Smart Device";
      case HMSGroup.SECURITY:
        return "Security";
      case HMSGroup.SYSTEM:
        return "System";
      default:
        return "Other";
    }
  }
}


