--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BlockArguments #-}
-- import           Data.Monoid (mappend)
import Control.Monad (forM_)
import           Hakyll hiding (withTags)
import Text.Pandoc.Options (WriterOptions(..), HTMLMathMethod(..))

hakyllConfiguration :: Configuration
hakyllConfiguration = defaultConfiguration
  { providerDirectory = "src"
  , destinationDirectory = "docs" }

pandocRender :: Item String -> Compiler (Item String)
pandocRender = renderPandocWith
  defaultHakyllReaderOptions
  defaultHakyllWriterOptions
    { writerHTMLMathMethod = MathJax "" }

pandocCompile :: Compiler (Item String)
pandocCompile = pandocCompilerWith
  defaultHakyllReaderOptions
  defaultHakyllWriterOptions
    { writerHTMLMathMethod = MathJax "" }

root :: String
root = "https://m2fonda-gt.github.io/"

--------------------------------------------------------------------------------
main :: IO ()
main = hakyllWith hakyllConfiguration $ do
    match "lectures/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    -- Simple files
    match "*.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompile
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler
