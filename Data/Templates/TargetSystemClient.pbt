Assets {
  Id: 5487491032554579487
  Name: "TargetSystemClient"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3868429031159465705
      Objects {
        Id: 3868429031159465705
        Name: "TargetSystemClient"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13178956503572807229
        ChildIds: 16719128391267041683
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
        Id: 13178956503572807229
        Name: "TargetSelectorClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -24.999979
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3868429031159465705
        UnregisteredParameters {
          Overrides {
            Name: "cs:TargetZoneRoot"
            ObjectReference {
              SubObjectId: 16719128391267041683
            }
          }
          Overrides {
            Name: "cs:TargetZoneRoot:tooltip"
            String: "root (pivot) of the attached trigger"
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
            Id: 5895304852250207008
          }
        }
      }
      Objects {
        Id: 16719128391267041683
        Name: "TargetZoneRoot"
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
        ParentId: 3868429031159465705
        ChildIds: 12454150160291715662
        ChildIds: 14782415878137263910
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
        Id: 12454150160291715662
        Name: "TargetZoneTrigger"
        Transform {
          Location {
            X: 1500
          }
          Rotation {
          }
          Scale {
            X: 30
            Y: 10
            Z: 10
          }
        }
        ParentId: 16719128391267041683
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 14782415878137263910
        Name: "RayCastOrigin"
        Transform {
          Location {
            Y: 60
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16719128391267041683
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
          IsFilePartition: true
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
