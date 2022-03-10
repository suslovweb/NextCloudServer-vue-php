/******/ (function() { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./apps/settings/src/admin.js":
/*!************************************!*\
  !*** ./apps/settings/src/admin.js ***!
  \************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! jquery */ "./node_modules/jquery/dist/jquery.js");
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(jquery__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var jquery_ui_dist_jquery_ui__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! jquery-ui-dist/jquery-ui */ "./node_modules/jquery-ui-dist/jquery-ui.js");
/* harmony import */ var jquery_ui_dist_jquery_ui__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(jquery_ui_dist_jquery_ui__WEBPACK_IMPORTED_MODULE_1__);
var _this = undefined;



window.addEventListener('DOMContentLoaded', function () {
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#excludedGroups,#linksExcludedGroups').each(function (index, element) {
    OC.Settings.setupGroupsSelect(jquery__WEBPACK_IMPORTED_MODULE_0___default()(element));
    jquery__WEBPACK_IMPORTED_MODULE_0___default()(element).change(function (ev) {
      var groups = ev.val || [];
      groups = JSON.stringify(groups);
      OCP.AppConfig.setValue('core', jquery__WEBPACK_IMPORTED_MODULE_0___default()(_this).attr('name'), groups);
    });
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#loglevel').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default().post(OC.generateUrl('/settings/admin/log/level'), {
      level: jquery__WEBPACK_IMPORTED_MODULE_0___default()(_this).val()
    }, function () {
      OC.Log.reload();
    });
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#backgroundjobs span.crondate').tooltip({
    placement: 'top'
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#backgroundjobs input').change(function () {
    if (jquery__WEBPACK_IMPORTED_MODULE_0___default()(_this).is(':checked')) {
      var mode = jquery__WEBPACK_IMPORTED_MODULE_0___default()(_this).val();

      if (mode === 'ajax' || mode === 'webcron' || mode === 'cron') {
        OCP.AppConfig.setValue('core', 'backgroundjobs_mode', mode, {
          success: function success() {
            // clear cron errors on background job mode change
            OCP.AppConfig.deleteKey('core', 'cronErrors');
          }
        });
      }
    }
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareAPIEnabled').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareAPI p:not(#enable)').toggleClass('hidden', !_this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#enableEncryption').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#encryptionAPI div#EncryptionWarning').toggleClass('hidden');
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#reallyEnableEncryption').click(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#encryptionAPI div#EncryptionWarning').toggleClass('hidden');
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#encryptionAPI div#EncryptionSettingsArea').toggleClass('hidden');
    OCP.AppConfig.setValue('core', 'encryption_enabled', 'yes');
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#enableEncryption').attr('disabled', 'disabled');
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#startmigration').click(function (event) {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()(window).on('beforeunload.encryption', function (e) {
      return t('settings', 'Migration in progress. Please wait until the migration is finished');
    });
    event.preventDefault();
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#startmigration').prop('disabled', true);
    OC.msg.startAction('#startmigration_msg', t('settings', 'Migration started …'));
    jquery__WEBPACK_IMPORTED_MODULE_0___default().post(OC.generateUrl('/settings/admin/startmigration'), '', function (data) {
      OC.msg.finishedAction('#startmigration_msg', data);

      if (data.status === 'success') {
        jquery__WEBPACK_IMPORTED_MODULE_0___default()('#encryptionAPI div#selectEncryptionModules').toggleClass('hidden');
        jquery__WEBPACK_IMPORTED_MODULE_0___default()('#encryptionAPI div#migrationWarning').toggleClass('hidden');
      } else {
        jquery__WEBPACK_IMPORTED_MODULE_0___default()('#startmigration').prop('disabled', false);
      }

      jquery__WEBPACK_IMPORTED_MODULE_0___default()(window).off('beforeunload.encryption');
    });
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiExpireAfterNDays').on('input', function () {
    this.value = this.value.replace(/\D/g, '');
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareAPI input:not(.noJSAutoUpdate)').change(function () {
    var value = jquery__WEBPACK_IMPORTED_MODULE_0___default()(this).val();

    if (jquery__WEBPACK_IMPORTED_MODULE_0___default()(this).attr('type') === 'checkbox') {
      if (this.checked) {
        value = 'yes';
      } else {
        value = 'no';
      }
    }

    OCP.AppConfig.setValue('core', jquery__WEBPACK_IMPORTED_MODULE_0___default()(this).attr('name'), value);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiDefaultExpireDate').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('setDefaultExpireDate').toggleClass('hidden', !this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiDefaultInternalExpireDate').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setDefaultInternalExpireDate').toggleClass('hidden', !this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiDefaultRemoteExpireDate').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setDefaultRemoteExpireDate').toggleClass('hidden', !this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#publicShareDisclaimer').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#publicShareDisclaimerText').toggleClass('hidden', !this.checked);

    if (!this.checked) {
      savePublicShareDisclaimerText('');
    }
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareApiDefaultPermissionsSection input').change(function (ev) {
    var $el = jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareApiDefaultPermissions');
    var $target = jquery__WEBPACK_IMPORTED_MODULE_0___default()(ev.target);
    var value = $el.val();

    if ($target.is(':checked')) {
      value = value | $target.val();
    } else {
      value = value & ~$target.val();
    } // always set read permission


    value |= OC.PERMISSION_READ; // this will trigger the field's change event and will save it

    $el.val(value).change();
    ev.preventDefault();
    return false;
  });

  var savePublicShareDisclaimerText = _.debounce(function (value) {
    var options = {
      success: function success() {
        OC.msg.finishedSuccess('#publicShareDisclaimerStatus', t('settings', 'Saved'));
      },
      error: function error() {
        OC.msg.finishedError('#publicShareDisclaimerStatus', t('settings', 'Not saved'));
      }
    };
    OC.msg.startSaving('#publicShareDisclaimerStatus');

    if (_.isString(value) && value !== '') {
      OCP.AppConfig.setValue('core', 'shareapi_public_link_disclaimertext', value, options);
    } else {
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#publicShareDisclaimerText').val('');
      OCP.AppConfig.deleteKey('core', 'shareapi_public_link_disclaimertext', options);
    }
  }, 500);

  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#publicShareDisclaimerText').on('change, keyup', function () {
    savePublicShareDisclaimerText(this.value);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapi_allow_share_dialog_user_enumeration').on('change', function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapi_restrict_user_enumeration_to_group_setting').toggleClass('hidden', !this.checked);
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapi_restrict_user_enumeration_to_phone_setting').toggleClass('hidden', !this.checked);
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapi_restrict_user_enumeration_combinewarning_setting').toggleClass('hidden', !this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#allowLinks').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#publicLinkSettings').toggleClass('hidden', !this.checked);
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setDefaultExpireDate').toggleClass('hidden', !(this.checked && jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiDefaultExpireDate')[0].checked));
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpauth').change(function () {
    if (!this.checked) {
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials').addClass('hidden');
    } else {
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials').removeClass('hidden');
    }
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpmode').change(function () {
    if (jquery__WEBPACK_IMPORTED_MODULE_0___default()(this).val() !== 'smtp') {
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setting_smtpauth').addClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setting_smtphost').addClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpsecure_label').addClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpsecure').addClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials').addClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_sendmailmode_label, #mail_sendmailmode').removeClass('hidden');
    } else {
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setting_smtpauth').removeClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#setting_smtphost').removeClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpsecure_label').removeClass('hidden');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpsecure').removeClass('hidden');

      if (jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtpauth').is(':checked')) {
        jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials').removeClass('hidden');
      }

      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_sendmailmode_label, #mail_sendmailmode').addClass('hidden');
    }
  });

  var changeEmailSettings = function changeEmailSettings() {
    if (OC.PasswordConfirmation.requiresPasswordConfirmation()) {
      OC.PasswordConfirmation.requirePasswordConfirmation(changeEmailSettings);
      return;
    }

    OC.msg.startSaving('#mail_settings_msg');
    jquery__WEBPACK_IMPORTED_MODULE_0___default().ajax({
      url: OC.generateUrl('/settings/admin/mailsettings'),
      type: 'POST',
      data: jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_general_settings_form').serialize(),
      success: function success() {
        OC.msg.finishedSuccess('#mail_settings_msg', t('settings', 'Saved'));
      },
      error: function error(xhr) {
        OC.msg.finishedError('#mail_settings_msg', xhr.responseJSON);
      }
    });
  };

  var toggleEmailCredentials = function toggleEmailCredentials() {
    if (OC.PasswordConfirmation.requiresPasswordConfirmation()) {
      OC.PasswordConfirmation.requirePasswordConfirmation(toggleEmailCredentials);
      return;
    }

    OC.msg.startSaving('#mail_settings_msg');
    jquery__WEBPACK_IMPORTED_MODULE_0___default().ajax({
      url: OC.generateUrl('/settings/admin/mailsettings/credentials'),
      type: 'POST',
      data: jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials_settings').serialize(),
      success: function success() {
        OC.msg.finishedSuccess('#mail_settings_msg', t('settings', 'Saved'));
      },
      error: function error(xhr) {
        OC.msg.finishedError('#mail_settings_msg', xhr.responseJSON);
      }
    });
  };

  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_general_settings_form').change(changeEmailSettings);
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_credentials_settings_submit').click(toggleEmailCredentials);
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#mail_smtppassword').click(function () {
    if (_this.type === 'text' && _this.value === '********') {
      _this.type = 'password';
      _this.value = '';
    }
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#sendtestemail').click(function (event) {
    event.preventDefault();
    OC.msg.startAction('#sendtestmail_msg', t('settings', 'Sending…'));
    jquery__WEBPACK_IMPORTED_MODULE_0___default().ajax({
      url: OC.generateUrl('/settings/admin/mailtest'),
      type: 'POST',
      success: function success() {
        OC.msg.finishedSuccess('#sendtestmail_msg', t('settings', 'Email sent'));
      },
      error: function error(xhr) {
        OC.msg.finishedError('#sendtestmail_msg', xhr.responseJSON);
      }
    });
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#allowGroupSharing').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#allowGroupSharing').toggleClass('hidden', !_this.checked);
  });
  jquery__WEBPACK_IMPORTED_MODULE_0___default()('#shareapiExcludeGroups').change(function () {
    jquery__WEBPACK_IMPORTED_MODULE_0___default()('#selectExcludedGroups').toggleClass('hidden', !_this.checked);
  });

  var setupChecks = function setupChecks() {
    // run setup checks then gather error messages
    jquery__WEBPACK_IMPORTED_MODULE_0___default().when(OC.SetupChecks.checkWebDAV(), OC.SetupChecks.checkWellKnownUrl('GET', '/.well-known/webfinger', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true, [200, 404], true), OC.SetupChecks.checkWellKnownUrl('GET', '/.well-known/nodeinfo', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true, [200, 404], true), OC.SetupChecks.checkWellKnownUrl('PROPFIND', '/.well-known/caldav', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true), OC.SetupChecks.checkWellKnownUrl('PROPFIND', '/.well-known/carddav', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true), OC.SetupChecks.checkProviderUrl(OC.getRootPath() + '/ocm-provider/', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true), OC.SetupChecks.checkProviderUrl(OC.getRootPath() + '/ocs-provider/', OC.theme.docPlaceholderUrl, jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks').data('check-wellknown') === true), OC.SetupChecks.checkSetup(), OC.SetupChecks.checkGeneric(), OC.SetupChecks.checkWOFF2Loading(OC.filePath('core', '', 'fonts/NotoSans-Regular-latin.woff2'), OC.theme.docPlaceholderUrl), OC.SetupChecks.checkDataProtected()).then(function (check1, check2, check3, check4, check5, check6, check7, check8, check9, check10, check11) {
      var messages = [].concat(check1, check2, check3, check4, check5, check6, check7, check8, check9, check10, check11);
      var $el = jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks');
      jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning-state-loading').addClass('hidden');
      var hasMessages = false;
      var $errorsEl = $el.find('.errors');
      var $warningsEl = $el.find('.warnings');
      var $infoEl = $el.find('.info');

      for (var i = 0; i < messages.length; i++) {
        switch (messages[i].type) {
          case OC.SetupChecks.MESSAGE_TYPE_INFO:
            $infoEl.append('<li>' + messages[i].msg + '</li>');
            break;

          case OC.SetupChecks.MESSAGE_TYPE_WARNING:
            $warningsEl.append('<li>' + messages[i].msg + '</li>');
            break;

          case OC.SetupChecks.MESSAGE_TYPE_ERROR:
          default:
            $errorsEl.append('<li>' + messages[i].msg + '</li>');
        }
      }

      if ($errorsEl.find('li').length > 0) {
        $errorsEl.removeClass('hidden');
        hasMessages = true;
      }

      if ($warningsEl.find('li').length > 0) {
        $warningsEl.removeClass('hidden');
        hasMessages = true;
      }

      if ($infoEl.find('li').length > 0) {
        $infoEl.removeClass('hidden');
        hasMessages = true;
      }

      if (hasMessages) {
        jquery__WEBPACK_IMPORTED_MODULE_0___default()('#postsetupchecks-hint').removeClass('hidden');

        if ($errorsEl.find('li').length > 0) {
          jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning-state-failure').removeClass('hidden');
        } else {
          jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning-state-warning').removeClass('hidden');
        }
      } else {
        var securityWarning = jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning');

        if (securityWarning.children('ul').children().length === 0) {
          jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning-state-ok').removeClass('hidden');
        } else {
          jquery__WEBPACK_IMPORTED_MODULE_0___default()('#security-warning-state-failure').removeClass('hidden');
        }
      }
    });
  };

  if (document.getElementById('security-warning') !== null) {
    setupChecks();
  }
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
/******/ 			"settings-legacy-admin": 0
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
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["core-common"], function() { return __webpack_require__("./apps/settings/src/admin.js"); })
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;
//# sourceMappingURL=settings-legacy-admin.js.map?v=c23b9486ed473402820c