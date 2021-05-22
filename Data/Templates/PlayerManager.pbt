Assets {
  Id: 14024051966645894366
  Name: "PlayerManager"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1219088512468393924
      Objects {
        Id: 1219088512468393924
        Name: "PlayerManager"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12011762392894326556
        ChildIds: 625387505909724688
        UnregisteredParameters {
          Overrides {
            Name: "cs:ManagerServer"
            ObjectReference {
              SubObjectId: 12011762392894326556
            }
          }
          Overrides {
            Name: "cs:ManagerServer:tooltip"
            String: "ref to manager used by StaticPlayerAttach for Init"
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12011762392894326556
        Name: "CharacterManager"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1219088512468393924
        UnregisteredParameters {
          Overrides {
            Name: "cs:EnergyOverTime"
            Float: 2
          }
          Overrides {
            Name: "cs:Energy"
            Float: 30
          }
          Overrides {
            Name: "cs:MaxEnergy"
            Float: 40
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6411265494416794421
          }
        }
      }
      Objects {
        Id: 625387505909724688
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1219088512468393924
        ChildIds: 700772705533100372
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 700772705533100372
        Name: "CharacterManagerListenerClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 625387505909724688
        UnregisteredParameters {
          Overrides {
            Name: "cs:CharacterManager"
            ObjectReference {
              SubObjectId: 12011762392894326556
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 1219088512468393924
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 516634362093260617
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 85
}
