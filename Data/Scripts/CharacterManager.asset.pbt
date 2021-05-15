Assets {
  Id: 6411265494416794421
  Name: "CharacterManager"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:CharacterWrapperFactory"
        AssetReference {
          Id: 4375794249468866306
        }
      }
      Overrides {
        Name: "cs:Energy"
        Float: 0
      }
      Overrides {
        Name: "cs:MaxEnergy"
        Float: 0
      }
      Overrides {
        Name: "cs:DamageOverTime"
        Float: 0
      }
      Overrides {
        Name: "cs:EnergyOverTime"
        Float: 0
      }
      Overrides {
        Name: "cs:playerId"
        String: ""
      }
      Overrides {
        Name: "cs:EquipmentLibrary"
        ObjectReference {
          SelfId: 5254737402074276010
        }
      }
      Overrides {
        Name: "cs:Energy:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:MaxEnergy:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:DamageOverTime:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:EnergyOverTime:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:playerId:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:playerId:tooltip"
        String: "attached player, stay empty for Npc"
      }
    }
  }
  SerializationVersion: 84
}
