
# react-native-the-street-food-taste

## Getting started

`$ npm install react-native-the-street-food-taste --save`

### Mostly automatic installation

`$ react-native link react-native-the-street-food-taste`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-street-food-taste` and add `RNTheStreetFoodTaste.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTheStreetFoodTaste.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTheStreetFoodTastePackage;` to the imports at the top of the file
  - Add `new RNTheStreetFoodTastePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-street-food-taste'
  	project(':react-native-the-street-food-taste').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-street-food-taste/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-street-food-taste')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTheStreetFoodTaste.sln` in `node_modules/react-native-the-street-food-taste/windows/RNTheStreetFoodTaste.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Street.Food.Taste.RNTheStreetFoodTaste;` to the usings at the top of the file
  - Add `new RNTheStreetFoodTastePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTheStreetFoodTaste from 'react-native-the-street-food-taste';

// TODO: What to do with the module?
RNTheStreetFoodTaste;
```
  