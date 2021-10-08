Assets {
  Id: 3754368200692053445
  Name: "Custom Terrain - Desert - Copy"
  PlatformAssetType: 13
  SerializationVersion: 100
  CustomMaterialAsset {
    BaseMaterialId: 17740681967006783255
    ParameterOverrides {
      Overrides {
        Name: "direction"
        Bool: false
      }
      Overrides {
        Name: "splotchiness"
        Float: 0.167256817
      }
      Overrides {
        Name: "density"
        Float: 0.0872444957
      }
      Overrides {
        Name: "material_scale"
        Float: 20
      }
      Overrides {
        Name: "edge_wear"
        Float: 0.493460864
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.504
          G: 0.452788889
          B: 0.388584
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.536544
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.823576212
          B: 0.279999971
          A: 1
        }
      }
    }
    Assets {
      Id: 17740681967006783255
      Name: "Terrain - Desert"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_rock-sand_001_wa"
      }
    }
  }
}
