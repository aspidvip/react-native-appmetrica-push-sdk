
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableMap;
import com.yandex.metrica.push.YandexMetricaPush;

public class RNAppmetricaPushSdkModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAppmetricaPushSdkModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNAppmetricaPushSdk";
  }

  @ReactMethod
  public void init(ReadableMap configMap) {
    YandexMetricaPush.init(reactContext);
  }
}