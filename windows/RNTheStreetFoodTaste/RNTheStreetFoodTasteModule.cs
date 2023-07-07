using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Street.Food.Taste.RNTheStreetFoodTaste
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTheStreetFoodTasteModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTheStreetFoodTasteModule"/>.
        /// </summary>
        internal RNTheStreetFoodTasteModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTheStreetFoodTaste";
            }
        }
    }
}
