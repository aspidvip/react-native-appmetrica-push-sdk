
import { NativeModules, Platform } from 'react-native';

const { RNAppmetricaPushSdk } = NativeModules;

export default {
    init(token) {

        if(Platform.OS === 'android') {
            RNAppmetricaPushSdk.init();
        } else {
            RNAppmetricaPushSdk.init(token);
        }
    },
}
