# react-native-appmetrica-push-sdk

Дополнение к библиотеки react-native-appmetrica для инициализации Push SDK iOS & Android.
Для запуска необходима библиотека react-native-appmetrica.
Работает только с firebase!!!

## Getting started

`$ yarn add react-native-appmetrica`
`$ yarn add react-native-appmetrica-push-sdk`

## Usage

```javascript
import RNAppmetricaPushSdk from "react-native-appmetrica-push-sdk";

### example for Android

const InitAppMetrica = () => {
    AppMetrica.activate({
    apiKey: '...KEY...',
    sessionTimeout: 120,
    firstActivationAsUpdate: true,
    });

    NAppmetricaPushSdk.init();
}

### example for iOS

const InitAppMetrica = () => {
    AppMetrica.activate({
    apiKey: '...KEY...',
    sessionTimeout: 120,
    firstActivationAsUpdate: true,
    });
    const deviceToken = await messaging().getToken();
    RNAppmetricaPushSdk.init(deviceToken);
}

```
