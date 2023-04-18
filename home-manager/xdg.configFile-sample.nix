{ pkgs, ... }: {

  xdg.configFile."kopia/repository.config".text = ''
    {
      "storage": {
        "type": "s3",
        "config": {
          "bucket": "kopia",
          "prefix": "x13",
          "endpoint": "99fc41d96d7d433b8f94cd846947655c.r2.cloudflarestorage.com",
          "accessKeyID": "72bac458c8469dbf9ccb7397ce72b645",
          "secretAccessKey": "3367ab00586d45788c0b208c1d1cb90598d9f2958218769587466b44db186da9",
          "sessionToken": "",
          "region": "auto"
        }
      },
      "caching": {
        "cacheDirectory": "../../.cache/kopia/81b0c68aa18bfbc7",
        "maxCacheSize": 5242880000,
        "maxMetadataCacheSize": 5242880000,
        "maxListCacheDuration": 30
      },
      "hostname": "dustin-krysak",
      "username": "dustin",
      "description": "Cloudflare-B2",
      "enableActions": false,
      "formatBlobCacheDuration": 900000000000
    }
  '';
}
