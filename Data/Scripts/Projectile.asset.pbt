Assets {
  Id: 12855643831291430446
  Name: "Projectile"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:velocity"
        Float: 0
      }
      Overrides {
        Name: "cs:Target"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:ArrivalTime"
        Float: 0
      }
      Overrides {
        Name: "cs:Target:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:ArrivalTime:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:Target:tooltip"
        String: "projectile target, initialized at spawn, do not set in template"
      }
      Overrides {
        Name: "cs:ArrivalTime:tooltip"
        String: "arrival time, calculated at spawn, do not set in template"
      }
      Overrides {
        Name: "cs:velocity:tooltip"
        String: "projectile velocity: cm/s, used to calculate arrival time at spawn."
      }
    }
  }
  SerializationVersion: 84
}
