'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "a8d5b56a4b634971b8d76d037455be4a",
".git/config": "920a11de313bfb8d93d81f4a3a5b71b6",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
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
".git/index": "81305e6a87c5c08c4201a82e6918a85b",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "d02ceba502757091204c12d58fca5ac6",
".git/logs/refs/heads/master": "d02ceba502757091204c12d58fca5ac6",
".git/objects/01/bcca7d1c23955f7aeda6a269b1b7f540802096": "635a6822e2a56f7f333d54c66b0234db",
".git/objects/02/ecc15608c99370acff7f3764fb051badd7d63f": "a6fc7f3fa0601a399656144a69f4cd93",
".git/objects/07/4f2a42ea7a443472828fba34493677c5ad0e91": "17c87bb31fbe8e892b8c42ec810d8f34",
".git/objects/07/d1d66a61f182c5ebcdd5e5061b8de4a4a9283d": "a7d205ef50f7cb8a697cbb9d1ecf5fcf",
".git/objects/09/ec5a64f0ad8895336c58520f27601f0a649f7a": "3e8ab0e3be076b82f324bf8ef4b82a7b",
".git/objects/0c/fb4d7cc89919a8db2df598af92d9fbeaac24fd": "bc1fcd6858b27a096321edebb6bf7b84",
".git/objects/2a/9142826bc9f958ce53e7027ed8dce55275e6cd": "f49e4c1774ea3e5cda518f3bb18dda71",
".git/objects/2a/e36d3afad15711e3ac9f381449d8506307c258": "16553e58c048e24780f2f87917caa774",
".git/objects/2d/890aefe1599f5e511ad98b24a2a25415422238": "753320393f12e4b63810b8adcb587470",
".git/objects/2d/d797f37a0a06cdbb15af2d8e998d8da2a35a4b": "13d1d949e3bc313ecc281b2b80f806c2",
".git/objects/30/6dac5ed8d40c1a67b51105b2c459a386061bc3": "0a17491a92c8dee602194b7eabdb73a1",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/3e/ba013197f0b97c9e6a0d9859b56a8f739d1878": "afd34097c6a6c55574b9bd2deeb24e3a",
".git/objects/45/d413897e0456df579717419951a6f0342e5796": "3b45fa130b2df3eb07ca9d3cd89958e4",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/17c78c31e22d05dad126f3bf977f91a4cdc41f": "4df46ddf481f6747e3ad543252538194",
".git/objects/49/697e0557d98e29535f74db1d16c46bc7bb5df9": "7e0e0ee5e2a096e9d78e0eb5e1fd4e8b",
".git/objects/4c/a2a7c226d2c3e26f0b9dde74214486d0baa896": "734657b1f27c72d07dd9e52a25c020c1",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/67/bd65ce59cca528fa87f5b9068f7ca39e414233": "895981528464cae9ab6c45761960a6f4",
".git/objects/68/45bf5eacb234963f8693c1e57c216ef0499506": "25367df12ea24d95364b392726991a97",
".git/objects/6c/da56caed5c153e0615375ae071b9ba89932fe5": "f82a5bc60f00ba335147ab7beb238234",
".git/objects/6e/da295e4e8819142883fb6934a40e12b73ddefa": "7020c56cdf40f0f555b856d27459d5de",
".git/objects/73/63819b595df0484f30e3f58dc88c9b89eb9cde": "6a236c665a6e116ce3843158b25ebfc9",
".git/objects/7d/141d3b3d5bc9d3abacc9f82541521133e00367": "10270eaf34b98b8536a7b89730cac9df",
".git/objects/83/0e3d19e7f2ff19bbb4b955e3a38e3328837e12": "4412f19a8aebd49e1c2fb821b641e232",
".git/objects/87/71bb8925ea6868181c9cca9cd0deb36b698b01": "41b46281c938d2e638c0c1279f4fc4b4",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/02613b97bd2dffd0e9db03e2c4b069de371649": "f10d27331e9224a9dc97664f07ce26a4",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/96/5f268e91b7f468ea4ded85a8f2abcddfe1f5a9": "6cde620475753acf951a3fbb6b42aca1",
".git/objects/a4/8d0d131d799dafde8f040f03b873abc366119b": "e6f70460d40005de1a490ccf395465f0",
".git/objects/a8/234e78324011301c932efde8dd789fba10495a": "5ad9ca983e505191e13f526cf3be6ade",
".git/objects/ae/b1c92ab186c898ffb8f634a6d2c0c1c43d0a61": "0e212d9a9668b204f7a8c8b5c91a38c1",
".git/objects/b3/8079136a161dfbdbafa7028df399b78eac9ea5": "ae36b9a34f750899d40e6a1e2ff46d70",
".git/objects/b5/be551ae40c32697073895416df45c480a0e430": "80c261a02ad10ba3dda42fe176010e11",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/595d208ce12f026bb890e7cd528a06010d360b": "9f48aedec305dd58017dfe9b1871118e",
".git/objects/bd/509e0391409b2b70fd2c7c017d7a40b9e00e28": "7f28427a270bdb2c7c1e6547acda4c96",
".git/objects/c1/4c48baaaa1ded51979b1bcb5ef2690c8e13f24": "44eb150ef280f597c4d782894e1fbcab",
".git/objects/c7/9d79066e4b54bbc924d263c7dc402715e59abc": "24cdc91f0ce8b6ddbf22e6b44637975e",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/df/afae31a30e9729d4970ba51b3a543afb81d332": "0dba3a1d6755c510de03a0e6880fc178",
".git/objects/e4/7acedbf9fc31b57502770e07d6f595aad39dad": "577b37e52c9f0ad7ab3048902fdd7c3f",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e8/55dc987b0db3ccd24a8869a087233a0e124f27": "9b242467f4dfe05ce7d2727a68a1ea66",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/dbfb30cd2fa602b6188df22092394b430c97e3": "4583d733d0df5c09b2fac15ae2b293fb",
".git/objects/f0/2a0557b79a2dfd776a3be7832696e5b9f18c83": "5b2082c8b76e426eb31ac7b984280be0",
".git/objects/f6/a79936b2c65f33f8ce6afb76ff87fb544da93e": "bf12259a00269b48081203e10c21eec0",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/refs/heads/master": "d63c95b611e7d2c024a5221e355eb4b5",
"assets/AssetManifest.bin": "7103e1fe31b2081100a5c510390f39ab",
"assets/AssetManifest.json": "d9bfa1f51640010faebbe8e60de1d68c",
"assets/assets/images/allstar.jpg": "44f385f90e680e45da0a80205d415e80",
"assets/assets/images/blackshirt.jpg": "bbbc1317b6ac8ae83e7e888e01f542d4",
"assets/assets/images/blackshirt2.jpg": "904d056ec3b6505e5d881dcddb5ee9ca",
"assets/assets/images/cargo.jpg": "1d0178fc52ff8ee1d7f02db184baf49e",
"assets/assets/images/greyshirt.jpg": "9ed0cb30b60bca132df7793a281ad5bc",
"assets/assets/images/hoodie.jpg": "bb259d2c6cc1d55c159737e3e8556fab",
"assets/assets/images/sneaker.jpg": "38b6aa0296c1b4415cd77ff6ec709a26",
"assets/assets/images/watch.jpg": "ce09e3df5a934f2b92add3837817091c",
"assets/assets/images/watch2.jpg": "a9beb4ea1d8498a32a5dabd314946d3c",
"assets/assets/images/watch3.jpg": "1010b56ff67bdc3a46f8b45e68c502c2",
"assets/assets/images/whiteshirt.jpg": "504c3ddc7d5e1e76fee75d79f537cce7",
"assets/assets/images/whiteshirt2.jpg": "d74ab0badb7147019f3ce94ad2077627",
"assets/assets/logos/BEETS.png": "ae45490da7bb86495974537e0be188f5",
"assets/assets/logos/beets_2.png": "c8cf0dae937dfd7702c0d45e3f442e68",
"assets/assets/logos/beets_3.png": "b7a4e27628059cc84ad5e12667cfc57b",
"assets/assets/logos/beets_4.png": "9e5f5865f44705c8d262fd84df899fa1",
"assets/assets/logos/BEETS_HEADER.png": "16a11a066c03e9efb639b8cf02c216d6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "a31767254efe5514531de245969789cc",
"assets/NOTICES": "c97ced148362605e351f2d0d290c150e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f1bcc4a1f94b67884325de4c98e5a921",
"/": "f1bcc4a1f94b67884325de4c98e5a921",
"main.dart.js": "7e4d7dcb5937d118d671c6d6485e4774",
"manifest.json": "a55833e1b4bcfd54c9a8c9cd36a04e9c",
"version.json": "fa070a98d27ba27372e011e1e64ffaec"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
