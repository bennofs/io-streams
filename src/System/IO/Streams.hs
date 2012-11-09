{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}

-- | This module is a top-level convenience module which re-exports most of the
-- @io-streams@ library.
--
-- It is recommended to import this module qualified, as follows:
--
-- @
-- import           "System.IO.Streams" ('InputStream', 'OutputStream')
-- import qualified "System.IO.Streams" as Streams
-- @
--
-- For an in-depth tutorial on how to use @io-streams@, please see the
-- "System.IO.Streams.Tutorial" module.
--
module System.IO.Streams
 ( -- * Stream types
   InputStream
 , OutputStream

   -- * Creating streams
 , makeInputStream
 , makeOutputStream

   -- * Primitive stream operations
 , read
 , unRead
 , peek
 , write
 , atEOF

   -- * Connecting streams together
 , connect
 , connectTo
 , supply
 , supplyTo

   -- * Thread safety \/ concurrency
 , lockingInputStream
 , lockingOutputStream

   -- * Utility streams
 , nullInput
 , nullOutput

   -- * Batteries included
 , module System.IO.Streams.Builder
 , module System.IO.Streams.ByteString
 , module System.IO.Streams.Combinators
 , module System.IO.Streams.Handle
 , module System.IO.Streams.File
 , module System.IO.Streams.List
 , module System.IO.Streams.Zlib
 ) where

------------------------------------------------------------------------------
import           Prelude ()

------------------------------------------------------------------------------
import           System.IO.Streams.Internal

import           System.IO.Streams.Builder
import           System.IO.Streams.ByteString
import           System.IO.Streams.Combinators
import           System.IO.Streams.File
import           System.IO.Streams.Handle
import           System.IO.Streams.List
import           System.IO.Streams.Zlib
