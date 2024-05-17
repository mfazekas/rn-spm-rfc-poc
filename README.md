# What is this?

A POC of simple Swift Package Manager integration for react-native

How to run:
```
cd exmple 
yarn install
cd ios
USE_FRAMEWORKS=dynamic pod install

# Make sure you close and reopen workspace
```

# How it works:

1. The library `.podspec` defines the Swift Package Manager dependency:

https://github.com/mfazekas/rn-spm-rfc-poc/blob/e28ee01f8ba0b440ffd428335df29e46eb619075/rn-spm-rfc-poc.podspec#L42-L50

2. There is a react-native [patchfile](https://github.com/mfazekas/rn-spm-rfc-poc/blob/main/example/patches/react-native%2B0.74.1.patch) implementing the addition of swift package to the workspace, also it adds the dependency to the Pods target of the library

See also [How it works](https://github.com/mfazekas/pods-spm-dep-poc/?tab=readme-ov-file#how-it-works) of a similiar POC demonstrating integrating this feature into cocoapods.

# Limitations/known issues:

- XCode workspace should be closed/reopened for XCode to realize that the pacakge dependency was readded
- When pod install invoked without `USE_FRAMEWORKS=dynamic`  xcode will fail with (duplicate link issue)[https://forums.swift.org/t/objc-flag-causes-duplicate-symbols-with-swift-packages/27926]

# See also

https://github.com/react-native-community/discussions-and-proposals/issues/587



# rn-spm-rfc-poc

POC for SPM RFC for ReactNative

## Installation

```sh
npm install rn-spm-rfc-poc
```

## Usage

```js
import { multiply } from 'rn-spm-rfc-poc';

// ...

const result = await multiply(3, 7);
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
