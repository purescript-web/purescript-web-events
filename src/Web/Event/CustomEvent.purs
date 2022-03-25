module Web.Event.CustomEvent where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable)
import Unsafe.Coerce as U
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data CustomEvent :: Type

fromEvent :: Event -> Maybe CustomEvent
fromEvent = unsafeReadProtoTagged "CustomEvent"

toEvent :: CustomEvent -> Event
toEvent = U.unsafeCoerce

foreign import new :: String -> CustomEvent

-- | Create a new `CustomEvent`, storing some data in its `detail` field,
-- | and using defaults for everything else.
new' :: forall a. String -> Nullable a -> CustomEvent
new' ty det = newOptions ty { detail: det, bubbles: false, cancelable: false, composed: false }

-- | Create a new `CustomEvent` with all of its constructor's options exposed.
foreign import newOptions :: forall a. String -> { detail :: Nullable a , bubbles :: Boolean, cancelable :: Boolean, composed :: Boolean } -> CustomEvent

foreign import detail :: forall a. CustomEvent -> Nullable a
