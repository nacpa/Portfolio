'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "bdd45c643e14279961fd55fa7407971c",
".git/config": "2e4d07f54b1da5a15ea09bbb13ca058e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "4e67a670805d12327f7398797dbecfc5",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "2a5971889028e985c5b0dfd85d9f4426",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "48d4285cebe9c9d1fb0782311f5617d9",
".git/logs/refs/heads/main": "563cd5f203b85872dc77fbfd2b579f7c",
".git/logs/refs/remotes/origin/main": "8bf1e88196b7b48170862302417021f2",
".git/objects/03/93dc410e13ba78de80c3f72de9f699f92779f5": "9c539951a58f1dc59bbf5531a6bd00b1",
".git/objects/08/c6435b125a480f788af86c1611e5ba941d9b84": "f58520d7a2f4000c711e1ca4954277d6",
".git/objects/09/24de8a1b6a7ed4187d062efdc761f6cbd2522f": "786796f60459d41e817423c9b438e411",
".git/objects/0c/08d23b17b99d29c4b985de55600a8941ba7850": "75f27d19356205d3ee24d413cde967f4",
".git/objects/0c/814d718a57f54fbb5ef8e680b3cf443d2b22e5": "9803c0ecbc616961b53dd09b23ae6f9f",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/14/265ee388857c090c684a6f29811a24084dd1d3": "068ab1c9e7b7d0e86ef6555fe57e3e28",
".git/objects/14/e2a7824e39f7147b30f2ed9e8fb7b56c140a59": "a02e3911b9756ceeea08ed88becfe13b",
".git/objects/15/0cdbcbe3abe1640298055be329b9d73e1a8dd6": "5a8ea75b2baee55c6402cb8cc3792dbb",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/2c/c1698a5ecc8892955c09f242a75190878b96a2": "141f51d62c65c837fd890dc4620775d6",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/3f/1ab88c92d016be8c09ddd50d6bd714dab2428e": "510d145a2659c680aa5019a3e1316e1a",
".git/objects/3f/451c54bbcf89de06848d093e3272ffa47c7cd7": "b976524879518d1228c129ea1f16c92d",
".git/objects/40/b8cc9ad81e720adeffade426f791666ac916d3": "bbbb81cd8944aef027f480acaf1de5f1",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/51/7e9e6b28235f6242d177d2717bf48708a4249b": "6276d2b6d8b8992b504c877783aefc1a",
".git/objects/58/d029972cc15845e0f5d4604ef4c14ea7efb1b7": "0ada14a42ddcc614ebd39dee8715fbbf",
".git/objects/59/07381ccda860eda9a9f9bbcd68d93c0cbc79a2": "e73511da840a8b231b92e42c90392b35",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/5f/b06d0113bf07baa198ae3a246a88b70a48ec98": "192dade75cfc9d9a181efb76c266ea38",
".git/objects/60/441d32f34f03432b15633faf69e230f6830c49": "7bf94c812f416d3fd7f2886eb41c1a06",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/77/fd4f9a62efd73646279bc6105a4aac02ed99a1": "34e464ea4a5b601b58767922da62b6f1",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7b/e3463ae60f3d3b2c664ebcca923f4393781be7": "bab2c1b3158cffc1689b784af450963a",
".git/objects/7c/d9007deb5b8ea5fc46e17916580088fca71838": "30f95823b5cc58d6c7ddcc00887f7963",
".git/objects/81/4d25f859ee67d9bd3488c79a0e336f833f2c28": "fee06985cb5662c57a6701be65ce0b9b",
".git/objects/83/0a29083638d880345a63b45af91b6a3070d00a": "43f2bc6ed60d8769300ae75afc6de05a",
".git/objects/88/b4fac2494af456ca8098d08fcdf85723042a7a": "deedf4c5309d86ba95daa4ffd5916e7f",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8d/0a121171ceb6126ae65913cc82236675ac63d1": "752b6f4ec050587cfd1129d7e14ce060",
".git/objects/8f/a4e494ebbcc18ea71f373e4d767f2cee60c2a6": "d34de3746d1d5e77637b9e3fb5fde505",
".git/objects/90/eee9937b0edceb46ff7ec211fa9857e792200b": "dbcf75fbce1d55dd633c47f34809e35b",
".git/objects/95/562de6994f3fc506bcc8582faad7299bd837e5": "3bf502906f9e894b5311e89c27fdc594",
".git/objects/96/88161a2299351c41989a04bd1e513c3cc09b4a": "2ad3c9e48fd04fca239c154482c9c70e",
".git/objects/9d/9349ce15023170f8b31fec3b947de6b790360a": "a3ffd6baea89383a1758030ca00c204e",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b2/98172dad650bc91d02776a532e92e1bb647689": "f70c73b623926d88f917f0e6657a0a43",
".git/objects/b5/ae2efd3e55daa4be2dc9598460a34723016d8b": "474490a0398aa47bdf0a30cd441af2d8",
".git/objects/b6/7d72673547debd26014543974a4dd4f9c1ef96": "00dca72256bad83c4f875ce4804f9eea",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/4b01e7d0d3a083894bef5591aa2e498ca4efcb": "6bc3f8d9d10889a11c5e965388fdcb89",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/c7/3a27ef82bb9d44feb1254e72dbefc564489da7": "3281c807e51ab917c5fdc37551bfab17",
".git/objects/c7/418817439b2f071c93a4a6cee831e996123c0b": "a973381dec3e0988db3e91122a03c303",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fd/cdc08f56257a4daa3ee5e476b901a44505a6fa": "b3c43be4c3e0e742469ea4d9b785337f",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/ORIG_HEAD": "f38d56aa3a5fd7e6cbe8f265de3b1d70",
".git/refs/heads/main": "71bc8234c116bdf41fe638e9e0503589",
".git/refs/remotes/origin/main": "71bc8234c116bdf41fe638e9e0503589",
"assets/AssetManifest.json": "50b7133b61d1e2cf78878337a3ebe21a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/images/img.jpg": "74a5b17614d413ab745bb7f60ebc986a",
"assets/images/img.png": "83c1c19976a1c0aa67cc01041ca6fb02",
"assets/images/profile.jpg": "f1d485dd7fce7ac2f7e15307a5e7dbc9",
"assets/NOTICES": "cf6223e4d85cee76b75a4ebc692149be",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "766c8cc582887d79fd06bb0d7caf09e0",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "afc76ec6b01703bcbba52324dcb8dc9a",
"/": "afc76ec6b01703bcbba52324dcb8dc9a",
"main.dart.js": "26b81f61d0ff3a0a678cef9040d7cc77",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006",
"_config.yml": "932865e374757d33e321eeb2d5e88b6b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
