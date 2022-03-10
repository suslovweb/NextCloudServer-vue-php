/******/ (function() { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./apps/settings/src/apps.js":
/*!***********************************!*\
  !*** ./apps/settings/src/apps.js ***!
  \***********************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _service_rebuild_navigation_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./service/rebuild-navigation.js */ "./apps/settings/src/service/rebuild-navigation.js");

window.OC.Settings = window.OC.Settings || {};
window.OC.Settings.Apps = window.OC.Settings.Apps || {
  rebuildNavigation: _service_rebuild_navigation_js__WEBPACK_IMPORTED_MODULE_0__["default"]
};

/***/ }),

/***/ "./apps/settings/src/service/rebuild-navigation.js":
/*!*********************************************************!*\
  !*** ./apps/settings/src/service/rebuild-navigation.js ***!
  \*********************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/axios */ "./node_modules/@nextcloud/axios/dist/index.js");
/* harmony import */ var _nextcloud_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/router */ "./node_modules/@nextcloud/router/dist/index.js");


/* harmony default export */ __webpack_exports__["default"] = (function () {
  return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].get((0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_1__.generateOcsUrl)('core/navigation', 2) + '/apps?format=json').then(function (_ref) {
    var data = _ref.data;

    if (data.ocs.meta.statuscode !== 200) {
      return;
    }

    var addedApps = {};
    var navEntries = data.ocs.data;
    var container = document.querySelector('#navigation #apps ul'); // remove disabled apps

    navEntries.forEach(function (entry) {
      if (!container.querySelector('li[data-id="' + entry.id + '"]')) {
        addedApps[entry.id] = true;
      }
    });
    container.querySelectorAll('li[data-id]').forEach(function (el, index) {
      var id = el.dataset.id; // remove all apps that are not in the correct order

      if (!navEntries[index] || navEntries[index] && navEntries[index].id !== id) {
        el.remove();
        document.querySelector("#appmenu li[data-id=".concat(id, "]")).remove();
      }
    });
    var previousEntry = {}; // add enabled apps to #navigation and #appmenu

    navEntries.forEach(function (entry) {
      if (container.querySelector("li[data-id=\"".concat(entry.id, "\"]")) === null) {
        var li = document.createElement('li');
        li.dataset.id = entry.id;
        var img = "<svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" alt=\"\">\n\t\t\t\t\t  <defs>\n\t\t\t\t\t    <filter id=\"invertMenuMore-".concat(entry.id, "\"><feColorMatrix in=\"SourceGraphic\" type=\"matrix\" values=\"-1 0 0 0 1 0 -1 0 0 1 0 0 -1 0 1 0 0 0 1 0\"></feColorMatrix></filter>\n\t\t\t\t\t      <mask id=\"hole\">\n\t\t\t\t\t        <rect width=\"100%\" height=\"100%\" fill=\"white\"></rect>\n\t\t\t\t\t\t<circle r=\"4.5\" cx=\"17\" cy=\"3\" fill=\"black\"></circle>\n\t\t\t\t\t      </mask>\n\t\t\t\t\t  </defs>\n\t\t\t\t\t  <image x=\"0\" y=\"0\" width=\"16\" height=\"16\" filter=\"url(#invertMenuMore-").concat(entry.id, ")\" preserveAspectRatio=\"xMinYMin meet\" xlink:href=\"").concat(entry.icon, "\"  class=\"app-icon\" />\n\t\t\t\t\t</svg>");
        var imgElement = document.createElement('template');
        imgElement.innerHTML = img;
        var a = document.createElement('a');
        a.setAttribute('href', entry.href);
        var filename = document.createElement('span');
        filename.appendChild(document.createTextNode(entry.name));
        var loading = document.createElement('div');
        loading.setAttribute('class', 'unread-counter');
        loading.style.display = 'none'; // draw attention to the newly added app entry
        // by flashing twice the more apps menu

        if (addedApps[entry.id]) {
          a.classList.add('animated');
        }

        a.prepend(imgElement.content.firstChild, loading, filename);
        li.append(a); // add app icon to the navigation

        var previousElement = document.querySelector("#navigation li[data-id=".concat(previousEntry.id, "]"));

        if (previousElement) {
          previousElement.insertAdjacentElement('afterend', li);
        } else {
          document.querySelector('#navigation #apps ul').prepend(li);
        }
      }

      if (document.getElementById('appmenu').querySelector("li[data-id=\"".concat(entry.id, "\"]")) === null) {
        var _li = document.createElement('li');

        _li.dataset.id = entry.id; // Generating svg embedded image (see layout.user.php)

        var _img;

        if (OCA.Theming && OCA.Theming.inverted) {
          _img = "<svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" alt=\"\">\n\t\t\t\t\t\t  <defs>\n\t\t\t\t\t\t    <filter id=\"invert\"><feColorMatrix in=\"SourceGraphic\" type=\"matrix\" values=\"-1 0 0 0 1 0 -1 0 0 1 0 0 -1 0 1 0 0 0 1 0\" /></filter>\n\t\t\t\t\t\t  </defs>\n\t\t\t\t\t\t  <image x=\"0\" y=\"0\" width=\"20\" height=\"20\" preserveAspectRatio=\"xMinYMin meet\" filter=\"url(#invert)\" xlink:href=\"".concat(entry.icon, "\"  class=\"app-icon\" />\n\t\t\t\t\t\t</svg>");
        } else {
          _img = "<svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" alt=\"\">\n\t\t\t\t\t\t  <image x=\"0\" y=\"0\" width=\"20\" height=\"20\" preserveAspectRatio=\"xMinYMin meet\" xlink:href=\"".concat(entry.icon, "\"  class=\"app-icon\" />\n\t\t\t\t\t\t</svg>");
        }

        var _imgElement = document.createElement('template');

        _imgElement.innerHTML = _img;

        var _a = document.createElement('a');

        _a.setAttribute('href', entry.href);

        var _filename = document.createElement('span');

        _filename.appendChild(document.createTextNode(entry.name));

        var _loading = document.createElement('div');

        _loading.setAttribute('class', 'icon-loading-dark');

        _loading.style.display = 'none'; // draw attention to the newly added app entry
        // by flashing twice the more apps menu

        if (addedApps[entry.id]) {
          _a.classList.add('animated');
        }

        _a.prepend(_loading, _filename, _imgElement.content.firstChild);

        _li.append(_a); // add app icon to the navigation


        var _previousElement = document.querySelector('#appmenu li[data-id=' + previousEntry.id + ']');

        if (_previousElement) {
          _previousElement.insertAdjacentElement('afterend', _li);
        } else {
          document.queryElementById('appmenu').prepend(_li);
        }
      }

      previousEntry = entry;
    });
    window.dispatchEvent(new Event('resize'));
  });
});

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			id: moduleId,
/******/ 			loaded: false,
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = __webpack_modules__;
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/amd define */
/******/ 	!function() {
/******/ 		__webpack_require__.amdD = function () {
/******/ 			throw new Error('define cannot be used indirect');
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/amd options */
/******/ 	!function() {
/******/ 		__webpack_require__.amdO = {};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/chunk loaded */
/******/ 	!function() {
/******/ 		var deferred = [];
/******/ 		__webpack_require__.O = function(result, chunkIds, fn, priority) {
/******/ 			if(chunkIds) {
/******/ 				priority = priority || 0;
/******/ 				for(var i = deferred.length; i > 0 && deferred[i - 1][2] > priority; i--) deferred[i] = deferred[i - 1];
/******/ 				deferred[i] = [chunkIds, fn, priority];
/******/ 				return;
/******/ 			}
/******/ 			var notFulfilled = Infinity;
/******/ 			for (var i = 0; i < deferred.length; i++) {
/******/ 				var chunkIds = deferred[i][0];
/******/ 				var fn = deferred[i][1];
/******/ 				var priority = deferred[i][2];
/******/ 				var fulfilled = true;
/******/ 				for (var j = 0; j < chunkIds.length; j++) {
/******/ 					if ((priority & 1 === 0 || notFulfilled >= priority) && Object.keys(__webpack_require__.O).every(function(key) { return __webpack_require__.O[key](chunkIds[j]); })) {
/******/ 						chunkIds.splice(j--, 1);
/******/ 					} else {
/******/ 						fulfilled = false;
/******/ 						if(priority < notFulfilled) notFulfilled = priority;
/******/ 					}
/******/ 				}
/******/ 				if(fulfilled) {
/******/ 					deferred.splice(i--, 1)
/******/ 					var r = fn();
/******/ 					if (r !== undefined) result = r;
/******/ 				}
/******/ 			}
/******/ 			return result;
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	!function() {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = function(module) {
/******/ 			var getter = module && module.__esModule ?
/******/ 				function() { return module['default']; } :
/******/ 				function() { return module; };
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	!function() {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = function(exports, definition) {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/global */
/******/ 	!function() {
/******/ 		__webpack_require__.g = (function() {
/******/ 			if (typeof globalThis === 'object') return globalThis;
/******/ 			try {
/******/ 				return this || new Function('return this')();
/******/ 			} catch (e) {
/******/ 				if (typeof window === 'object') return window;
/******/ 			}
/******/ 		})();
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	!function() {
/******/ 		__webpack_require__.o = function(obj, prop) { return Object.prototype.hasOwnProperty.call(obj, prop); }
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	!function() {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = function(exports) {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/node module decorator */
/******/ 	!function() {
/******/ 		__webpack_require__.nmd = function(module) {
/******/ 			module.paths = [];
/******/ 			if (!module.children) module.children = [];
/******/ 			return module;
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/jsonp chunk loading */
/******/ 	!function() {
/******/ 		__webpack_require__.b = document.baseURI || self.location.href;
/******/ 		
/******/ 		// object to store loaded and loading chunks
/******/ 		// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 		// [resolve, reject, Promise] = chunk loading, 0 = chunk loaded
/******/ 		var installedChunks = {
/******/ 			"settings-apps": 0
/******/ 		};
/******/ 		
/******/ 		// no chunk on demand loading
/******/ 		
/******/ 		// no prefetching
/******/ 		
/******/ 		// no preloaded
/******/ 		
/******/ 		// no HMR
/******/ 		
/******/ 		// no HMR manifest
/******/ 		
/******/ 		__webpack_require__.O.j = function(chunkId) { return installedChunks[chunkId] === 0; };
/******/ 		
/******/ 		// install a JSONP callback for chunk loading
/******/ 		var webpackJsonpCallback = function(parentChunkLoadingFunction, data) {
/******/ 			var chunkIds = data[0];
/******/ 			var moreModules = data[1];
/******/ 			var runtime = data[2];
/******/ 			// add "moreModules" to the modules object,
/******/ 			// then flag all "chunkIds" as loaded and fire callback
/******/ 			var moduleId, chunkId, i = 0;
/******/ 			if(chunkIds.some(function(id) { return installedChunks[id] !== 0; })) {
/******/ 				for(moduleId in moreModules) {
/******/ 					if(__webpack_require__.o(moreModules, moduleId)) {
/******/ 						__webpack_require__.m[moduleId] = moreModules[moduleId];
/******/ 					}
/******/ 				}
/******/ 				if(runtime) var result = runtime(__webpack_require__);
/******/ 			}
/******/ 			if(parentChunkLoadingFunction) parentChunkLoadingFunction(data);
/******/ 			for(;i < chunkIds.length; i++) {
/******/ 				chunkId = chunkIds[i];
/******/ 				if(__webpack_require__.o(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 					installedChunks[chunkId][0]();
/******/ 				}
/******/ 				installedChunks[chunkId] = 0;
/******/ 			}
/******/ 			return __webpack_require__.O(result);
/******/ 		}
/******/ 		
/******/ 		var chunkLoadingGlobal = self["webpackChunknextcloud"] = self["webpackChunknextcloud"] || [];
/******/ 		chunkLoadingGlobal.forEach(webpackJsonpCallback.bind(null, 0));
/******/ 		chunkLoadingGlobal.push = webpackJsonpCallback.bind(null, chunkLoadingGlobal.push.bind(chunkLoadingGlobal));
/******/ 	}();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module depends on other loaded chunks and execution need to be delayed
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["core-common"], function() { return __webpack_require__("./apps/settings/src/apps.js"); })
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;
//# sourceMappingURL=settings-apps.js.map?v=93f890feaa76332ba3ba