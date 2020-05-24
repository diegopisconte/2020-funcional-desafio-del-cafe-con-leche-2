import PdePreludat hiding (($))
import Library
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "$" $ do
    it "aplica una funcion con sus parametros" $ do
      (length $ "hola") `shouldBe` 4
      (($) take 3 [1, 2, 3, 4, 5]) `shouldBe` [1, 2, 3]