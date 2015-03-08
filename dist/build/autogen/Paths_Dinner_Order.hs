module Paths_Dinner_Order (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/anastasia/Haskell/Dinner-Order/.cabal-sandbox/bin"
libdir     = "/home/anastasia/Haskell/Dinner-Order/.cabal-sandbox/lib/x86_64-linux-ghc-7.8.3/Dinner-Order-0.1.0.0"
datadir    = "/home/anastasia/Haskell/Dinner-Order/.cabal-sandbox/share/x86_64-linux-ghc-7.8.3/Dinner-Order-0.1.0.0"
libexecdir = "/home/anastasia/Haskell/Dinner-Order/.cabal-sandbox/libexec"
sysconfdir = "/home/anastasia/Haskell/Dinner-Order/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Dinner_Order_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Dinner_Order_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "Dinner_Order_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Dinner_Order_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Dinner_Order_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
