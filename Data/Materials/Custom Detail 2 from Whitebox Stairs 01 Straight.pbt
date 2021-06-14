Assets {
  Id: 13310554214047411953
  Name: "arenaWood"
  PlatformAssetType: 13
  SerializationVersion: 87
  CustomMaterialAsset {
    BaseMaterialId: 12381050650684225153
    ParameterOverrides {
      Overrides {
        Name: "rotate_material"
        Float: 90
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 1
          G: 0.61774838
          B: 0.61
          A: 1
        }
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          X: 1
        }
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
    }
    Assets {
      Id: 12381050650684225153
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_001_uv"
      }
    }
  }
}
