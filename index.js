
import { NativeModules } from 'react-native';

const { RNAppmetricaPushSdk } = NativeModules;

export default {
    init() {
        RNAppmetricaPushSdk.init();
    },
}
