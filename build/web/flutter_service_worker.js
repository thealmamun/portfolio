'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "d535b9e32c440b0b0319a694fe2de691",
"/": "d535b9e32c440b0b0319a694fe2de691",
"main.dart.js": "271cb9b43e86244f00b7843f54d6b748",
"favicon.png": "74b1a9ad5437f9a291d35f41afb3465d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/mamun.jpg": "bb96db9d805fdf9cd7dd747c6ee74b79",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "06f4234e2438332e48c75e2f1bb2b0f5",
"assets/LICENSE": "1e3b678cabfb63420543822b61d083d2",
"assets/AssetManifest.json": "53b5962696e38acce1de4fa3df78c502",
"assets/FontManifest.json": "b1448b2dfc414e9463b0976526b04622",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/images/frontend/topBgImage.jpg": "e2d2a51c2932205b52f4a5ae1943eb97",
"assets/assets/images/frontend/earthcam/4.png": "151b832c8cca1d8c4bada118fe37c69a",
"assets/assets/images/frontend/earthcam/5.png": "68b9414ba5265f053b5fd5264233adaa",
"assets/assets/images/frontend/earthcam/2.png": "07421daf57e61307e408b7e2fb4a5f6d",
"assets/assets/images/frontend/earthcam/3.png": "82cf7882132de4c9a01318e805407332",
"assets/assets/images/frontend/earthcam/1.png": "3b4e2786ee435bb702eab66534ea9299",
"assets/assets/images/frontend/justhabbo/4.png": "4fb1a705d73b198e80b2d2513b4eacee",
"assets/assets/images/frontend/justhabbo/5.png": "01a648753f3f1486a0b72676820461e9",
"assets/assets/images/frontend/justhabbo/6.png": "80a5f508e57f8a388aae6bcb6115d0e6",
"assets/assets/images/frontend/justhabbo/2.png": "a583e5111967bc7b3af5b182b3d560d4",
"assets/assets/images/frontend/justhabbo/3.png": "4531065f847398cb578c7991b7906389",
"assets/assets/images/frontend/justhabbo/1.png": "cf74c47a1d15f4a81bc4ad0997ab3225",
"assets/assets/images/frontend/user.jpg": "8c20cb58fc3b91cded738b60f2bd712d",
"assets/assets/images/frontend/qjobs/4.png": "faa03ee3f8ad1e2c519ab9dc875e58ab",
"assets/assets/images/frontend/qjobs/5.png": "d294c2fbe26387e1477a3307dd46a5a6",
"assets/assets/images/frontend/qjobs/7.png": "4d9105558402c383474311ca98f6d1a1",
"assets/assets/images/frontend/qjobs/6.png": "560d98864b894e727a23cf9c85606fad",
"assets/assets/images/frontend/qjobs/2.png": "cfe1af32fb21208571641ce765da6383",
"assets/assets/images/frontend/qjobs/3.png": "f02372e19587a98d8925c2484596721e",
"assets/assets/images/frontend/qjobs/1.png": "340ea8041ec5b7fac0e37c6a575794b9",
"assets/assets/images/frontend/mamun.jpg": "bb96db9d805fdf9cd7dd747c6ee74b79",
"assets/assets/icons/envato.jpg": "c42066b3ecd8af382001744966be2eb3",
"assets/assets/icons/upwork-logo.jpg": "8c745875f8079e8cce5f2da7eeae854f",
"assets/assets/icons/freelancer.png": "dd7923a8c15dcd34bd7dc259c9ebf909",
"assets/assets/icons/chat.png": "f7c5c2a8fe6488bfbef2a0a0ee0dd415",
"assets/assets/icons/fiverr.jpeg": "8cae061a5f1b7f08feac80aab8baa759"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
