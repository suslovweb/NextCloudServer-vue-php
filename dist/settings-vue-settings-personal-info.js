/******/ (function() { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./apps/settings/src/constants/AccountPropertyConstants.js":
/*!*****************************************************************!*\
  !*** ./apps/settings/src/constants/AccountPropertyConstants.js ***!
  \*****************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "ACCOUNT_PROPERTY_ENUM": function() { return /* binding */ ACCOUNT_PROPERTY_ENUM; },
/* harmony export */   "ACCOUNT_PROPERTY_READABLE_ENUM": function() { return /* binding */ ACCOUNT_PROPERTY_READABLE_ENUM; },
/* harmony export */   "ACCOUNT_SETTING_PROPERTY_ENUM": function() { return /* binding */ ACCOUNT_SETTING_PROPERTY_ENUM; },
/* harmony export */   "ACCOUNT_SETTING_PROPERTY_READABLE_ENUM": function() { return /* binding */ ACCOUNT_SETTING_PROPERTY_READABLE_ENUM; },
/* harmony export */   "DEFAULT_ADDITIONAL_EMAIL_SCOPE": function() { return /* binding */ DEFAULT_ADDITIONAL_EMAIL_SCOPE; },
/* harmony export */   "PROFILE_READABLE_ENUM": function() { return /* binding */ PROFILE_READABLE_ENUM; },
/* harmony export */   "PROPERTY_READABLE_KEYS_ENUM": function() { return /* binding */ PROPERTY_READABLE_KEYS_ENUM; },
/* harmony export */   "PROPERTY_READABLE_SUPPORTED_SCOPES_ENUM": function() { return /* binding */ PROPERTY_READABLE_SUPPORTED_SCOPES_ENUM; },
/* harmony export */   "SCOPE_ENUM": function() { return /* binding */ SCOPE_ENUM; },
/* harmony export */   "SCOPE_PROPERTY_ENUM": function() { return /* binding */ SCOPE_PROPERTY_ENUM; },
/* harmony export */   "SCOPE_SUFFIX": function() { return /* binding */ SCOPE_SUFFIX; },
/* harmony export */   "UNPUBLISHED_READABLE_PROPERTIES": function() { return /* binding */ UNPUBLISHED_READABLE_PROPERTIES; },
/* harmony export */   "VALIDATE_EMAIL_REGEX": function() { return /* binding */ VALIDATE_EMAIL_REGEX; },
/* harmony export */   "VERIFICATION_ENUM": function() { return /* binding */ VERIFICATION_ENUM; }
/* harmony export */ });
/* harmony import */ var _nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/l10n */ "./node_modules/@nextcloud/l10n/dist/index.js");
var _Object$freeze, _Object$freeze2, _Object$freeze3;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/**
 * @copyright 2021, Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */

/*
 * SYNC to be kept in sync with `lib/public/Accounts/IAccountManager.php`
 */

/** Enum of account properties */

var ACCOUNT_PROPERTY_ENUM = Object.freeze({
  ADDRESS: 'address',
  AVATAR: 'avatar',
  BIOGRAPHY: 'biography',
  DISPLAYNAME: 'displayname',
  EMAIL_COLLECTION: 'additional_mail',
  EMAIL: 'email',
  HEADLINE: 'headline',
  NOTIFICATION_EMAIL: 'notify_email',
  ORGANISATION: 'organisation',
  PHONE: 'phone',
  PROFILE_ENABLED: 'profile_enabled',
  ROLE: 'role',
  TWITTER: 'twitter',
  WEBSITE: 'website'
});
/** Enum of account properties to human readable account property names */

var ACCOUNT_PROPERTY_READABLE_ENUM = Object.freeze({
  ADDRESS: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Address'),
  AVATAR: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Avatar'),
  BIOGRAPHY: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'About'),
  DISPLAYNAME: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Full name'),
  EMAIL_COLLECTION: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Additional email'),
  EMAIL: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Email'),
  HEADLINE: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Headline'),
  ORGANISATION: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Organisation'),
  PHONE: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Phone number'),
  PROFILE_ENABLED: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Profile'),
  ROLE: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Role'),
  TWITTER: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Twitter'),
  WEBSITE: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Website')
});
/** Enum of profile specific sections to human readable names */

var PROFILE_READABLE_ENUM = Object.freeze({
  PROFILE_VISIBILITY: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Profile visibility')
});
/** Enum of readable account properties to account property keys used by the server */

var PROPERTY_READABLE_KEYS_ENUM = Object.freeze((_Object$freeze = {}, _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.ADDRESS, ACCOUNT_PROPERTY_ENUM.ADDRESS), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.AVATAR, ACCOUNT_PROPERTY_ENUM.AVATAR), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.BIOGRAPHY, ACCOUNT_PROPERTY_ENUM.BIOGRAPHY), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.DISPLAYNAME, ACCOUNT_PROPERTY_ENUM.DISPLAYNAME), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL_COLLECTION, ACCOUNT_PROPERTY_ENUM.EMAIL_COLLECTION), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL, ACCOUNT_PROPERTY_ENUM.EMAIL), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.HEADLINE, ACCOUNT_PROPERTY_ENUM.HEADLINE), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.ORGANISATION, ACCOUNT_PROPERTY_ENUM.ORGANISATION), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.PHONE, ACCOUNT_PROPERTY_ENUM.PHONE), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.PROFILE_ENABLED, ACCOUNT_PROPERTY_ENUM.PROFILE_ENABLED), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.ROLE, ACCOUNT_PROPERTY_ENUM.ROLE), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.TWITTER, ACCOUNT_PROPERTY_ENUM.TWITTER), _defineProperty(_Object$freeze, ACCOUNT_PROPERTY_READABLE_ENUM.WEBSITE, ACCOUNT_PROPERTY_ENUM.WEBSITE), _Object$freeze));
/**
 * Enum of account setting properties
 *
 * Account setting properties unlike account properties do not support scopes*
 */

var ACCOUNT_SETTING_PROPERTY_ENUM = Object.freeze({
  LANGUAGE: 'language'
});
/** Enum of account setting properties to human readable setting properties */

var ACCOUNT_SETTING_PROPERTY_READABLE_ENUM = Object.freeze({
  LANGUAGE: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Language')
});
/** Enum of scopes */

var SCOPE_ENUM = Object.freeze({
  PRIVATE: 'v2-private',
  LOCAL: 'v2-local',
  FEDERATED: 'v2-federated',
  PUBLISHED: 'v2-published'
});
/** Enum of readable account properties to supported scopes */

var PROPERTY_READABLE_SUPPORTED_SCOPES_ENUM = Object.freeze((_Object$freeze2 = {}, _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.ADDRESS, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.AVATAR, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.BIOGRAPHY, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.DISPLAYNAME, [SCOPE_ENUM.LOCAL]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL_COLLECTION, [SCOPE_ENUM.LOCAL]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL, [SCOPE_ENUM.LOCAL]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.HEADLINE, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.ORGANISATION, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.PHONE, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.PROFILE_ENABLED, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.ROLE, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.TWITTER, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _defineProperty(_Object$freeze2, ACCOUNT_PROPERTY_READABLE_ENUM.WEBSITE, [SCOPE_ENUM.LOCAL, SCOPE_ENUM.PRIVATE]), _Object$freeze2));
/** List of readable account properties which aren't published to the lookup server */

var UNPUBLISHED_READABLE_PROPERTIES = Object.freeze([ACCOUNT_PROPERTY_READABLE_ENUM.BIOGRAPHY, ACCOUNT_PROPERTY_READABLE_ENUM.HEADLINE, ACCOUNT_PROPERTY_READABLE_ENUM.ORGANISATION, ACCOUNT_PROPERTY_READABLE_ENUM.ROLE]);
/** Scope suffix */

var SCOPE_SUFFIX = 'Scope';
/**
 * Enum of scope names to properties
 *
 * Used for federation control*
 */

var SCOPE_PROPERTY_ENUM = Object.freeze((_Object$freeze3 = {}, _defineProperty(_Object$freeze3, SCOPE_ENUM.PRIVATE, {
  name: SCOPE_ENUM.PRIVATE,
  displayName: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Private'),
  tooltip: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Only visible to people matched via phone number integration through Talk on mobile'),
  tooltipDisabled: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Not available as this property is required for core functionality including file sharing and calendar invitations'),
  iconClass: 'icon-phone'
}), _defineProperty(_Object$freeze3, SCOPE_ENUM.LOCAL, {
  name: SCOPE_ENUM.LOCAL,
  displayName: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Local'),
  tooltip: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Only visible to people on this instance and guests'),
  // tooltipDisabled is not required here as this scope is supported by all account properties
  iconClass: 'icon-password'
}), _defineProperty(_Object$freeze3, SCOPE_ENUM.FEDERATED, {
  name: SCOPE_ENUM.FEDERATED,
  displayName: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Federated'),
  tooltip: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Only synchronize to trusted servers'),
  tooltipDisabled: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Not available as publishing user specific data to the lookup server is not allowed, contact your system administrator if you have any questions'),
  iconClass: 'icon-contacts-dark'
}), _defineProperty(_Object$freeze3, SCOPE_ENUM.PUBLISHED, {
  name: SCOPE_ENUM.PUBLISHED,
  displayName: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Published'),
  tooltip: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Synchronize to trusted servers and the global and public address book'),
  tooltipDisabled: (0,_nextcloud_l10n__WEBPACK_IMPORTED_MODULE_0__.translate)('settings', 'Not available as publishing user specific data to the lookup server is not allowed, contact your system administrator if you have any questions'),
  iconClass: 'icon-link'
}), _Object$freeze3));
/** Default additional email scope */

var DEFAULT_ADDITIONAL_EMAIL_SCOPE = SCOPE_ENUM.LOCAL;
/** Enum of verification constants, according to IAccountManager */

var VERIFICATION_ENUM = Object.freeze({
  NOT_VERIFIED: 0,
  VERIFICATION_IN_PROGRESS: 1,
  VERIFIED: 2
});
/**
 * Email validation regex
 *
 * Sourced from https://github.com/mpyw/FILTER_VALIDATE_EMAIL.js/blob/71e62ca48841d2246a1b531e7e84f5a01f15e615/src/regexp/ascii.ts*
 */
// eslint-disable-next-line no-control-regex

var VALIDATE_EMAIL_REGEX = /^(?!(?:(?:\x22?\x5C[\x00-\x7E]\x22?)|(?:\x22?[^\x5C\x22]\x22?)){255,})(?!(?:(?:\x22?\x5C[\x00-\x7E]\x22?)|(?:\x22?[^\x5C\x22]\x22?)){65,}@)(?:(?:[\x21\x23-\x27\x2A\x2B\x2D\x2F-\x39\x3D\x3F\x5E-\x7E]+)|(?:\x22(?:[\x01-\x08\x0B\x0C\x0E-\x1F\x21\x23-\x5B\x5D-\x7F]|(?:\x5C[\x00-\x7F]))*\x22))(?:\.(?:(?:[\x21\x23-\x27\x2A\x2B\x2D\x2F-\x39\x3D\x3F\x5E-\x7E]+)|(?:\x22(?:[\x01-\x08\x0B\x0C\x0E-\x1F\x21\x23-\x5B\x5D-\x7F]|(?:\x5C[\x00-\x7F]))*\x22)))*@(?:(?:(?!.*[^.]{64,})(?:(?:(?:xn--)?[a-z0-9]+(?:-+[a-z0-9]+)*\.){1,126}){1,}(?:(?:[a-z][a-z0-9]*)|(?:(?:xn--)[a-z0-9]+))(?:-+[a-z0-9]+)*)|(?:\[(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){7})|(?:(?!(?:.*[a-f0-9][:\]]){7,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?)))|(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){5}:)|(?:(?!(?:.*[a-f0-9]:){5,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3}:)?)))?(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))(?:\.(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))){3}))\]))$/i;

/***/ }),

/***/ "./apps/settings/src/constants/ProfileConstants.js":
/*!*********************************************************!*\
  !*** ./apps/settings/src/constants/ProfileConstants.js ***!
  \*********************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "VISIBILITY_ENUM": function() { return /* binding */ VISIBILITY_ENUM; },
/* harmony export */   "VISIBILITY_PROPERTY_ENUM": function() { return /* binding */ VISIBILITY_PROPERTY_ENUM; }
/* harmony export */ });
var _Object$freeze;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/**
 * @copyright 2021 Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */

/*
 * SYNC to be kept in sync with `core/Db/ProfileConfig.php`
 */

/** Enum of profile visibility constants */
var VISIBILITY_ENUM = Object.freeze({
  SHOW: 'show',
  SHOW_USERS_ONLY: 'show_users_only',
  HIDE: 'hide'
});
/**
 * Enum of profile visibility constants to properties
 */

var VISIBILITY_PROPERTY_ENUM = Object.freeze((_Object$freeze = {}, _defineProperty(_Object$freeze, VISIBILITY_ENUM.SHOW, {
  name: VISIBILITY_ENUM.SHOW,
  label: t('settings', 'Show to everyone')
}), _defineProperty(_Object$freeze, VISIBILITY_ENUM.SHOW_USERS_ONLY, {
  name: VISIBILITY_ENUM.SHOW_USERS_ONLY,
  label: t('settings', 'Show to logged in users only')
}), _defineProperty(_Object$freeze, VISIBILITY_ENUM.HIDE, {
  name: VISIBILITY_ENUM.HIDE,
  label: t('settings', 'Hide')
}), _Object$freeze));

/***/ }),

/***/ "./apps/settings/src/logger.js":
/*!*************************************!*\
  !*** ./apps/settings/src/logger.js ***!
  \*************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_logger__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/logger */ "./node_modules/@nextcloud/logger/dist/index.js");
/**
 * @copyright 2020 Christoph Wurst <christoph@winzerhof-wurst.at>
 *
 * @author Roeland Jago Douma <roeland@famdouma.nl>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */

/* harmony default export */ __webpack_exports__["default"] = ((0,_nextcloud_logger__WEBPACK_IMPORTED_MODULE_0__.getLoggerBuilder)().setApp('settings').detectUser().build());

/***/ }),

/***/ "./apps/settings/src/main-personal-info.js":
/*!*************************************************!*\
  !*** ./apps/settings/src/main-personal-info.js ***!
  \*************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.runtime.esm.js");
/* harmony import */ var _nextcloud_auth__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/auth */ "./node_modules/@nextcloud/auth/dist/index.js");
/* harmony import */ var _nextcloud_l10n__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/l10n */ "./node_modules/@nextcloud/l10n/dist/index.js");
/* harmony import */ var _nextcloud_dialogs_styles_toast_scss__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/dialogs/styles/toast.scss */ "./node_modules/@nextcloud/dialogs/styles/toast.scss");
/* harmony import */ var _logger__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./logger */ "./apps/settings/src/logger.js");
/* harmony import */ var _components_PersonalInfo_DisplayNameSection_DisplayNameSection__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./components/PersonalInfo/DisplayNameSection/DisplayNameSection */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue");
/* harmony import */ var _components_PersonalInfo_EmailSection_EmailSection__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./components/PersonalInfo/EmailSection/EmailSection */ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue");
/* harmony import */ var _components_PersonalInfo_LanguageSection_LanguageSection__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./components/PersonalInfo/LanguageSection/LanguageSection */ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue");
/* harmony import */ var _components_PersonalInfo_ProfileSection_ProfileSection__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./components/PersonalInfo/ProfileSection/ProfileSection */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue");
/* harmony import */ var _components_PersonalInfo_OrganisationSection_OrganisationSection__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./components/PersonalInfo/OrganisationSection/OrganisationSection */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue");
/* harmony import */ var _components_PersonalInfo_RoleSection_RoleSection__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./components/PersonalInfo/RoleSection/RoleSection */ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue");
/* harmony import */ var _components_PersonalInfo_HeadlineSection_HeadlineSection__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./components/PersonalInfo/HeadlineSection/HeadlineSection */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue");
/* harmony import */ var _components_PersonalInfo_BiographySection_BiographySection__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! ./components/PersonalInfo/BiographySection/BiographySection */ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue");
/* harmony import */ var _components_PersonalInfo_ProfileVisibilitySection_ProfileVisibilitySection__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! ./components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue");
/**
 * @copyright 2021, Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */














__webpack_require__.nc = btoa((0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_0__.getRequestToken)());
vue__WEBPACK_IMPORTED_MODULE_13__["default"].mixin({
  props: {
    logger: _logger__WEBPACK_IMPORTED_MODULE_3__["default"]
  },
  methods: {
    t: _nextcloud_l10n__WEBPACK_IMPORTED_MODULE_1__.translate
  }
});
var DisplayNameView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_DisplayNameSection_DisplayNameSection__WEBPACK_IMPORTED_MODULE_4__["default"]);
var EmailView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_EmailSection_EmailSection__WEBPACK_IMPORTED_MODULE_5__["default"]);
var LanguageView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_LanguageSection_LanguageSection__WEBPACK_IMPORTED_MODULE_6__["default"]);
var ProfileView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_ProfileSection_ProfileSection__WEBPACK_IMPORTED_MODULE_7__["default"]);
var OrganisationView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_OrganisationSection_OrganisationSection__WEBPACK_IMPORTED_MODULE_8__["default"]);
var RoleView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_RoleSection_RoleSection__WEBPACK_IMPORTED_MODULE_9__["default"]);
var HeadlineView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_HeadlineSection_HeadlineSection__WEBPACK_IMPORTED_MODULE_10__["default"]);
var BiographyView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_BiographySection_BiographySection__WEBPACK_IMPORTED_MODULE_11__["default"]);
var ProfileVisibilityView = vue__WEBPACK_IMPORTED_MODULE_13__["default"].extend(_components_PersonalInfo_ProfileVisibilitySection_ProfileVisibilitySection__WEBPACK_IMPORTED_MODULE_12__["default"]);
new DisplayNameView().$mount('#vue-displayname-section');
new EmailView().$mount('#vue-email-section');
new LanguageView().$mount('#vue-language-section');
new ProfileView().$mount('#vue-profile-section');
new OrganisationView().$mount('#vue-organisation-section');
new RoleView().$mount('#vue-role-section');
new HeadlineView().$mount('#vue-headline-section');
new BiographyView().$mount('#vue-biography-section');
new ProfileVisibilityView().$mount('#vue-profile-visibility-section');

/***/ }),

/***/ "./apps/settings/src/service/PersonalInfo/EmailService.js":
/*!****************************************************************!*\
  !*** ./apps/settings/src/service/PersonalInfo/EmailService.js ***!
  \****************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "removeAdditionalEmail": function() { return /* binding */ removeAdditionalEmail; },
/* harmony export */   "saveAdditionalEmail": function() { return /* binding */ saveAdditionalEmail; },
/* harmony export */   "saveAdditionalEmailScope": function() { return /* binding */ saveAdditionalEmailScope; },
/* harmony export */   "saveNotificationEmail": function() { return /* binding */ saveNotificationEmail; },
/* harmony export */   "savePrimaryEmail": function() { return /* binding */ savePrimaryEmail; },
/* harmony export */   "savePrimaryEmailScope": function() { return /* binding */ savePrimaryEmailScope; },
/* harmony export */   "updateAdditionalEmail": function() { return /* binding */ updateAdditionalEmail; }
/* harmony export */ });
/* harmony import */ var _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/axios */ "./node_modules/@nextcloud/axios/dist/index.js");
/* harmony import */ var _nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/auth */ "./node_modules/@nextcloud/auth/dist/index.js");
/* harmony import */ var _nextcloud_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/router */ "./node_modules/@nextcloud/router/dist/index.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @nextcloud/password-confirmation */ "./node_modules/@nextcloud/password-confirmation/dist/main.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

/**
 * @copyright 2021, Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */





/**
 * Save the primary email of the user
 *
 * @param {string} email the primary email
 * @return {object}
 */

var savePrimaryEmail = /*#__PURE__*/function () {
  var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(email) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL,
              value: email
            });

          case 6:
            res = _context.sent;
            return _context.abrupt("return", res.data);

          case 8:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));

  return function savePrimaryEmail(_x) {
    return _ref.apply(this, arguments);
  };
}();
/**
 * Save an additional email of the user
 *
 * Will be appended to the user's additional emails*
 *
 * @param {string} email the additional email
 * @return {object}
 */

var saveAdditionalEmail = /*#__PURE__*/function () {
  var _ref2 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2(email) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee2$(_context2) {
      while (1) {
        switch (_context2.prev = _context2.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context2.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context2.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL_COLLECTION,
              value: email
            });

          case 6:
            res = _context2.sent;
            return _context2.abrupt("return", res.data);

          case 8:
          case "end":
            return _context2.stop();
        }
      }
    }, _callee2);
  }));

  return function saveAdditionalEmail(_x2) {
    return _ref2.apply(this, arguments);
  };
}();
/**
 * Save the notification email of the user
 *
 * @param {string} email the notification email
 * @return {object}
 */

var saveNotificationEmail = /*#__PURE__*/function () {
  var _ref3 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee3(email) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee3$(_context3) {
      while (1) {
        switch (_context3.prev = _context3.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context3.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context3.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.NOTIFICATION_EMAIL,
              value: email
            });

          case 6:
            res = _context3.sent;
            return _context3.abrupt("return", res.data);

          case 8:
          case "end":
            return _context3.stop();
        }
      }
    }, _callee3);
  }));

  return function saveNotificationEmail(_x3) {
    return _ref3.apply(this, arguments);
  };
}();
/**
 * Remove an additional email of the user
 *
 * @param {string} email the additional email
 * @return {object}
 */

var removeAdditionalEmail = /*#__PURE__*/function () {
  var _ref4 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee4(email) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee4$(_context4) {
      while (1) {
        switch (_context4.prev = _context4.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}/{collection}', {
              userId: userId,
              collection: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL_COLLECTION
            });
            _context4.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context4.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: email,
              value: ''
            });

          case 6:
            res = _context4.sent;
            return _context4.abrupt("return", res.data);

          case 8:
          case "end":
            return _context4.stop();
        }
      }
    }, _callee4);
  }));

  return function removeAdditionalEmail(_x4) {
    return _ref4.apply(this, arguments);
  };
}();
/**
 * Update an additional email of the user
 *
 * @param {string} prevEmail the additional email to be updated
 * @param {string} newEmail the new additional email
 * @return {object}
 */

var updateAdditionalEmail = /*#__PURE__*/function () {
  var _ref5 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee5(prevEmail, newEmail) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee5$(_context5) {
      while (1) {
        switch (_context5.prev = _context5.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}/{collection}', {
              userId: userId,
              collection: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL_COLLECTION
            });
            _context5.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context5.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: prevEmail,
              value: newEmail
            });

          case 6:
            res = _context5.sent;
            return _context5.abrupt("return", res.data);

          case 8:
          case "end":
            return _context5.stop();
        }
      }
    }, _callee5);
  }));

  return function updateAdditionalEmail(_x5, _x6) {
    return _ref5.apply(this, arguments);
  };
}();
/**
 * Save the federation scope for the primary email of the user
 *
 * @param {string} scope the federation scope
 * @return {object}
 */

var savePrimaryEmailScope = /*#__PURE__*/function () {
  var _ref6 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee6(scope) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee6$(_context6) {
      while (1) {
        switch (_context6.prev = _context6.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context6.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context6.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: "".concat(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL).concat(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_SUFFIX),
              value: scope
            });

          case 6:
            res = _context6.sent;
            return _context6.abrupt("return", res.data);

          case 8:
          case "end":
            return _context6.stop();
        }
      }
    }, _callee6);
  }));

  return function savePrimaryEmailScope(_x7) {
    return _ref6.apply(this, arguments);
  };
}();
/**
 * Save the federation scope for the additional email of the user
 *
 * @param {string} email the additional email
 * @param {string} scope the federation scope
 * @return {object}
 */

var saveAdditionalEmailScope = /*#__PURE__*/function () {
  var _ref7 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee7(email, scope) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee7$(_context7) {
      while (1) {
        switch (_context7.prev = _context7.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}/{collectionScope}', {
              userId: userId,
              collectionScope: "".concat(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.EMAIL_COLLECTION).concat(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_SUFFIX)
            });
            _context7.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context7.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: email,
              value: scope
            });

          case 6:
            res = _context7.sent;
            return _context7.abrupt("return", res.data);

          case 8:
          case "end":
            return _context7.stop();
        }
      }
    }, _callee7);
  }));

  return function saveAdditionalEmailScope(_x8, _x9) {
    return _ref7.apply(this, arguments);
  };
}();

/***/ }),

/***/ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js":
/*!***********************************************************************!*\
  !*** ./apps/settings/src/service/PersonalInfo/PersonalInfoService.js ***!
  \***********************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "savePrimaryAccountProperty": function() { return /* binding */ savePrimaryAccountProperty; },
/* harmony export */   "savePrimaryAccountPropertyScope": function() { return /* binding */ savePrimaryAccountPropertyScope; }
/* harmony export */ });
/* harmony import */ var _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/axios */ "./node_modules/@nextcloud/axios/dist/index.js");
/* harmony import */ var _nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/auth */ "./node_modules/@nextcloud/auth/dist/index.js");
/* harmony import */ var _nextcloud_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/router */ "./node_modules/@nextcloud/router/dist/index.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @nextcloud/password-confirmation */ "./node_modules/@nextcloud/password-confirmation/dist/main.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

/**
 * @copyright 2021, Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */





/**
 * Save the primary account property value for the user
 *
 * @param {string} accountProperty the account property
 * @param {string|boolean} value the primary value
 * @return {object}
 */

var savePrimaryAccountProperty = /*#__PURE__*/function () {
  var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(accountProperty, value) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            // TODO allow boolean values on backend route handler
            // Convert boolean to string for compatibility
            if (typeof value === 'boolean') {
              value = value ? '1' : '0';
            }

            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context.next = 5;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 5:
            _context.next = 7;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: accountProperty,
              value: value
            });

          case 7:
            res = _context.sent;
            return _context.abrupt("return", res.data);

          case 9:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));

  return function savePrimaryAccountProperty(_x, _x2) {
    return _ref.apply(this, arguments);
  };
}();
/**
 * Save the federation scope of the primary account property for the user
 *
 * @param {string} accountProperty the account property
 * @param {string} scope the federation scope
 * @return {object}
 */

var savePrimaryAccountPropertyScope = /*#__PURE__*/function () {
  var _ref2 = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2(accountProperty, scope) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee2$(_context2) {
      while (1) {
        switch (_context2.prev = _context2.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('cloud/users/{userId}', {
              userId: userId
            });
            _context2.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context2.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              key: "".concat(accountProperty).concat(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_SUFFIX),
              value: scope
            });

          case 6:
            res = _context2.sent;
            return _context2.abrupt("return", res.data);

          case 8:
          case "end":
            return _context2.stop();
        }
      }
    }, _callee2);
  }));

  return function savePrimaryAccountPropertyScope(_x3, _x4) {
    return _ref2.apply(this, arguments);
  };
}();

/***/ }),

/***/ "./apps/settings/src/service/ProfileService.js":
/*!*****************************************************!*\
  !*** ./apps/settings/src/service/ProfileService.js ***!
  \*****************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "saveProfileParameterVisibility": function() { return /* binding */ saveProfileParameterVisibility; }
/* harmony export */ });
/* harmony import */ var _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/axios */ "./node_modules/@nextcloud/axios/dist/index.js");
/* harmony import */ var _nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/auth */ "./node_modules/@nextcloud/auth/dist/index.js");
/* harmony import */ var _nextcloud_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/router */ "./node_modules/@nextcloud/router/dist/index.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @nextcloud/password-confirmation */ "./node_modules/@nextcloud/password-confirmation/dist/main.js");
/* harmony import */ var _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3__);
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

/**
 * @copyright 2021 Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */




/**
 * Save the visibility of the profile parameter
 *
 * @param {string} paramId the profile parameter ID
 * @param {string} visibility the visibility
 * @return {object}
 */

var saveProfileParameterVisibility = /*#__PURE__*/function () {
  var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(paramId, visibility) {
    var userId, url, res;
    return regeneratorRuntime.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            userId = (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_1__.getCurrentUser)().uid;
            url = (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_2__.generateOcsUrl)('/profile/{userId}', {
              userId: userId
            });
            _context.next = 4;
            return _nextcloud_password_confirmation__WEBPACK_IMPORTED_MODULE_3___default()();

          case 4:
            _context.next = 6;
            return _nextcloud_axios__WEBPACK_IMPORTED_MODULE_0__["default"].put(url, {
              paramId: paramId,
              visibility: visibility
            });

          case 6:
            res = _context.sent;
            return _context.abrupt("return", res.data);

          case 8:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));

  return function saveProfileParameterVisibility(_x, _x2) {
    return _ref.apply(this, arguments);
  };
}();

/***/ }),

/***/ "./apps/settings/src/utils/validate.js":
/*!*********************************************!*\
  !*** ./apps/settings/src/utils/validate.js ***!
  \*********************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "validateBoolean": function() { return /* binding */ validateBoolean; },
/* harmony export */   "validateEmail": function() { return /* binding */ validateEmail; },
/* harmony export */   "validateLanguage": function() { return /* binding */ validateLanguage; },
/* harmony export */   "validateStringInput": function() { return /* binding */ validateStringInput; }
/* harmony export */ });
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/**
 * @copyright 2021, Christopher Ng <chrng8@gmail.com>
 *
 * @author Christopher Ng <chrng8@gmail.com>
 *
 * @license AGPL-3.0-or-later
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */

/*
 * Frontend validators, less strict than backend validators
 *
 * TODO add nice validation errors for Profile page settings modal
 */

/**
 * Validate the string input
 *
 * Generic validator just to check that input is not an empty string*
 *
 * @param {string} input the input
 * @return {boolean}
 */

function validateStringInput(input) {
  return input !== '';
}
/**
 * Validate the email input
 *
 * Compliant with PHP core FILTER_VALIDATE_EMAIL validator*
 *
 * Reference implementation https://github.com/mpyw/FILTER_VALIDATE_EMAIL.js/blob/71e62ca48841d2246a1b531e7e84f5a01f15e615/src/index.ts*
 *
 * @param {string} input the input
 * @return {boolean}
 */

function validateEmail(input) {
  return typeof input === 'string' && _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_0__.VALIDATE_EMAIL_REGEX.test(input) && input.slice(-1) !== '\n' && input.length <= 320 && encodeURIComponent(input).replace(/%../g, 'x').length <= 320;
}
/**
 * Validate the language input
 *
 * @param {object} input the input
 * @return {boolean}
 */

function validateLanguage(input) {
  return input.code !== '' && input.name !== '' && input.name !== undefined;
}
/**
 * Validate boolean input
 *
 * @param {boolean} input the input
 * @return {boolean}
 */

function validateBoolean(input) {
  return typeof input === 'boolean';
}

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Biography',
  props: {
    biography: {
      type: String,
      required: true
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialBiography: this.biography,
      localScope: this.scope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  methods: {
    onBiographyChange: function onBiographyChange(e) {
      this.$emit('update:biography', e.target.value);
      this.debounceBiographyChange(e.target.value.trim());
    },
    debounceBiographyChange: debounce__WEBPACK_IMPORTED_MODULE_2___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(biography) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return this.updatePrimaryBiography(biography);

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    updatePrimaryBiography: function updatePrimaryBiography(biography) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_ENUM.BIOGRAPHY, biography);

              case 3:
                responseData = _context2.sent;

                _this.handleResponse({
                  biography: biography,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this.handleResponse({
                  errorMessage: t('settings', 'Unable to update biography'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref2) {
      var _this2 = this;

      var biography = _ref2.biography,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialBiography = biography;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:biography:updated', biography);
        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this2.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this2.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _Biography__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Biography */ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    primaryBiography = _loadState.biographyMap.primaryBiography;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'BiographySection',
  components: {
    Biography: _Biography__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_READABLE_ENUM.BIOGRAPHY,
      primaryBiography: primaryBiography
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





 // TODO Global avatar updating on events (e.g. updating the displayname) is currently being handled by global js, investigate using https://github.com/nextcloud/nextcloud-event-bus for global avatar updating

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'DisplayName',
  props: {
    displayName: {
      type: String,
      required: true
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialDisplayName: this.displayName,
      localScope: this.scope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  methods: {
    onDisplayNameChange: function onDisplayNameChange(e) {
      this.$emit('update:display-name', e.target.value);
      this.debounceDisplayNameChange(e.target.value.trim());
    },
    debounceDisplayNameChange: debounce__WEBPACK_IMPORTED_MODULE_2___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(displayName) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                if (!(0,_utils_validate__WEBPACK_IMPORTED_MODULE_5__.validateStringInput)(displayName)) {
                  _context.next = 3;
                  break;
                }

                _context.next = 3;
                return this.updatePrimaryDisplayName(displayName);

              case 3:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    updatePrimaryDisplayName: function updatePrimaryDisplayName(displayName) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_ENUM.DISPLAYNAME, displayName);

              case 3:
                responseData = _context2.sent;

                _this.handleResponse({
                  displayName: displayName,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this.handleResponse({
                  errorMessage: t('settings', 'Unable to update full name'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref2) {
      var _this2 = this;

      var displayName = _ref2.displayName,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialDisplayName = displayName;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:display-name:updated', displayName);
        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this2.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this2.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _DisplayName__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./DisplayName */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//






var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    primaryDisplayName = _loadState.displayNameMap.primaryDisplayName;

var _loadState2 = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'accountParameters', {}),
    displayNameChangeSupported = _loadState2.displayNameChangeSupported;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'DisplayNameSection',
  components: {
    DisplayName: _DisplayName__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_READABLE_ENUM.DISPLAYNAME,
      displayNameChangeSupported: displayNameChangeSupported,
      primaryDisplayName: primaryDisplayName
    };
  },
  computed: {
    isValidSection: function isValidSection() {
      return (0,_utils_validate__WEBPACK_IMPORTED_MODULE_4__.validateStringInput)(this.primaryDisplayName.value);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/Actions */ "./node_modules/@nextcloud/vue/dist/Components/Actions.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/ActionButton */ "./node_modules/@nextcloud/vue/dist/Components/ActionButton.js");
/* harmony import */ var _nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _shared_FederationControl__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../shared/FederationControl */ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../../service/PersonalInfo/EmailService */ "./apps/settings/src/service/PersonalInfo/EmailService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//








/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Email',
  components: {
    Actions: (_nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0___default()),
    ActionButton: (_nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_1___default()),
    FederationControl: _shared_FederationControl__WEBPACK_IMPORTED_MODULE_4__["default"]
  },
  props: {
    email: {
      type: String,
      required: true
    },
    index: {
      type: Number,
      default: 0
    },
    primary: {
      type: Boolean,
      default: false
    },
    scope: {
      type: String,
      required: true
    },
    activeNotificationEmail: {
      type: String,
      default: ''
    },
    localVerificationState: {
      type: Number,
      default: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_5__.VERIFICATION_ENUM.NOT_VERIFIED
    }
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_5__.ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL,
      initialEmail: this.email,
      localScope: this.scope,
      saveAdditionalEmailScope: _service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.saveAdditionalEmailScope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  computed: {
    deleteDisabled: function deleteDisabled() {
      if (this.primary) {
        // Disable for empty primary email as there is nothing to delete
        // OR when initialEmail (reflects server state) and email (current input) are not the same
        return this.email === '' || this.initialEmail !== this.email;
      } else if (this.initialEmail !== '') {
        return this.initialEmail !== this.email;
      }

      return false;
    },
    deleteEmailLabel: function deleteEmailLabel() {
      if (this.primary) {
        return t('settings', 'Remove primary email');
      }

      return t('settings', 'Delete email');
    },
    setNotificationMailDisabled: function setNotificationMailDisabled() {
      return !this.primary && this.localVerificationState !== _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_5__.VERIFICATION_ENUM.VERIFIED;
    },
    setNotificationMailLabel: function setNotificationMailLabel() {
      if (this.isNotificationEmail) {
        return t('settings', 'Unset as primary email');
      } else if (!this.primary && this.localVerificationState !== _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_5__.VERIFICATION_ENUM.VERIFIED) {
        return t('settings', 'This address is not confirmed');
      }

      return t('settings', 'Set as primary email');
    },
    federationDisabled: function federationDisabled() {
      return !this.initialEmail;
    },
    inputId: function inputId() {
      if (this.primary) {
        return 'email';
      }

      return "email-".concat(this.index);
    },
    inputPlaceholder: function inputPlaceholder() {
      if (this.primary) {
        return t('settings', 'Your email address');
      }

      return t('settings', 'Additional email address {index}', {
        index: this.index + 1
      });
    },
    isNotificationEmail: function isNotificationEmail() {
      return this.email && this.email === this.activeNotificationEmail || this.primary && this.activeNotificationEmail === '';
    }
  },
  mounted: function mounted() {
    var _this = this;

    if (!this.primary && this.initialEmail === '') {
      // $nextTick is needed here, otherwise it may not always work https://stackoverflow.com/questions/51922767/autofocus-input-on-mount-vue-ios/63485725#63485725
      this.$nextTick(function () {
        var _this$$refs$email;

        return (_this$$refs$email = _this.$refs.email) === null || _this$$refs$email === void 0 ? void 0 : _this$$refs$email.focus();
      });
    }
  },
  methods: {
    onEmailChange: function onEmailChange(e) {
      this.$emit('update:email', e.target.value);
      this.debounceEmailChange(e.target.value.trim());
    },
    debounceEmailChange: debounce__WEBPACK_IMPORTED_MODULE_3___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(email) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                if (!((0,_utils_validate__WEBPACK_IMPORTED_MODULE_7__.validateEmail)(email) || email === '')) {
                  _context.next = 14;
                  break;
                }

                if (!this.primary) {
                  _context.next = 6;
                  break;
                }

                _context.next = 4;
                return this.updatePrimaryEmail(email);

              case 4:
                _context.next = 14;
                break;

              case 6:
                if (!email) {
                  _context.next = 14;
                  break;
                }

                if (!(this.initialEmail === '')) {
                  _context.next = 12;
                  break;
                }

                _context.next = 10;
                return this.addAdditionalEmail(email);

              case 10:
                _context.next = 14;
                break;

              case 12:
                _context.next = 14;
                return this.updateAdditionalEmail(email);

              case 14:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    deleteEmail: function deleteEmail() {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                if (!_this2.primary) {
                  _context2.next = 6;
                  break;
                }

                _this2.$emit('update:email', '');

                _context2.next = 4;
                return _this2.updatePrimaryEmail('');

              case 4:
                _context2.next = 8;
                break;

              case 6:
                _context2.next = 8;
                return _this2.deleteAdditionalEmail();

              case 8:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2);
      }))();
    },
    updatePrimaryEmail: function updatePrimaryEmail(email) {
      var _this3 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee3() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                _context3.prev = 0;
                _context3.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.savePrimaryEmail)(email);

              case 3:
                responseData = _context3.sent;

                _this3.handleResponse({
                  email: email,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context3.next = 10;
                break;

              case 7:
                _context3.prev = 7;
                _context3.t0 = _context3["catch"](0);

                if (email === '') {
                  _this3.handleResponse({
                    errorMessage: t('settings', 'Unable to delete primary email address'),
                    error: _context3.t0
                  });
                } else {
                  _this3.handleResponse({
                    errorMessage: t('settings', 'Unable to update primary email address'),
                    error: _context3.t0
                  });
                }

              case 10:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3, null, [[0, 7]]);
      }))();
    },
    addAdditionalEmail: function addAdditionalEmail(email) {
      var _this4 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee4() {
        var _responseData$ocs2, _responseData$ocs2$me, responseData;

        return regeneratorRuntime.wrap(function _callee4$(_context4) {
          while (1) {
            switch (_context4.prev = _context4.next) {
              case 0:
                _context4.prev = 0;
                _context4.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.saveAdditionalEmail)(email);

              case 3:
                responseData = _context4.sent;

                _this4.handleResponse({
                  email: email,
                  status: (_responseData$ocs2 = responseData.ocs) === null || _responseData$ocs2 === void 0 ? void 0 : (_responseData$ocs2$me = _responseData$ocs2.meta) === null || _responseData$ocs2$me === void 0 ? void 0 : _responseData$ocs2$me.status
                });

                _context4.next = 10;
                break;

              case 7:
                _context4.prev = 7;
                _context4.t0 = _context4["catch"](0);

                _this4.handleResponse({
                  errorMessage: t('settings', 'Unable to add additional email address'),
                  error: _context4.t0
                });

              case 10:
              case "end":
                return _context4.stop();
            }
          }
        }, _callee4, null, [[0, 7]]);
      }))();
    },
    setNotificationMail: function setNotificationMail() {
      var _this5 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee5() {
        var _responseData$ocs3, _responseData$ocs3$me, newNotificationMailValue, responseData;

        return regeneratorRuntime.wrap(function _callee5$(_context5) {
          while (1) {
            switch (_context5.prev = _context5.next) {
              case 0:
                _context5.prev = 0;
                newNotificationMailValue = _this5.primary || _this5.isNotificationEmail ? '' : _this5.initialEmail;
                _context5.next = 4;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.saveNotificationEmail)(newNotificationMailValue);

              case 4:
                responseData = _context5.sent;

                _this5.handleResponse({
                  notificationEmail: newNotificationMailValue,
                  status: (_responseData$ocs3 = responseData.ocs) === null || _responseData$ocs3 === void 0 ? void 0 : (_responseData$ocs3$me = _responseData$ocs3.meta) === null || _responseData$ocs3$me === void 0 ? void 0 : _responseData$ocs3$me.status
                });

                _context5.next = 11;
                break;

              case 8:
                _context5.prev = 8;
                _context5.t0 = _context5["catch"](0);

                _this5.handleResponse({
                  errorMessage: 'Unable to choose this email for notifications',
                  error: _context5.t0
                });

              case 11:
              case "end":
                return _context5.stop();
            }
          }
        }, _callee5, null, [[0, 8]]);
      }))();
    },
    updateAdditionalEmail: function updateAdditionalEmail(email) {
      var _this6 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee6() {
        var _responseData$ocs4, _responseData$ocs4$me, responseData;

        return regeneratorRuntime.wrap(function _callee6$(_context6) {
          while (1) {
            switch (_context6.prev = _context6.next) {
              case 0:
                _context6.prev = 0;
                _context6.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.updateAdditionalEmail)(_this6.initialEmail, email);

              case 3:
                responseData = _context6.sent;

                _this6.handleResponse({
                  email: email,
                  status: (_responseData$ocs4 = responseData.ocs) === null || _responseData$ocs4 === void 0 ? void 0 : (_responseData$ocs4$me = _responseData$ocs4.meta) === null || _responseData$ocs4$me === void 0 ? void 0 : _responseData$ocs4$me.status
                });

                _context6.next = 10;
                break;

              case 7:
                _context6.prev = 7;
                _context6.t0 = _context6["catch"](0);

                _this6.handleResponse({
                  errorMessage: t('settings', 'Unable to update additional email address'),
                  error: _context6.t0
                });

              case 10:
              case "end":
                return _context6.stop();
            }
          }
        }, _callee6, null, [[0, 7]]);
      }))();
    },
    deleteAdditionalEmail: function deleteAdditionalEmail() {
      var _this7 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee7() {
        var _responseData$ocs5, _responseData$ocs5$me, responseData;

        return regeneratorRuntime.wrap(function _callee7$(_context7) {
          while (1) {
            switch (_context7.prev = _context7.next) {
              case 0:
                _context7.prev = 0;
                _context7.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_6__.removeAdditionalEmail)(_this7.initialEmail);

              case 3:
                responseData = _context7.sent;

                _this7.handleDeleteAdditionalEmail((_responseData$ocs5 = responseData.ocs) === null || _responseData$ocs5 === void 0 ? void 0 : (_responseData$ocs5$me = _responseData$ocs5.meta) === null || _responseData$ocs5$me === void 0 ? void 0 : _responseData$ocs5$me.status);

                _context7.next = 10;
                break;

              case 7:
                _context7.prev = 7;
                _context7.t0 = _context7["catch"](0);

                _this7.handleResponse({
                  errorMessage: t('settings', 'Unable to delete additional email address'),
                  error: _context7.t0
                });

              case 10:
              case "end":
                return _context7.stop();
            }
          }
        }, _callee7, null, [[0, 7]]);
      }))();
    },
    handleDeleteAdditionalEmail: function handleDeleteAdditionalEmail(status) {
      if (status === 'ok') {
        this.$emit('delete-additional-email');
      } else {
        this.handleResponse({
          errorMessage: t('settings', 'Unable to delete additional email address')
        });
      }
    },
    handleResponse: function handleResponse(_ref2) {
      var _this8 = this;

      var email = _ref2.email,
          notificationEmail = _ref2.notificationEmail,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        if (email) {
          this.initialEmail = email;
        } else if (notificationEmail !== undefined) {
          this.$emit('update:notification-email', notificationEmail);
        }

        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this8.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_2__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this8.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _Email__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Email */ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../service/PersonalInfo/EmailService */ "./apps/settings/src/service/PersonalInfo/EmailService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//








var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    _loadState$emailMap = _loadState.emailMap,
    additionalEmails = _loadState$emailMap.additionalEmails,
    primaryEmail = _loadState$emailMap.primaryEmail,
    notificationEmail = _loadState$emailMap.notificationEmail;

var _loadState2 = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'accountParameters', {}),
    displayNameChangeSupported = _loadState2.displayNameChangeSupported;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'EmailSection',
  components: {
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_3__["default"],
    Email: _Email__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_READABLE_ENUM.EMAIL,
      additionalEmails: additionalEmails,
      displayNameChangeSupported: displayNameChangeSupported,
      primaryEmail: primaryEmail,
      savePrimaryEmailScope: _service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_5__.savePrimaryEmailScope,
      notificationEmail: notificationEmail
    };
  },
  computed: {
    firstAdditionalEmail: function firstAdditionalEmail() {
      if (this.additionalEmails.length) {
        return this.additionalEmails[0].value;
      }

      return null;
    },
    isValidSection: function isValidSection() {
      return (0,_utils_validate__WEBPACK_IMPORTED_MODULE_6__.validateEmail)(this.primaryEmail.value) && this.additionalEmails.map(function (_ref) {
        var value = _ref.value;
        return value;
      }).every(_utils_validate__WEBPACK_IMPORTED_MODULE_6__.validateEmail);
    },
    primaryEmailValue: {
      get: function get() {
        return this.primaryEmail.value;
      },
      set: function set(value) {
        this.primaryEmail.value = value;
      }
    }
  },
  methods: {
    onAddAdditionalEmail: function onAddAdditionalEmail() {
      if (this.isValidSection) {
        this.additionalEmails.push({
          value: '',
          scope: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.DEFAULT_ADDITIONAL_EMAIL_SCOPE
        });
      }
    },
    onDeleteAdditionalEmail: function onDeleteAdditionalEmail(index) {
      this.$delete(this.additionalEmails, index);
    },
    onUpdateEmail: function onUpdateEmail() {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        var deletedEmail;
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                if (!(_this.primaryEmailValue === '' && _this.firstAdditionalEmail)) {
                  _context.next = 7;
                  break;
                }

                deletedEmail = _this.firstAdditionalEmail;
                _context.next = 4;
                return _this.deleteFirstAdditionalEmail();

              case 4:
                _this.primaryEmailValue = deletedEmail;
                _context.next = 7;
                return _this.updatePrimaryEmail();

              case 7:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    onUpdateNotificationEmail: function onUpdateNotificationEmail(email) {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _this2.notificationEmail = email;

              case 1:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2);
      }))();
    },
    updatePrimaryEmail: function updatePrimaryEmail() {
      var _this3 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee3() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                _context3.prev = 0;
                _context3.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_5__.savePrimaryEmail)(_this3.primaryEmailValue);

              case 3:
                responseData = _context3.sent;

                _this3.handleResponse((_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status);

                _context3.next = 10;
                break;

              case 7:
                _context3.prev = 7;
                _context3.t0 = _context3["catch"](0);

                _this3.handleResponse('error', t('settings', 'Unable to update primary email address'), _context3.t0);

              case 10:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3, null, [[0, 7]]);
      }))();
    },
    deleteFirstAdditionalEmail: function deleteFirstAdditionalEmail() {
      var _this4 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee4() {
        var _responseData$ocs2, _responseData$ocs2$me, responseData;

        return regeneratorRuntime.wrap(function _callee4$(_context4) {
          while (1) {
            switch (_context4.prev = _context4.next) {
              case 0:
                _context4.prev = 0;
                _context4.next = 3;
                return (0,_service_PersonalInfo_EmailService__WEBPACK_IMPORTED_MODULE_5__.removeAdditionalEmail)(_this4.firstAdditionalEmail);

              case 3:
                responseData = _context4.sent;

                _this4.handleDeleteFirstAdditionalEmail((_responseData$ocs2 = responseData.ocs) === null || _responseData$ocs2 === void 0 ? void 0 : (_responseData$ocs2$me = _responseData$ocs2.meta) === null || _responseData$ocs2$me === void 0 ? void 0 : _responseData$ocs2$me.status);

                _context4.next = 10;
                break;

              case 7:
                _context4.prev = 7;
                _context4.t0 = _context4["catch"](0);

                _this4.handleResponse('error', t('settings', 'Unable to delete additional email address'), _context4.t0);

              case 10:
              case "end":
                return _context4.stop();
            }
          }
        }, _callee4, null, [[0, 7]]);
      }))();
    },
    handleDeleteFirstAdditionalEmail: function handleDeleteFirstAdditionalEmail(status) {
      if (status === 'ok') {
        this.$delete(this.additionalEmails, 0);
      } else {
        this.handleResponse('error', t('settings', 'Unable to delete additional email address'), {});
      }
    },
    handleResponse: function handleResponse(status, errorMessage, error) {
      if (status !== 'ok') {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_1__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Headline',
  props: {
    headline: {
      type: String,
      required: true
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialHeadline: this.headline,
      localScope: this.scope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  methods: {
    onHeadlineChange: function onHeadlineChange(e) {
      this.$emit('update:headline', e.target.value);
      this.debounceHeadlineChange(e.target.value.trim());
    },
    debounceHeadlineChange: debounce__WEBPACK_IMPORTED_MODULE_2___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(headline) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return this.updatePrimaryHeadline(headline);

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    updatePrimaryHeadline: function updatePrimaryHeadline(headline) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_ENUM.HEADLINE, headline);

              case 3:
                responseData = _context2.sent;

                _this.handleResponse({
                  headline: headline,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this.handleResponse({
                  errorMessage: t('settings', 'Unable to update headline'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref2) {
      var _this2 = this;

      var headline = _ref2.headline,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialHeadline = headline;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:headline:updated', headline);
        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this2.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this2.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _Headline__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Headline */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    primaryHeadline = _loadState.headlineMap.primaryHeadline;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'HeadlineSection',
  components: {
    Headline: _Headline__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_READABLE_ENUM.HEADLINE,
      primaryHeadline: primaryHeadline
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); enumerableOnly && (symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; })), keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = null != arguments[i] ? arguments[i] : {}; i % 2 ? ownKeys(Object(source), !0).forEach(function (key) { _defineProperty(target, key, source[key]); }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)) : ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

function _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _unsupportedIterableToArray(arr) || _nonIterableSpread(); }

function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _iterableToArray(iter) { if (typeof Symbol !== "undefined" && iter[Symbol.iterator] != null || iter["@@iterator"] != null) return Array.from(iter); }

function _arrayWithoutHoles(arr) { if (Array.isArray(arr)) return _arrayLikeToArray(arr); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//




/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Language',
  props: {
    commonLanguages: {
      type: Array,
      required: true
    },
    otherLanguages: {
      type: Array,
      required: true
    },
    language: {
      type: Object,
      required: true
    }
  },
  data: function data() {
    return {
      initialLanguage: this.language
    };
  },
  computed: {
    allLanguages: function allLanguages() {
      return Object.freeze([].concat(_toConsumableArray(this.commonLanguages), _toConsumableArray(this.otherLanguages)).reduce(function (acc, _ref) {
        var code = _ref.code,
            name = _ref.name;
        return _objectSpread(_objectSpread({}, acc), {}, _defineProperty({}, code, name));
      }, {}));
    }
  },
  methods: {
    onLanguageChange: function onLanguageChange(e) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        var language;
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                language = _this.constructLanguage(e.target.value);

                _this.$emit('update:language', language);

                if (!(0,_utils_validate__WEBPACK_IMPORTED_MODULE_3__.validateLanguage)(language)) {
                  _context.next = 5;
                  break;
                }

                _context.next = 5;
                return _this.updateLanguage(language);

              case 5:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    updateLanguage: function updateLanguage(language) {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_2__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_1__.ACCOUNT_SETTING_PROPERTY_ENUM.LANGUAGE, language.code);

              case 3:
                responseData = _context2.sent;

                _this2.handleResponse({
                  language: language,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _this2.reloadPage();

                _context2.next = 11;
                break;

              case 8:
                _context2.prev = 8;
                _context2.t0 = _context2["catch"](0);

                _this2.handleResponse({
                  errorMessage: t('settings', 'Unable to update language'),
                  error: _context2.t0
                });

              case 11:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 8]]);
      }))();
    },
    constructLanguage: function constructLanguage(languageCode) {
      return {
        code: languageCode,
        name: this.allLanguages[languageCode]
      };
    },
    handleResponse: function handleResponse(_ref2) {
      var language = _ref2.language,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialLanguage = language;
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
      }
    },
    reloadPage: function reloadPage() {
      location.reload();
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _Language__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Language */ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    _loadState$languageMa = _loadState.languageMap,
    activeLanguage = _loadState$languageMa.activeLanguage,
    commonLanguages = _loadState$languageMa.commonLanguages,
    otherLanguages = _loadState$languageMa.otherLanguages;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'LanguageSection',
  components: {
    Language: _Language__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_SETTING_PROPERTY_READABLE_ENUM.LANGUAGE,
      commonLanguages: commonLanguages,
      otherLanguages: otherLanguages,
      language: activeLanguage
    };
  },
  computed: {
    isEditable: function isEditable() {
      return Boolean(this.language);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Organisation',
  props: {
    organisation: {
      type: String,
      required: true
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialOrganisation: this.organisation,
      localScope: this.scope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  methods: {
    onOrganisationChange: function onOrganisationChange(e) {
      this.$emit('update:organisation', e.target.value);
      this.debounceOrganisationChange(e.target.value.trim());
    },
    debounceOrganisationChange: debounce__WEBPACK_IMPORTED_MODULE_2___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(organisation) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return this.updatePrimaryOrganisation(organisation);

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    updatePrimaryOrganisation: function updatePrimaryOrganisation(organisation) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_ENUM.ORGANISATION, organisation);

              case 3:
                responseData = _context2.sent;

                _this.handleResponse({
                  organisation: organisation,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this.handleResponse({
                  errorMessage: t('settings', 'Unable to update organisation'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref2) {
      var _this2 = this;

      var organisation = _ref2.organisation,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialOrganisation = organisation;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:organisation:updated', organisation);
        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this2.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this2.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _Organisation__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Organisation */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    primaryOrganisation = _loadState.organisationMap.primaryOrganisation;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'OrganisationSection',
  components: {
    Organisation: _Organisation__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_READABLE_ENUM.ORGANISATION,
      primaryOrganisation: primaryOrganisation
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue_material_design_icons_ChevronDown__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue-material-design-icons/ChevronDown */ "./node_modules/vue-material-design-icons/ChevronDown.vue");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'EditProfileAnchorLink',
  components: {
    ChevronDownIcon: vue_material_design_icons_ChevronDown__WEBPACK_IMPORTED_MODULE_0__["default"]
  },
  props: {
    profileEnabled: {
      type: Boolean,
      required: true
    }
  },
  computed: {
    disabled: function disabled() {
      return !this.profileEnabled;
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'ProfileCheckbox',
  props: {
    profileEnabled: {
      type: Boolean,
      required: true
    }
  },
  data: function data() {
    return {
      initialProfileEnabled: this.profileEnabled
    };
  },
  methods: {
    onEnableProfileChange: function onEnableProfileChange(e) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        var isEnabled;
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                isEnabled = e.target.checked;

                _this.$emit('update:profile-enabled', isEnabled);

                if (!(0,_utils_validate__WEBPACK_IMPORTED_MODULE_3__.validateBoolean)(isEnabled)) {
                  _context.next = 5;
                  break;
                }

                _context.next = 5;
                return _this.updateEnableProfile(isEnabled);

              case 5:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    updateEnableProfile: function updateEnableProfile(isEnabled) {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_2__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_ENUM.PROFILE_ENABLED, isEnabled);

              case 3:
                responseData = _context2.sent;

                _this2.handleResponse({
                  isEnabled: isEnabled,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this2.handleResponse({
                  errorMessage: t('settings', 'Unable to update profile enabled state'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref) {
      var isEnabled = _ref.isEnabled,
          status = _ref.status,
          errorMessage = _ref.errorMessage,
          error = _ref.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialProfileEnabled = isEnabled;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:profile-enabled:updated', isEnabled);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_auth__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/auth */ "./node_modules/@nextcloud/auth/dist/index.js");
/* harmony import */ var _nextcloud_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/router */ "./node_modules/@nextcloud/router/dist/index.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Avatar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/Avatar */ "./node_modules/@nextcloud/vue/dist/Components/Avatar.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Avatar__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_Avatar__WEBPACK_IMPORTED_MODULE_2__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'ProfilePreviewCard',
  components: {
    Avatar: (_nextcloud_vue_dist_Components_Avatar__WEBPACK_IMPORTED_MODULE_2___default())
  },
  props: {
    displayName: {
      type: String,
      required: true
    },
    organisation: {
      type: String,
      required: true
    },
    profileEnabled: {
      type: Boolean,
      required: true
    },
    userId: {
      type: String,
      required: true
    }
  },
  computed: {
    disabled: function disabled() {
      return !this.profileEnabled;
    },
    profilePageLink: function profilePageLink() {
      if (this.profileEnabled) {
        return (0,_nextcloud_router__WEBPACK_IMPORTED_MODULE_1__.generateUrl)('/u/{userId}', {
          userId: (0,_nextcloud_auth__WEBPACK_IMPORTED_MODULE_0__.getCurrentUser)().uid
        });
      } // Since an anchor element is used rather than a button for better UX,
      // this hack removes href if the profile is disabled so that disabling pointer-events is not needed to prevent a click from opening a page
      // and to allow the hover event (which disabling pointer-events wouldn't allow) for styling


      return null;
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var _EditProfileAnchorLink__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./EditProfileAnchorLink */ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _ProfileCheckbox__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./ProfileCheckbox */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue");
/* harmony import */ var _ProfilePreviewCard__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./ProfilePreviewCard */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//








var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    organisation = _loadState.organisationMap.primaryOrganisation.value,
    displayName = _loadState.displayNameMap.primaryDisplayName.value,
    profileEnabled = _loadState.profileEnabled,
    userId = _loadState.userId;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'ProfileSection',
  components: {
    EditProfileAnchorLink: _EditProfileAnchorLink__WEBPACK_IMPORTED_MODULE_2__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_3__["default"],
    ProfileCheckbox: _ProfileCheckbox__WEBPACK_IMPORTED_MODULE_4__["default"],
    ProfilePreviewCard: _ProfilePreviewCard__WEBPACK_IMPORTED_MODULE_5__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_6__.ACCOUNT_PROPERTY_READABLE_ENUM.PROFILE_ENABLED,
      organisation: organisation,
      displayName: displayName,
      profileEnabled: profileEnabled,
      userId: userId
    };
  },
  mounted: function mounted() {
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.subscribe)('settings:display-name:updated', this.handleDisplayNameUpdate);
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.subscribe)('settings:organisation:updated', this.handleOrganisationUpdate);
  },
  beforeDestroy: function beforeDestroy() {
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.unsubscribe)('settings:display-name:updated', this.handleDisplayNameUpdate);
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.unsubscribe)('settings:organisation:updated', this.handleOrganisationUpdate);
  },
  methods: {
    handleDisplayNameUpdate: function handleDisplayNameUpdate(displayName) {
      this.displayName = displayName;
    },
    handleOrganisationUpdate: function handleOrganisationUpdate(organisation) {
      this.organisation = organisation;
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _VisibilityDropdown__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./VisibilityDropdown */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
function _slicedToArray(arr, i) { return _arrayWithHoles(arr) || _iterableToArrayLimit(arr, i) || _unsupportedIterableToArray(arr, i) || _nonIterableRest(); }

function _nonIterableRest() { throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

function _iterableToArrayLimit(arr, i) { var _i = arr == null ? null : typeof Symbol !== "undefined" && arr[Symbol.iterator] || arr["@@iterator"]; if (_i == null) return; var _arr = []; var _n = true; var _d = false; var _s, _e; try { for (_i = _i.call(arr); !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i["return"] != null) _i["return"](); } finally { if (_d) throw _e; } } return _arr; }

function _arrayWithHoles(arr) { if (Array.isArray(arr)) return arr; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//






var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'profileParameters', {}),
    profileConfig = _loadState.profileConfig;

var _loadState2 = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', false),
    profileEnabled = _loadState2.profileEnabled;

var compareParams = function compareParams(a, b) {
  if (a.appId === b.appId || a.appId !== 'core' && b.appId !== 'core') {
    return a.displayId.localeCompare(b.displayId);
  } else if (a.appId === 'core') {
    return 1;
  } else {
    return -1;
  }
};

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'ProfileVisibilitySection',
  components: {
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"],
    VisibilityDropdown: _VisibilityDropdown__WEBPACK_IMPORTED_MODULE_3__["default"]
  },
  data: function data() {
    return {
      heading: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.PROFILE_READABLE_ENUM.PROFILE_VISIBILITY,
      profileEnabled: profileEnabled,
      visibilityParams: Object.entries(profileConfig).map(function (_ref) {
        var _ref2 = _slicedToArray(_ref, 2),
            paramId = _ref2[0],
            _ref2$ = _ref2[1],
            appId = _ref2$.appId,
            displayId = _ref2$.displayId,
            visibility = _ref2$.visibility;

        return {
          id: paramId,
          appId: appId,
          displayId: displayId,
          visibility: visibility
        };
      }).sort(compareParams),
      // TODO remove this when not used once the settings layout is updated
      marginLeft: window.matchMedia('(min-width: 1600px)').matches ? window.getComputedStyle(document.getElementById('personal-settings-avatar-container')).getPropertyValue('width').trim() : '0px'
    };
  },
  computed: {
    disabled: function disabled() {
      return !this.profileEnabled;
    },
    rows: function rows() {
      return Math.ceil(this.visibilityParams.length / 2);
    }
  },
  mounted: function mounted() {
    var _this = this;

    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.subscribe)('settings:profile-enabled:updated', this.handleProfileEnabledUpdate); // TODO remove this when not used once the settings layout is updated

    window.onresize = function () {
      _this.marginLeft = window.matchMedia('(min-width: 1600px)').matches ? window.getComputedStyle(document.getElementById('personal-settings-avatar-container')).getPropertyValue('width').trim() : '0px';
    };
  },
  beforeDestroy: function beforeDestroy() {
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.unsubscribe)('settings:profile-enabled:updated', this.handleProfileEnabledUpdate);
  },
  methods: {
    handleProfileEnabledUpdate: function handleProfileEnabledUpdate(profileEnabled) {
      this.profileEnabled = profileEnabled;
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Multiselect__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/Multiselect */ "./node_modules/@nextcloud/vue/dist/Components/Multiselect.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Multiselect__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_Multiselect__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _service_ProfileService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/ProfileService */ "./apps/settings/src/service/ProfileService.js");
/* harmony import */ var _utils_validate__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../utils/validate */ "./apps/settings/src/utils/validate.js");
/* harmony import */ var _constants_ProfileConstants__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../../constants/ProfileConstants */ "./apps/settings/src/constants/ProfileConstants.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//








var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_1__.loadState)('settings', 'personalInfoParameters', false),
    profileEnabled = _loadState.profileEnabled;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'VisibilityDropdown',
  components: {
    Multiselect: (_nextcloud_vue_dist_Components_Multiselect__WEBPACK_IMPORTED_MODULE_3___default())
  },
  props: {
    paramId: {
      type: String,
      required: true
    },
    displayId: {
      type: String,
      required: true
    },
    visibility: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialVisibility: this.visibility,
      profileEnabled: profileEnabled
    };
  },
  computed: {
    disabled: function disabled() {
      return !this.profileEnabled;
    },
    inputId: function inputId() {
      return "profile-visibility-".concat(this.paramId);
    },
    visibilityObject: function visibilityObject() {
      return _constants_ProfileConstants__WEBPACK_IMPORTED_MODULE_6__.VISIBILITY_PROPERTY_ENUM[this.visibility];
    },
    visibilityOptions: function visibilityOptions() {
      return Object.values(_constants_ProfileConstants__WEBPACK_IMPORTED_MODULE_6__.VISIBILITY_PROPERTY_ENUM);
    }
  },
  mounted: function mounted() {
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_2__.subscribe)('settings:profile-enabled:updated', this.handleProfileEnabledUpdate);
  },
  beforeDestroy: function beforeDestroy() {
    (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_2__.unsubscribe)('settings:profile-enabled:updated', this.handleProfileEnabledUpdate);
  },
  methods: {
    onVisibilityChange: function onVisibilityChange(visibilityObject) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        var visibility;
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                if (!(visibilityObject !== null)) {
                  _context.next = 6;
                  break;
                }

                visibility = visibilityObject.name;

                _this.$emit('update:visibility', visibility);

                if (!(0,_utils_validate__WEBPACK_IMPORTED_MODULE_5__.validateStringInput)(visibility)) {
                  _context.next = 6;
                  break;
                }

                _context.next = 6;
                return _this.updateVisibility(visibility);

              case 6:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    updateVisibility: function updateVisibility(visibility) {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_ProfileService__WEBPACK_IMPORTED_MODULE_4__.saveProfileParameterVisibility)(_this2.paramId, visibility);

              case 3:
                responseData = _context2.sent;

                _this2.handleResponse({
                  visibility: visibility,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this2.handleResponse({
                  errorMessage: t('settings', 'Unable to update visibility of {displayId}', {
                    displayId: _this2.displayId
                  }),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref) {
      var visibility = _ref.visibility,
          status = _ref.status,
          errorMessage = _ref.errorMessage,
          error = _ref.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialVisibility = visibility;
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
      }
    },
    handleProfileEnabledUpdate: function handleProfileEnabledUpdate(profileEnabled) {
      this.profileEnabled = profileEnabled;
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/event-bus */ "./node_modules/@nextcloud/event-bus/dist/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! debounce */ "./node_modules/debounce/index.js");
/* harmony import */ var debounce__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(debounce__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Role',
  props: {
    role: {
      type: String,
      required: true
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      initialRole: this.role,
      localScope: this.scope,
      showCheckmarkIcon: false,
      showErrorIcon: false
    };
  },
  methods: {
    onRoleChange: function onRoleChange(e) {
      this.$emit('update:role', e.target.value);
      this.debounceRoleChange(e.target.value.trim());
    },
    debounceRoleChange: debounce__WEBPACK_IMPORTED_MODULE_2___default()( /*#__PURE__*/function () {
      var _ref = _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee(role) {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return this.updatePrimaryRole(role);

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      return function (_x) {
        return _ref.apply(this, arguments);
      };
    }(), 500),
    updatePrimaryRole: function updatePrimaryRole(role) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_4__.savePrimaryAccountProperty)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_ENUM.ROLE, role);

              case 3:
                responseData = _context2.sent;

                _this.handleResponse({
                  role: role,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this.handleResponse({
                  errorMessage: t('settings', 'Unable to update role'),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref2) {
      var _this2 = this;

      var role = _ref2.role,
          status = _ref2.status,
          errorMessage = _ref2.errorMessage,
          error = _ref2.error;

      if (status === 'ok') {
        // Ensure that local state reflects server state
        this.initialRole = role;
        (0,_nextcloud_event_bus__WEBPACK_IMPORTED_MODULE_1__.emit)('settings:role:updated', role);
        this.showCheckmarkIcon = true;
        setTimeout(function () {
          _this2.showCheckmarkIcon = false;
        }, 2000);
      } else {
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_0__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
        this.showErrorIcon = true;
        setTimeout(function () {
          _this2.showErrorIcon = false;
        }, 2000);
      }
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _Role__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Role */ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue");
/* harmony import */ var _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/HeaderBar */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//





var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_0__.loadState)('settings', 'personalInfoParameters', {}),
    primaryRole = _loadState.roleMap.primaryRole;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'RoleSection',
  components: {
    Role: _Role__WEBPACK_IMPORTED_MODULE_1__["default"],
    HeaderBar: _shared_HeaderBar__WEBPACK_IMPORTED_MODULE_2__["default"]
  },
  data: function data() {
    return {
      accountProperty: _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_3__.ACCOUNT_PROPERTY_READABLE_ENUM.ROLE,
      primaryRole: primaryRole
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'AddButton',
  props: {
    disabled: {
      type: Boolean,
      default: true
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/Actions */ "./node_modules/@nextcloud/vue/dist/Components/Actions.js");
/* harmony import */ var _nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @nextcloud/initial-state */ "./node_modules/@nextcloud/initial-state/dist/index.js");
/* harmony import */ var _nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @nextcloud/dialogs */ "./node_modules/@nextcloud/dialogs/dist/index.es.js");
/* harmony import */ var _FederationControlAction__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./FederationControlAction */ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
/* harmony import */ var _service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../service/PersonalInfo/PersonalInfoService */ "./apps/settings/src/service/PersonalInfo/PersonalInfoService.js");
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

function _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _unsupportedIterableToArray(arr) || _nonIterableSpread(); }

function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _iterableToArray(iter) { if (typeof Symbol !== "undefined" && iter[Symbol.iterator] != null || iter["@@iterator"] != null) return Array.from(iter); }

function _arrayWithoutHoles(arr) { if (Array.isArray(arr)) return _arrayLikeToArray(arr); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//







var _loadState = (0,_nextcloud_initial_state__WEBPACK_IMPORTED_MODULE_1__.loadState)('settings', 'accountParameters', {}),
    lookupServerUploadEnabled = _loadState.lookupServerUploadEnabled;

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'FederationControl',
  components: {
    Actions: (_nextcloud_vue_dist_Components_Actions__WEBPACK_IMPORTED_MODULE_0___default()),
    FederationControlAction: _FederationControlAction__WEBPACK_IMPORTED_MODULE_3__["default"]
  },
  props: {
    accountProperty: {
      type: String,
      required: true,
      validator: function validator(value) {
        return Object.values(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.ACCOUNT_PROPERTY_READABLE_ENUM).includes(value);
      }
    },
    additional: {
      type: Boolean,
      default: false
    },
    additionalValue: {
      type: String,
      default: ''
    },
    disabled: {
      type: Boolean,
      default: false
    },
    handleAdditionalScopeChange: {
      type: Function,
      default: null
    },
    scope: {
      type: String,
      required: true
    }
  },
  data: function data() {
    return {
      accountPropertyLowerCase: this.accountProperty.toLocaleLowerCase(),
      initialScope: this.scope
    };
  },
  computed: {
    ariaLabel: function ariaLabel() {
      return t('settings', 'Change scope level of {accountProperty}', {
        accountProperty: this.accountPropertyLowerCase
      });
    },
    scopeIcon: function scopeIcon() {
      return _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_PROPERTY_ENUM[this.scope].iconClass;
    },
    federationScopes: function federationScopes() {
      return Object.values(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_PROPERTY_ENUM);
    },
    supportedScopes: function supportedScopes() {
      if (lookupServerUploadEnabled && !_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.UNPUBLISHED_READABLE_PROPERTIES.includes(this.accountProperty)) {
        return [].concat(_toConsumableArray(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.PROPERTY_READABLE_SUPPORTED_SCOPES_ENUM[this.accountProperty]), [_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_ENUM.FEDERATED, _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.SCOPE_ENUM.PUBLISHED]);
      }

      return _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.PROPERTY_READABLE_SUPPORTED_SCOPES_ENUM[this.accountProperty];
    }
  },
  methods: {
    changeScope: function changeScope(scope) {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
        return regeneratorRuntime.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _this.$emit('update:scope', scope);

                if (_this.additional) {
                  _context.next = 6;
                  break;
                }

                _context.next = 4;
                return _this.updatePrimaryScope(scope);

              case 4:
                _context.next = 8;
                break;

              case 6:
                _context.next = 8;
                return _this.updateAdditionalScope(scope);

              case 8:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    updatePrimaryScope: function updatePrimaryScope(scope) {
      var _this2 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee2() {
        var _responseData$ocs, _responseData$ocs$met, responseData;

        return regeneratorRuntime.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.prev = 0;
                _context2.next = 3;
                return (0,_service_PersonalInfo_PersonalInfoService__WEBPACK_IMPORTED_MODULE_5__.savePrimaryAccountPropertyScope)(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_4__.PROPERTY_READABLE_KEYS_ENUM[_this2.accountProperty], scope);

              case 3:
                responseData = _context2.sent;

                _this2.handleResponse({
                  scope: scope,
                  status: (_responseData$ocs = responseData.ocs) === null || _responseData$ocs === void 0 ? void 0 : (_responseData$ocs$met = _responseData$ocs.meta) === null || _responseData$ocs$met === void 0 ? void 0 : _responseData$ocs$met.status
                });

                _context2.next = 10;
                break;

              case 7:
                _context2.prev = 7;
                _context2.t0 = _context2["catch"](0);

                _this2.handleResponse({
                  errorMessage: t('settings', 'Unable to update federation scope of the primary {accountProperty}', {
                    accountProperty: _this2.accountPropertyLowerCase
                  }),
                  error: _context2.t0
                });

              case 10:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, null, [[0, 7]]);
      }))();
    },
    updateAdditionalScope: function updateAdditionalScope(scope) {
      var _this3 = this;

      return _asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee3() {
        var _responseData$ocs2, _responseData$ocs2$me, responseData;

        return regeneratorRuntime.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                _context3.prev = 0;
                _context3.next = 3;
                return _this3.handleAdditionalScopeChange(_this3.additionalValue, scope);

              case 3:
                responseData = _context3.sent;

                _this3.handleResponse({
                  scope: scope,
                  status: (_responseData$ocs2 = responseData.ocs) === null || _responseData$ocs2 === void 0 ? void 0 : (_responseData$ocs2$me = _responseData$ocs2.meta) === null || _responseData$ocs2$me === void 0 ? void 0 : _responseData$ocs2$me.status
                });

                _context3.next = 10;
                break;

              case 7:
                _context3.prev = 7;
                _context3.t0 = _context3["catch"](0);

                _this3.handleResponse({
                  errorMessage: t('settings', 'Unable to update federation scope of additional {accountProperty}', {
                    accountProperty: _this3.accountPropertyLowerCase
                  }),
                  error: _context3.t0
                });

              case 10:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3, null, [[0, 7]]);
      }))();
    },
    handleResponse: function handleResponse(_ref) {
      var scope = _ref.scope,
          status = _ref.status,
          errorMessage = _ref.errorMessage,
          error = _ref.error;

      if (status === 'ok') {
        this.initialScope = scope;
      } else {
        this.$emit('update:scope', this.initialScope);
        (0,_nextcloud_dialogs__WEBPACK_IMPORTED_MODULE_2__.showError)(errorMessage);
        this.logger.error(errorMessage, error);
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @nextcloud/vue/dist/Components/ActionButton */ "./node_modules/@nextcloud/vue/dist/Components/ActionButton.js");
/* harmony import */ var _nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_0__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'FederationControlAction',
  components: {
    ActionButton: (_nextcloud_vue_dist_Components_ActionButton__WEBPACK_IMPORTED_MODULE_0___default())
  },
  props: {
    activeScope: {
      type: String,
      required: true
    },
    displayName: {
      type: String,
      required: true
    },
    handleScopeChange: {
      type: Function,
      default: function _default() {}
    },
    iconClass: {
      type: String,
      required: true
    },
    isSupportedScope: {
      type: Boolean,
      required: true
    },
    name: {
      type: String,
      required: true
    },
    tooltipDisabled: {
      type: String,
      default: ''
    },
    tooltip: {
      type: String,
      required: true
    }
  },
  methods: {
    updateScope: function updateScope() {
      this.handleScopeChange(this.name);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _AddButton__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AddButton */ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue");
/* harmony import */ var _FederationControl__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./FederationControl */ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue");
/* harmony import */ var _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../constants/AccountPropertyConstants */ "./apps/settings/src/constants/AccountPropertyConstants.js");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'HeaderBar',
  components: {
    AddButton: _AddButton__WEBPACK_IMPORTED_MODULE_0__["default"],
    FederationControl: _FederationControl__WEBPACK_IMPORTED_MODULE_1__["default"]
  },
  props: {
    accountProperty: {
      type: String,
      required: true,
      validator: function validator(value) {
        return Object.values(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__.ACCOUNT_PROPERTY_READABLE_ENUM).includes(value) || Object.values(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__.ACCOUNT_SETTING_PROPERTY_READABLE_ENUM).includes(value) || value === _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__.PROFILE_READABLE_ENUM.PROFILE_VISIBILITY;
      }
    },
    isEditable: {
      type: Boolean,
      default: true
    },
    isMultiValueSupported: {
      type: Boolean,
      default: false
    },
    isValidSection: {
      type: Boolean,
      default: false
    },
    labelFor: {
      type: String,
      default: ''
    },
    scope: {
      type: String,
      default: null
    }
  },
  data: function data() {
    return {
      localScope: this.scope
    };
  },
  computed: {
    isProfileProperty: function isProfileProperty() {
      return this.accountProperty === _constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__.ACCOUNT_PROPERTY_READABLE_ENUM.PROFILE_ENABLED;
    },
    isSettingProperty: function isSettingProperty() {
      return Object.values(_constants_AccountPropertyConstants__WEBPACK_IMPORTED_MODULE_2__.ACCOUNT_SETTING_PROPERTY_READABLE_ENUM).includes(this.accountProperty);
    }
  },
  methods: {
    onAddAdditional: function onAddAdditional() {
      this.$emit('add-additional');
    },
    onScopeChange: function onScopeChange(scope) {
      this.$emit('update:scope', scope);
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".biography[data-v-5428a4f4] {\n  display: grid;\n  align-items: center;\n}\n.biography textarea[data-v-5428a4f4] {\n  resize: vertical;\n  grid-area: 1/1;\n  width: 100%;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.biography textarea[data-v-5428a4f4]:hover, .biography textarea[data-v-5428a4f4]:focus, .biography textarea[data-v-5428a4f4]:active {\n  border-color: var(--color-primary-element) !important;\n  outline: none !important;\n}\n.biography .biography__actions-container[data-v-5428a4f4] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  align-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n  margin-bottom: 5px;\n}\n.biography .biography__actions-container .icon-checkmark[data-v-5428a4f4],\n.biography .biography__actions-container .icon-error[data-v-5428a4f4] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-5428a4f4],\n.fade-leave-to[data-v-5428a4f4] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-5428a4f4] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-5428a4f4] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-9b1d47a2] {\n  padding: 10px 10px;\n}\nsection[data-v-9b1d47a2] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".displayname[data-v-2b6172f4] {\n  display: grid;\n  align-items: center;\n}\n.displayname input[data-v-2b6172f4] {\n  grid-area: 1/1;\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.displayname .displayname__actions-container[data-v-2b6172f4] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n}\n.displayname .displayname__actions-container .icon-checkmark[data-v-2b6172f4],\n.displayname .displayname__actions-container .icon-error[data-v-2b6172f4] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-2b6172f4],\n.fade-leave-to[data-v-2b6172f4] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-2b6172f4] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-2b6172f4] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-0c7fa32f] {\n  padding: 10px 10px;\n}\nsection[data-v-0c7fa32f] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".email[data-v-a9c46cb4] {\n  display: grid;\n  align-items: center;\n}\n.email input[data-v-a9c46cb4] {\n  grid-area: 1/1;\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.email .email__actions-container[data-v-a9c46cb4] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n}\n.email .email__actions-container .email__actions[data-v-a9c46cb4] {\n  opacity: 0.4 !important;\n}\n.email .email__actions-container .email__actions[data-v-a9c46cb4]:hover, .email .email__actions-container .email__actions[data-v-a9c46cb4]:focus, .email .email__actions-container .email__actions[data-v-a9c46cb4]:active {\n  opacity: 0.8 !important;\n}\n.email .email__actions-container .email__actions[data-v-a9c46cb4] button {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n}\n.email .email__actions-container .icon-checkmark[data-v-a9c46cb4],\n.email .email__actions-container .icon-error[data-v-a9c46cb4] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-a9c46cb4],\n.fade-leave-to[data-v-a9c46cb4] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-a9c46cb4] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-a9c46cb4] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-c3e547e2] {\n  padding: 10px 10px;\n}\nsection[data-v-c3e547e2] button:disabled {\n  cursor: default;\n}\nsection .additional-emails-label[data-v-c3e547e2] {\n  display: block;\n  margin-top: 16px;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".headline[data-v-9418803c] {\n  display: grid;\n  align-items: center;\n}\n.headline input[data-v-9418803c] {\n  grid-area: 1/1;\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.headline .headline__actions-container[data-v-9418803c] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n}\n.headline .headline__actions-container .icon-checkmark[data-v-9418803c],\n.headline .headline__actions-container .icon-error[data-v-9418803c] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-9418803c],\n.fade-leave-to[data-v-9418803c] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-9418803c] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-9418803c] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-637d2a53] {\n  padding: 10px 10px;\n}\nsection[data-v-637d2a53] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".language[data-v-0e2d022c] {\n  display: grid;\n}\n.language select[data-v-0e2d022c] {\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 6px 16px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background: var(--icon-triangle-s-000) no-repeat right 4px center;\n  font-family: var(--font-face);\n  appearance: none;\n  cursor: pointer;\n}\n.language a[data-v-0e2d022c] {\n  color: var(--color-main-text);\n  text-decoration: none;\n  width: max-content;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-126bf24b] {\n  padding: 10px 10px;\n}\nsection[data-v-126bf24b] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".organisation[data-v-5952d9ee] {\n  display: grid;\n  align-items: center;\n}\n.organisation input[data-v-5952d9ee] {\n  grid-area: 1/1;\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.organisation .organisation__actions-container[data-v-5952d9ee] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n}\n.organisation .organisation__actions-container .icon-checkmark[data-v-5952d9ee],\n.organisation .organisation__actions-container .icon-error[data-v-5952d9ee] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-5952d9ee],\n.fade-leave-to[data-v-5952d9ee] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-5952d9ee] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-5952d9ee] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-774a2a72] {\n  padding: 10px 10px;\n}\nsection[data-v-774a2a72] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "html {\n  scroll-behavior: smooth;\n}\n@media screen and (prefers-reduced-motion: reduce) {\nhtml {\n    scroll-behavior: auto;\n}\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "a[data-v-29aba6ea] {\n  display: block;\n  height: 44px;\n  width: 290px;\n  line-height: 44px;\n  padding: 0 16px;\n  margin: 14px auto;\n  border-radius: var(--border-radius-pill);\n  opacity: 0.4;\n  background-color: transparent;\n}\na .anchor-icon[data-v-29aba6ea] {\n  display: inline-block;\n  vertical-align: middle;\n  margin-top: 6px;\n  margin-right: 8px;\n}\na[data-v-29aba6ea]:hover, a[data-v-29aba6ea]:focus, a[data-v-29aba6ea]:active {\n  opacity: 0.8;\n  background-color: rgba(127, 127, 127, 0.25);\n}\na.disabled[data-v-29aba6ea] {\n  pointer-events: none;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".preview-card[data-v-3c8483c2] {\n  display: flex;\n  flex-direction: column;\n  position: relative;\n  width: 290px;\n  height: 116px;\n  margin: 14px auto;\n  border-radius: var(--border-radius-large);\n  background-color: var(--color-main-background);\n  font-weight: bold;\n  box-shadow: 0 2px 9px var(--color-box-shadow);\n}\n.preview-card[data-v-3c8483c2]:hover, .preview-card[data-v-3c8483c2]:focus, .preview-card[data-v-3c8483c2]:active {\n  box-shadow: 0 2px 12px var(--color-box-shadow);\n}\n.preview-card[data-v-3c8483c2]:focus-visible {\n  outline: var(--color-main-text) solid 1px;\n  outline-offset: 3px;\n}\n.preview-card.disabled[data-v-3c8483c2] {\n  filter: grayscale(1);\n  opacity: 0.5;\n  cursor: default;\n  box-shadow: 0 0 3px var(--color-box-shadow);\n}\n.preview-card.disabled *[data-v-3c8483c2], .preview-card.disabled[data-v-3c8483c2] * {\n  cursor: default;\n}\n.preview-card__avatar[data-v-3c8483c2] {\n  position: absolute !important;\n  top: 40px;\n  left: 18px;\n  z-index: 1;\n}\n.preview-card__avatar[data-v-3c8483c2]:not(.avatardiv--unknown) {\n  box-shadow: 0 0 0 3px var(--color-main-background) !important;\n}\n.preview-card__header[data-v-3c8483c2], .preview-card__footer[data-v-3c8483c2] {\n  position: relative;\n  width: auto;\n}\n.preview-card__header span[data-v-3c8483c2], .preview-card__footer span[data-v-3c8483c2] {\n  position: absolute;\n  left: 78px;\n  overflow: hidden;\n  text-overflow: ellipsis;\n  word-break: break-all;\n}\n@supports (-webkit-line-clamp: 2) {\n.preview-card__header span[data-v-3c8483c2], .preview-card__footer span[data-v-3c8483c2] {\n    display: -webkit-box;\n    -webkit-line-clamp: 2;\n    -webkit-box-orient: vertical;\n}\n}\n.preview-card__header[data-v-3c8483c2] {\n  height: 70px;\n  border-radius: var(--border-radius-large) var(--border-radius-large) 0 0;\n}\n.preview-card__header span[data-v-3c8483c2] {\n  bottom: 0;\n  color: var(--color-primary-text);\n  font-size: 18px;\n  font-weight: bold;\n  margin: 0 4px 8px 0;\n}\n.preview-card__footer[data-v-3c8483c2] {\n  height: 46px;\n}\n.preview-card__footer span[data-v-3c8483c2] {\n  top: 0;\n  color: var(--color-text-maxcontrast);\n  font-size: 14px;\n  font-weight: normal;\n  margin: 4px 4px 0 0;\n  line-height: 1.3;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-22b97e2f] {\n  padding: 10px 10px;\n}\nsection[data-v-22b97e2f] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-561c922f] {\n  padding: 30px;\n  max-width: 100vw;\n}\nsection em[data-v-561c922f] {\n  display: block;\n  margin: 16px 0;\n}\nsection em.disabled[data-v-561c922f] {\n  filter: grayscale(1);\n  opacity: 0.5;\n  cursor: default;\n  pointer-events: none;\n}\nsection em.disabled *[data-v-561c922f], section em.disabled[data-v-561c922f] * {\n  cursor: default;\n  pointer-events: none;\n}\nsection .visibility-dropdowns[data-v-561c922f] {\n  display: grid;\n  gap: 10px 40px;\n}\n@media (min-width: 1200px) {\nsection[data-v-561c922f] {\n    width: 940px;\n}\nsection .visibility-dropdowns[data-v-561c922f] {\n    grid-auto-flow: column;\n}\n}\n@media (max-width: 1200px) {\nsection[data-v-561c922f] {\n    width: 470px;\n}\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".visibility-container[data-v-5b020be8] {\n  display: flex;\n  width: max-content;\n}\n.visibility-container.disabled[data-v-5b020be8] {\n  filter: grayscale(1);\n  opacity: 0.5;\n  cursor: default;\n  pointer-events: none;\n}\n.visibility-container.disabled *[data-v-5b020be8], .visibility-container.disabled[data-v-5b020be8] * {\n  cursor: default;\n  pointer-events: none;\n}\n.visibility-container label[data-v-5b020be8] {\n  color: var(--color-text-lighter);\n  width: 150px;\n  line-height: 50px;\n}\n.visibility-container__multiselect[data-v-5b020be8] {\n  width: 260px;\n  max-width: 40vw;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".role[data-v-6181b1b4] {\n  display: grid;\n  align-items: center;\n}\n.role input[data-v-6181b1b4] {\n  grid-area: 1/1;\n  width: 100%;\n  height: 34px;\n  margin: 3px 3px 3px 0;\n  padding: 7px 6px;\n  color: var(--color-main-text);\n  border: 1px solid var(--color-border-dark);\n  border-radius: var(--border-radius);\n  background-color: var(--color-main-background);\n  font-family: var(--font-face);\n  cursor: text;\n}\n.role .role__actions-container[data-v-6181b1b4] {\n  grid-area: 1/1;\n  justify-self: flex-end;\n  height: 30px;\n  display: flex;\n  gap: 0 2px;\n  margin-right: 5px;\n}\n.role .role__actions-container .icon-checkmark[data-v-6181b1b4],\n.role .role__actions-container .icon-error[data-v-6181b1b4] {\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n  top: 0;\n  right: 0;\n  float: none;\n}\n.fade-enter[data-v-6181b1b4],\n.fade-leave-to[data-v-6181b1b4] {\n  opacity: 0;\n}\n.fade-enter-active[data-v-6181b1b4] {\n  transition: opacity 200ms ease-out;\n}\n.fade-leave-active[data-v-6181b1b4] {\n  transition: opacity 300ms ease-out;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "section[data-v-fea062e2] {\n  padding: 10px 10px;\n}\nsection[data-v-fea062e2] button:disabled {\n  cursor: default;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "button[data-v-aa45d34e] {\n  height: 44px;\n  padding: 0 16px;\n  border: none;\n  background-color: transparent;\n}\nbutton .icon[data-v-aa45d34e] {\n  margin-right: 8px;\n}\nbutton[data-v-aa45d34e]:enabled {\n  opacity: 0.4 !important;\n}\nbutton:enabled .icon[data-v-aa45d34e] {\n  opacity: 0.8 !important;\n}\nbutton[data-v-aa45d34e]:hover, button[data-v-aa45d34e]:focus, button[data-v-aa45d34e]:active {\n  background-color: rgba(127, 127, 127, 0.15);\n}\nbutton[data-v-aa45d34e]:enabled:hover, button[data-v-aa45d34e]:enabled:focus, button[data-v-aa45d34e]:enabled:active {\n  background-color: rgba(127, 127, 127, 0.25);\n  opacity: 0.8 !important;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".federation-actions[data-v-08cbb240],\n.federation-actions--additional[data-v-08cbb240] {\n  opacity: 0.4 !important;\n}\n.federation-actions[data-v-08cbb240]:hover, .federation-actions[data-v-08cbb240]:focus, .federation-actions[data-v-08cbb240]:active,\n.federation-actions--additional[data-v-08cbb240]:hover,\n.federation-actions--additional[data-v-08cbb240]:focus,\n.federation-actions--additional[data-v-08cbb240]:active {\n  opacity: 0.8 !important;\n}\n.federation-actions--additional[data-v-08cbb240] button {\n  padding-bottom: 7px;\n  height: 30px !important;\n  min-height: 30px !important;\n  width: 30px !important;\n  min-width: 30px !important;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, ".federation-actions__btn[data-v-ba1ab8d4] p {\n  width: 150px !important;\n  padding: 8px 0 !important;\n  color: var(--color-main-text) !important;\n  font-size: 12.8px !important;\n  line-height: 1.5em !important;\n}\n.federation-actions__btn--active[data-v-ba1ab8d4] {\n  background-color: var(--color-primary-light) !important;\n  box-shadow: inset 2px 0 var(--color-primary) !important;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/noSourceMaps.js */ "./node_modules/css-loader/dist/runtime/noSourceMaps.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../../../../node_modules/css-loader/dist/runtime/api.js */ "./node_modules/css-loader/dist/runtime/api.js");
/* harmony import */ var _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1__);
// Imports


var ___CSS_LOADER_EXPORT___ = _node_modules_css_loader_dist_runtime_api_js__WEBPACK_IMPORTED_MODULE_1___default()((_node_modules_css_loader_dist_runtime_noSourceMaps_js__WEBPACK_IMPORTED_MODULE_0___default()));
// Module
___CSS_LOADER_EXPORT___.push([module.id, "h3[data-v-6a8a7fec] {\n  display: inline-flex;\n  width: 100%;\n  margin: 12px 0 0 0;\n  font-size: 16px;\n  color: var(--color-text-light);\n}\nh3.profile-property[data-v-6a8a7fec] {\n  height: 38px;\n}\nh3.setting-property[data-v-6a8a7fec] {\n  height: 32px;\n}\nh3 label[data-v-6a8a7fec] {\n  cursor: pointer;\n}\n.federation-control[data-v-6a8a7fec] {\n  margin: -12px 0 0 8px;\n}\n.add-button[data-v-6a8a7fec] {\n  margin: -12px 0 0 auto !important;\n}", ""]);
// Exports
/* harmony default export */ __webpack_exports__["default"] = (___CSS_LOADER_EXPORT___);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js */ "./node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleDomAPI.js */ "./node_modules/style-loader/dist/runtime/styleDomAPI.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertBySelector.js */ "./node_modules/style-loader/dist/runtime/insertBySelector.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js */ "./node_modules/style-loader/dist/runtime/setAttributesWithoutAttributes.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/insertStyleElement.js */ "./node_modules/style-loader/dist/runtime/insertStyleElement.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! !../../../../../../node_modules/style-loader/dist/runtime/styleTagTransform.js */ "./node_modules/style-loader/dist/runtime/styleTagTransform.js");
/* harmony import */ var _node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5__);
/* harmony import */ var _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! !!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& */ "./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&");

      
      
      
      
      
      
      
      
      

var options = {};

options.styleTagTransform = (_node_modules_style_loader_dist_runtime_styleTagTransform_js__WEBPACK_IMPORTED_MODULE_5___default());
options.setAttributes = (_node_modules_style_loader_dist_runtime_setAttributesWithoutAttributes_js__WEBPACK_IMPORTED_MODULE_3___default());

      options.insert = _node_modules_style_loader_dist_runtime_insertBySelector_js__WEBPACK_IMPORTED_MODULE_2___default().bind(null, "head");
    
options.domAPI = (_node_modules_style_loader_dist_runtime_styleDomAPI_js__WEBPACK_IMPORTED_MODULE_1___default());
options.insertStyleElement = (_node_modules_style_loader_dist_runtime_insertStyleElement_js__WEBPACK_IMPORTED_MODULE_4___default());

var update = _node_modules_style_loader_dist_runtime_injectStylesIntoStyleTag_js__WEBPACK_IMPORTED_MODULE_0___default()(_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"], options);




       /* harmony default export */ __webpack_exports__["default"] = (_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"] && _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals ? _node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_6__["default"].locals : undefined);


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue":
/*!**********************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue ***!
  \**********************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Biography.vue?vue&type=template&id=5428a4f4&scoped=true& */ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true&");
/* harmony import */ var _Biography_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Biography.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js&");
/* harmony import */ var _Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Biography_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "5428a4f4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue":
/*!*****************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue ***!
  \*****************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true& */ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true&");
/* harmony import */ var _BiographySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./BiographySection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js&");
/* harmony import */ var _BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _BiographySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "9b1d47a2",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue":
/*!**************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue ***!
  \**************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true&");
/* harmony import */ var _DisplayName_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./DisplayName.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js&");
/* harmony import */ var _DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _DisplayName_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "2b6172f4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue":
/*!*********************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue ***!
  \*********************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true&");
/* harmony import */ var _DisplayNameSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./DisplayNameSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _DisplayNameSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "0c7fa32f",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue":
/*!**************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue ***!
  \**************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Email.vue?vue&type=template&id=a9c46cb4&scoped=true& */ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true&");
/* harmony import */ var _Email_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Email.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js&");
/* harmony import */ var _Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Email_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "a9c46cb4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/EmailSection/Email.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue":
/*!*********************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue ***!
  \*********************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true& */ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true&");
/* harmony import */ var _EmailSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./EmailSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _EmailSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "c3e547e2",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue":
/*!********************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue ***!
  \********************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Headline.vue?vue&type=template&id=9418803c&scoped=true& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true&");
/* harmony import */ var _Headline_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Headline.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js&");
/* harmony import */ var _Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Headline_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "9418803c",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue":
/*!***************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue ***!
  \***************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true&");
/* harmony import */ var _HeadlineSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./HeadlineSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _HeadlineSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "637d2a53",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue":
/*!********************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue ***!
  \********************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Language.vue?vue&type=template&id=0e2d022c&scoped=true& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true&");
/* harmony import */ var _Language_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Language.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js&");
/* harmony import */ var _Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Language_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "0e2d022c",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue":
/*!***************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue ***!
  \***************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true&");
/* harmony import */ var _LanguageSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./LanguageSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _LanguageSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "126bf24b",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue":
/*!****************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue ***!
  \****************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Organisation.vue?vue&type=template&id=5952d9ee&scoped=true& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true&");
/* harmony import */ var _Organisation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Organisation.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js&");
/* harmony import */ var _Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Organisation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "5952d9ee",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue":
/*!***********************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue ***!
  \***********************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true&");
/* harmony import */ var _OrganisationSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./OrganisationSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _OrganisationSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "774a2a72",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue":
/*!********************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue ***!
  \********************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true&");
/* harmony import */ var _EditProfileAnchorLink_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./EditProfileAnchorLink.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js&");
/* harmony import */ var _EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&");
/* harmony import */ var _EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;



/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_4__["default"])(
  _EditProfileAnchorLink_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "29aba6ea",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue":
/*!**************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue ***!
  \**************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true&");
/* harmony import */ var _ProfileCheckbox_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ProfileCheckbox.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _ProfileCheckbox_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "a46c582e",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue":
/*!*****************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue ***!
  \*****************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true&");
/* harmony import */ var _ProfilePreviewCard_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ProfilePreviewCard.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js&");
/* harmony import */ var _ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ProfilePreviewCard_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "3c8483c2",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue":
/*!*************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue ***!
  \*************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true&");
/* harmony import */ var _ProfileSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ProfileSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ProfileSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "22b97e2f",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue":
/*!*********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue ***!
  \*********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true&");
/* harmony import */ var _ProfileVisibilitySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ProfileVisibilitySection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js&");
/* harmony import */ var _ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ProfileVisibilitySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "561c922f",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue":
/*!***************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue ***!
  \***************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true&");
/* harmony import */ var _VisibilityDropdown_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./VisibilityDropdown.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js&");
/* harmony import */ var _VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _VisibilityDropdown_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "5b020be8",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue":
/*!************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue ***!
  \************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Role.vue?vue&type=template&id=6181b1b4&scoped=true& */ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true&");
/* harmony import */ var _Role_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Role.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js&");
/* harmony import */ var _Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Role_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "6181b1b4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/RoleSection/Role.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue":
/*!*******************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue ***!
  \*******************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./RoleSection.vue?vue&type=template&id=fea062e2&scoped=true& */ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true&");
/* harmony import */ var _RoleSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./RoleSection.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js&");
/* harmony import */ var _RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _RoleSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "fea062e2",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue":
/*!************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/AddButton.vue ***!
  \************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AddButton.vue?vue&type=template&id=aa45d34e&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true&");
/* harmony import */ var _AddButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./AddButton.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js&");
/* harmony import */ var _AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _AddButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "aa45d34e",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/shared/AddButton.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue":
/*!********************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue ***!
  \********************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./FederationControl.vue?vue&type=template&id=08cbb240&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true&");
/* harmony import */ var _FederationControl_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./FederationControl.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js&");
/* harmony import */ var _FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _FederationControl_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "08cbb240",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/shared/FederationControl.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue":
/*!**************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue ***!
  \**************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true&");
/* harmony import */ var _FederationControlAction_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./FederationControlAction.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js&");
/* harmony import */ var _FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _FederationControlAction_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "ba1ab8d4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue":
/*!************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue ***!
  \************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true&");
/* harmony import */ var _HeaderBar_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./HeaderBar.vue?vue&type=script&lang=js& */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js&");
/* harmony import */ var _HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& */ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! !../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");



;


/* normalize component */

var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _HeaderBar_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render,
  _HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  "6a8a7fec",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js&":
/*!***********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Biography.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./BiographySection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayName.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayNameSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Email.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EmailSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Headline.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeadlineSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Language.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./LanguageSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Organisation.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./OrganisationSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileCheckbox_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileCheckbox.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileCheckbox_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfilePreviewCard.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileVisibilitySection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./VisibilityDropdown.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Role.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./RoleSection.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddButton.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControl.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControlAction.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib/index.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeaderBar.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=script&lang=js&");
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&":
/*!********************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& ***!
  \********************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_style_index_0_id_5428a4f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=style&index=0&id=5428a4f4&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_style_index_0_id_9b1d47a2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=style&index=0&id=9b1d47a2&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_style_index_0_id_2b6172f4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=style&index=0&id=2b6172f4&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_style_index_0_id_0c7fa32f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=style&index=0&id=0c7fa32f&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&":
/*!************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_style_index_0_id_a9c46cb4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=style&index=0&id=a9c46cb4&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_style_index_0_id_c3e547e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=style&index=0&id=c3e547e2&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_style_index_0_id_9418803c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=style&index=0&id=9418803c&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_style_index_0_id_637d2a53_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=style&index=0&id=637d2a53&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_style_index_0_id_0e2d022c_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=style&index=0&id=0e2d022c&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_style_index_0_id_126bf24b_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=style&index=0&id=126bf24b&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&":
/*!**************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& ***!
  \**************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_style_index_0_id_5952d9ee_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=style&index=0&id=5952d9ee&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&":
/*!*********************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& ***!
  \*********************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_style_index_0_id_774a2a72_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=style&index=0&id=774a2a72&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&":
/*!******************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& ***!
  \******************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_0_lang_scss___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=0&lang=scss&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_style_index_1_id_29aba6ea_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=style&index=1&id=29aba6ea&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&":
/*!***************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& ***!
  \***************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_style_index_0_id_3c8483c2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=style&index=0&id=3c8483c2&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&":
/*!***********************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& ***!
  \***********************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_style_index_0_id_22b97e2f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=style&index=0&id=22b97e2f&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&":
/*!*******************************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& ***!
  \*******************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_style_index_0_id_561c922f_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=style&index=0&id=561c922f&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&":
/*!*************************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& ***!
  \*************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_style_index_0_id_5b020be8_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=style&index=0&id=5b020be8&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_style_index_0_id_6181b1b4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=style&index=0&id=6181b1b4&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&":
/*!*****************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& ***!
  \*****************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_style_index_0_id_fea062e2_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=style&index=0&id=fea062e2&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_style_index_0_id_aa45d34e_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=style&index=0&id=aa45d34e&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&":
/*!******************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& ***!
  \******************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_style_index_0_id_08cbb240_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=style&index=0&id=08cbb240&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&":
/*!************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& ***!
  \************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_style_index_0_id_ba1ab8d4_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=style&index=0&id=ba1ab8d4&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_dist_cjs_js_node_modules_css_loader_dist_cjs_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_sass_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_style_index_0_id_6a8a7fec_lang_scss_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader/dist/cjs.js!../../../../../../node_modules/css-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/sass-loader/dist/cjs.js!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true& */ "./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=style&index=0&id=6a8a7fec&lang=scss&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true&":
/*!*****************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true& ***!
  \*****************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Biography_vue_vue_type_template_id_5428a4f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Biography.vue?vue&type=template&id=5428a4f4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true&":
/*!************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true& ***!
  \************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_BiographySection_vue_vue_type_template_id_9b1d47a2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true&":
/*!*********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true& ***!
  \*********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayName_vue_vue_type_template_id_2b6172f4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true&":
/*!****************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true& ***!
  \****************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_DisplayNameSection_vue_vue_type_template_id_0c7fa32f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true&":
/*!*********************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true& ***!
  \*********************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Email_vue_vue_type_template_id_a9c46cb4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Email.vue?vue&type=template&id=a9c46cb4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true&":
/*!****************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true& ***!
  \****************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EmailSection_vue_vue_type_template_id_c3e547e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true&":
/*!***************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true& ***!
  \***************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Headline_vue_vue_type_template_id_9418803c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Headline.vue?vue&type=template&id=9418803c&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeadlineSection_vue_vue_type_template_id_637d2a53_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true&":
/*!***************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true& ***!
  \***************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Language_vue_vue_type_template_id_0e2d022c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Language.vue?vue&type=template&id=0e2d022c&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true&":
/*!**********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true& ***!
  \**********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_LanguageSection_vue_vue_type_template_id_126bf24b_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true&":
/*!***********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true& ***!
  \***********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Organisation_vue_vue_type_template_id_5952d9ee_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Organisation.vue?vue&type=template&id=5952d9ee&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true&":
/*!******************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true& ***!
  \******************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrganisationSection_vue_vue_type_template_id_774a2a72_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true&":
/*!***************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true& ***!
  \***************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_EditProfileAnchorLink_vue_vue_type_template_id_29aba6ea_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true&":
/*!*********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true& ***!
  \*********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileCheckbox_vue_vue_type_template_id_a46c582e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true&":
/*!************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true& ***!
  \************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfilePreviewCard_vue_vue_type_template_id_3c8483c2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true&":
/*!********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true& ***!
  \********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileSection_vue_vue_type_template_id_22b97e2f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true&":
/*!****************************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true& ***!
  \****************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ProfileVisibilitySection_vue_vue_type_template_id_561c922f_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true&":
/*!**********************************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true& ***!
  \**********************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_VisibilityDropdown_vue_vue_type_template_id_5b020be8_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true&":
/*!*******************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true& ***!
  \*******************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Role_vue_vue_type_template_id_6181b1b4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Role.vue?vue&type=template&id=6181b1b4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true&":
/*!**************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true& ***!
  \**************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_RoleSection_vue_vue_type_template_id_fea062e2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./RoleSection.vue?vue&type=template&id=fea062e2&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true&":
/*!*******************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true& ***!
  \*******************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddButton_vue_vue_type_template_id_aa45d34e_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddButton.vue?vue&type=template&id=aa45d34e&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true&":
/*!***************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true& ***!
  \***************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControl_vue_vue_type_template_id_08cbb240_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControl.vue?vue&type=template&id=08cbb240&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true&":
/*!*********************************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true& ***!
  \*********************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FederationControlAction_vue_vue_type_template_id_ba1ab8d4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true&");


/***/ }),

/***/ "./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true&":
/*!*******************************************************************************************************************!*\
  !*** ./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true& ***!
  \*******************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__.render; },
/* harmony export */   "staticRenderFns": function() { return /* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns; }
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HeaderBar_vue_vue_type_template_id_6a8a7fec_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true&");


/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/Biography.vue?vue&type=template&id=5428a4f4&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "biography" }, [
    _c("textarea", {
      attrs: {
        id: "biography",
        placeholder: _vm.t("settings", "Your biography"),
        rows: "8",
        autocapitalize: "none",
        autocomplete: "off",
        autocorrect: "off",
      },
      domProps: { value: _vm.biography },
      on: { input: _vm.onBiographyChange },
    }),
    _vm._v(" "),
    _c(
      "div",
      { staticClass: "biography__actions-container" },
      [
        _c("transition", { attrs: { name: "fade" } }, [
          _vm.showCheckmarkIcon
            ? _c("span", { staticClass: "icon-checkmark" })
            : _vm.showErrorIcon
            ? _c("span", { staticClass: "icon-error" })
            : _vm._e(),
        ]),
      ],
      1
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/BiographySection/BiographySection.vue?vue&type=template&id=9b1d47a2&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "biography",
          scope: _vm.primaryBiography.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryBiography, "scope", $event)
          },
        },
      }),
      _vm._v(" "),
      _c("Biography", {
        attrs: {
          biography: _vm.primaryBiography.value,
          scope: _vm.primaryBiography.scope,
        },
        on: {
          "update:biography": function ($event) {
            return _vm.$set(_vm.primaryBiography, "value", $event)
          },
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryBiography, "scope", $event)
          },
        },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayName.vue?vue&type=template&id=2b6172f4&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "displayname" }, [
    _c("input", {
      attrs: {
        id: "displayname",
        type: "text",
        placeholder: _vm.t("settings", "Your full name"),
        autocapitalize: "none",
        autocomplete: "on",
        autocorrect: "off",
      },
      domProps: { value: _vm.displayName },
      on: { input: _vm.onDisplayNameChange },
    }),
    _vm._v(" "),
    _c(
      "div",
      { staticClass: "displayname__actions-container" },
      [
        _c("transition", { attrs: { name: "fade" } }, [
          _vm.showCheckmarkIcon
            ? _c("span", { staticClass: "icon-checkmark" })
            : _vm.showErrorIcon
            ? _c("span", { staticClass: "icon-error" })
            : _vm._e(),
        ]),
      ],
      1
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/DisplayNameSection/DisplayNameSection.vue?vue&type=template&id=0c7fa32f&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "displayname",
          "is-editable": _vm.displayNameChangeSupported,
          "is-valid-section": _vm.isValidSection,
          scope: _vm.primaryDisplayName.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryDisplayName, "scope", $event)
          },
        },
      }),
      _vm._v(" "),
      _vm.displayNameChangeSupported
        ? [
            _c("DisplayName", {
              attrs: {
                "display-name": _vm.primaryDisplayName.value,
                scope: _vm.primaryDisplayName.scope,
              },
              on: {
                "update:displayName": function ($event) {
                  return _vm.$set(_vm.primaryDisplayName, "value", $event)
                },
                "update:display-name": function ($event) {
                  return _vm.$set(_vm.primaryDisplayName, "value", $event)
                },
                "update:scope": function ($event) {
                  return _vm.$set(_vm.primaryDisplayName, "scope", $event)
                },
              },
            }),
          ]
        : _c("span", [
            _vm._v(
              "\n\t\t" +
                _vm._s(
                  _vm.primaryDisplayName.value ||
                    _vm.t("settings", "No full name set")
                ) +
                "\n\t"
            ),
          ]),
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/Email.vue?vue&type=template&id=a9c46cb4&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", [
    _c("div", { staticClass: "email" }, [
      _c("input", {
        ref: "email",
        attrs: {
          id: _vm.inputId,
          type: "email",
          placeholder: _vm.inputPlaceholder,
          autocapitalize: "none",
          autocomplete: "on",
          autocorrect: "off",
        },
        domProps: { value: _vm.email },
        on: { input: _vm.onEmailChange },
      }),
      _vm._v(" "),
      _c(
        "div",
        { staticClass: "email__actions-container" },
        [
          _c("transition", { attrs: { name: "fade" } }, [
            _vm.showCheckmarkIcon
              ? _c("span", { staticClass: "icon-checkmark" })
              : _vm.showErrorIcon
              ? _c("span", { staticClass: "icon-error" })
              : _vm._e(),
          ]),
          _vm._v(" "),
          !_vm.primary
            ? [
                _c("FederationControl", {
                  attrs: {
                    "account-property": _vm.accountProperty,
                    additional: true,
                    "additional-value": _vm.email,
                    disabled: _vm.federationDisabled,
                    "handle-additional-scope-change":
                      _vm.saveAdditionalEmailScope,
                    scope: _vm.localScope,
                  },
                  on: {
                    "update:scope": [
                      function ($event) {
                        _vm.localScope = $event
                      },
                      _vm.onScopeChange,
                    ],
                  },
                }),
              ]
            : _vm._e(),
          _vm._v(" "),
          _c(
            "Actions",
            {
              staticClass: "email__actions",
              attrs: {
                "aria-label": _vm.t("settings", "Email options"),
                disabled: _vm.deleteDisabled,
                "force-menu": true,
              },
            },
            [
              _c(
                "ActionButton",
                {
                  attrs: {
                    "aria-label": _vm.deleteEmailLabel,
                    "close-after-click": true,
                    disabled: _vm.deleteDisabled,
                    icon: "icon-delete",
                  },
                  on: {
                    click: function ($event) {
                      $event.stopPropagation()
                      $event.preventDefault()
                      return _vm.deleteEmail.apply(null, arguments)
                    },
                  },
                },
                [
                  _vm._v(
                    "\n\t\t\t\t\t" + _vm._s(_vm.deleteEmailLabel) + "\n\t\t\t\t"
                  ),
                ]
              ),
              _vm._v(" "),
              !_vm.primary || !_vm.isNotificationEmail
                ? _c(
                    "ActionButton",
                    {
                      attrs: {
                        "aria-label": _vm.setNotificationMailLabel,
                        "close-after-click": true,
                        disabled: _vm.setNotificationMailDisabled,
                        icon: "icon-favorite",
                      },
                      on: {
                        click: function ($event) {
                          $event.stopPropagation()
                          $event.preventDefault()
                          return _vm.setNotificationMail.apply(null, arguments)
                        },
                      },
                    },
                    [
                      _vm._v(
                        "\n\t\t\t\t\t" +
                          _vm._s(_vm.setNotificationMailLabel) +
                          "\n\t\t\t\t"
                      ),
                    ]
                  )
                : _vm._e(),
            ],
            1
          ),
        ],
        2
      ),
    ]),
    _vm._v(" "),
    _vm.isNotificationEmail
      ? _c("em", [
          _vm._v(
            "\n\t\t" +
              _vm._s(
                _vm.t(
                  "settings",
                  "Primary email for password reset and notifications"
                )
              ) +
              "\n\t"
          ),
        ])
      : _vm._e(),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/EmailSection/EmailSection.vue?vue&type=template&id=c3e547e2&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "email",
          "handle-scope-change": _vm.savePrimaryEmailScope,
          "is-editable": true,
          "is-multi-value-supported": true,
          "is-valid-section": _vm.isValidSection,
          scope: _vm.primaryEmail.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryEmail, "scope", $event)
          },
          "add-additional": _vm.onAddAdditionalEmail,
        },
      }),
      _vm._v(" "),
      _vm.displayNameChangeSupported
        ? [
            _c("Email", {
              attrs: {
                primary: true,
                scope: _vm.primaryEmail.scope,
                email: _vm.primaryEmail.value,
                "active-notification-email": _vm.notificationEmail,
              },
              on: {
                "update:scope": function ($event) {
                  return _vm.$set(_vm.primaryEmail, "scope", $event)
                },
                "update:email": [
                  function ($event) {
                    return _vm.$set(_vm.primaryEmail, "value", $event)
                  },
                  _vm.onUpdateEmail,
                ],
                "update:activeNotificationEmail": function ($event) {
                  _vm.notificationEmail = $event
                },
                "update:active-notification-email": function ($event) {
                  _vm.notificationEmail = $event
                },
                "update:notification-email": _vm.onUpdateNotificationEmail,
              },
            }),
          ]
        : _c("span", [
            _vm._v(
              "\n\t\t" +
                _vm._s(
                  _vm.primaryEmail.value ||
                    _vm.t("settings", "No email address set")
                ) +
                "\n\t"
            ),
          ]),
      _vm._v(" "),
      _vm.additionalEmails.length
        ? [
            _c("em", { staticClass: "additional-emails-label" }, [
              _vm._v(_vm._s(_vm.t("settings", "Additional emails"))),
            ]),
            _vm._v(" "),
            _vm._l(_vm.additionalEmails, function (additionalEmail, index) {
              return _c("Email", {
                key: index,
                attrs: {
                  index: index,
                  scope: additionalEmail.scope,
                  email: additionalEmail.value,
                  "local-verification-state": parseInt(
                    additionalEmail.locallyVerified,
                    10
                  ),
                  "active-notification-email": _vm.notificationEmail,
                },
                on: {
                  "update:scope": function ($event) {
                    return _vm.$set(additionalEmail, "scope", $event)
                  },
                  "update:email": [
                    function ($event) {
                      return _vm.$set(additionalEmail, "value", $event)
                    },
                    _vm.onUpdateEmail,
                  ],
                  "update:activeNotificationEmail": function ($event) {
                    _vm.notificationEmail = $event
                  },
                  "update:active-notification-email": function ($event) {
                    _vm.notificationEmail = $event
                  },
                  "update:notification-email": _vm.onUpdateNotificationEmail,
                  "delete-additional-email": function ($event) {
                    return _vm.onDeleteAdditionalEmail(index)
                  },
                },
              })
            }),
          ]
        : _vm._e(),
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/Headline.vue?vue&type=template&id=9418803c&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "headline" }, [
    _c("input", {
      attrs: {
        id: "headline",
        type: "text",
        placeholder: _vm.t("settings", "Your headline"),
        autocapitalize: "none",
        autocomplete: "on",
        autocorrect: "off",
      },
      domProps: { value: _vm.headline },
      on: { input: _vm.onHeadlineChange },
    }),
    _vm._v(" "),
    _c(
      "div",
      { staticClass: "headline__actions-container" },
      [
        _c("transition", { attrs: { name: "fade" } }, [
          _vm.showCheckmarkIcon
            ? _c("span", { staticClass: "icon-checkmark" })
            : _vm.showErrorIcon
            ? _c("span", { staticClass: "icon-error" })
            : _vm._e(),
        ]),
      ],
      1
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/HeadlineSection/HeadlineSection.vue?vue&type=template&id=637d2a53&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "headline",
          scope: _vm.primaryHeadline.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryHeadline, "scope", $event)
          },
        },
      }),
      _vm._v(" "),
      _c("Headline", {
        attrs: {
          headline: _vm.primaryHeadline.value,
          scope: _vm.primaryHeadline.scope,
        },
        on: {
          "update:headline": function ($event) {
            return _vm.$set(_vm.primaryHeadline, "value", $event)
          },
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryHeadline, "scope", $event)
          },
        },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/Language.vue?vue&type=template&id=0e2d022c&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "language" }, [
    _c(
      "select",
      {
        attrs: { id: "language", placeholder: _vm.t("settings", "Language") },
        on: { change: _vm.onLanguageChange },
      },
      [
        _vm._l(_vm.commonLanguages, function (commonLanguage) {
          return _c(
            "option",
            {
              key: commonLanguage.code,
              domProps: {
                selected: _vm.language.code === commonLanguage.code,
                value: commonLanguage.code,
              },
            },
            [_vm._v("\n\t\t\t" + _vm._s(commonLanguage.name) + "\n\t\t")]
          )
        }),
        _vm._v(" "),
        _c("option", { attrs: { disabled: "" } }, [
          _vm._v("\n\t\t\t──────────\n\t\t"),
        ]),
        _vm._v(" "),
        _vm._l(_vm.otherLanguages, function (otherLanguage) {
          return _c(
            "option",
            {
              key: otherLanguage.code,
              domProps: {
                selected: _vm.language.code === otherLanguage.code,
                value: otherLanguage.code,
              },
            },
            [_vm._v("\n\t\t\t" + _vm._s(otherLanguage.name) + "\n\t\t")]
          )
        }),
      ],
      2
    ),
    _vm._v(" "),
    _c(
      "a",
      {
        attrs: {
          href: "https://www.transifex.com/nextcloud/nextcloud/",
          target: "_blank",
          rel: "noreferrer noopener",
        },
      },
      [_c("em", [_vm._v(_vm._s(_vm.t("settings", "Help translate")))])]
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/LanguageSection/LanguageSection.vue?vue&type=template&id=126bf24b&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "language",
        },
      }),
      _vm._v(" "),
      _vm.isEditable
        ? [
            _c("Language", {
              attrs: {
                "common-languages": _vm.commonLanguages,
                "other-languages": _vm.otherLanguages,
                language: _vm.language,
              },
              on: {
                "update:language": function ($event) {
                  _vm.language = $event
                },
              },
            }),
          ]
        : _c("span", [
            _vm._v(
              "\n\t\t" + _vm._s(_vm.t("settings", "No language set")) + "\n\t"
            ),
          ]),
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/Organisation.vue?vue&type=template&id=5952d9ee&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "organisation" }, [
    _c("input", {
      attrs: {
        id: "organisation",
        type: "text",
        placeholder: _vm.t("settings", "Your organisation"),
        autocapitalize: "none",
        autocomplete: "on",
        autocorrect: "off",
      },
      domProps: { value: _vm.organisation },
      on: { input: _vm.onOrganisationChange },
    }),
    _vm._v(" "),
    _c(
      "div",
      { staticClass: "organisation__actions-container" },
      [
        _c("transition", { attrs: { name: "fade" } }, [
          _vm.showCheckmarkIcon
            ? _c("span", { staticClass: "icon-checkmark" })
            : _vm.showErrorIcon
            ? _c("span", { staticClass: "icon-error" })
            : _vm._e(),
        ]),
      ],
      1
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/OrganisationSection/OrganisationSection.vue?vue&type=template&id=774a2a72&scoped=true& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "organisation",
          scope: _vm.primaryOrganisation.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryOrganisation, "scope", $event)
          },
        },
      }),
      _vm._v(" "),
      _c("Organisation", {
        attrs: {
          organisation: _vm.primaryOrganisation.value,
          scope: _vm.primaryOrganisation.scope,
        },
        on: {
          "update:organisation": function ($event) {
            return _vm.$set(_vm.primaryOrganisation, "value", $event)
          },
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryOrganisation, "scope", $event)
          },
        },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/EditProfileAnchorLink.vue?vue&type=template&id=29aba6ea&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "a",
    _vm._g(
      {
        class: { disabled: _vm.disabled },
        attrs: { href: "#profile-visibility" },
      },
      _vm.$listeners
    ),
    [
      _c("ChevronDownIcon", {
        staticClass: "anchor-icon",
        attrs: { decorative: "", title: "", size: 22 },
      }),
      _vm._v(
        "\n\t" +
          _vm._s(_vm.t("settings", "Edit your Profile visibility")) +
          "\n"
      ),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileCheckbox.vue?vue&type=template&id=a46c582e&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "checkbox-container" }, [
    _c("input", {
      staticClass: "checkbox",
      attrs: { id: "enable-profile", type: "checkbox" },
      domProps: { checked: _vm.profileEnabled },
      on: { change: _vm.onEnableProfileChange },
    }),
    _vm._v(" "),
    _c("label", { attrs: { for: "enable-profile" } }, [
      _vm._v("\n\t\t" + _vm._s(_vm.t("settings", "Enable Profile")) + "\n\t"),
    ]),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfilePreviewCard.vue?vue&type=template&id=3c8483c2&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "a",
    {
      staticClass: "preview-card",
      class: { disabled: _vm.disabled },
      attrs: { href: _vm.profilePageLink },
    },
    [
      _c("Avatar", {
        staticClass: "preview-card__avatar",
        attrs: {
          user: _vm.userId,
          size: 48,
          "show-user-status": true,
          "show-user-status-compact": false,
          "disable-menu": true,
          "disable-tooltip": true,
        },
      }),
      _vm._v(" "),
      _c("div", { staticClass: "preview-card__header" }, [
        _c("span", [_vm._v(_vm._s(_vm.displayName))]),
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "preview-card__footer" }, [
        _c("span", [_vm._v(_vm._s(_vm.organisation))]),
      ]),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileSection/ProfileSection.vue?vue&type=template&id=22b97e2f&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", { attrs: { "account-property": _vm.accountProperty } }),
      _vm._v(" "),
      _c("ProfileCheckbox", {
        attrs: { "profile-enabled": _vm.profileEnabled },
        on: {
          "update:profileEnabled": function ($event) {
            _vm.profileEnabled = $event
          },
          "update:profile-enabled": function ($event) {
            _vm.profileEnabled = $event
          },
        },
      }),
      _vm._v(" "),
      _c("ProfilePreviewCard", {
        attrs: {
          organisation: _vm.organisation,
          "display-name": _vm.displayName,
          "profile-enabled": _vm.profileEnabled,
          "user-id": _vm.userId,
        },
      }),
      _vm._v(" "),
      _c("EditProfileAnchorLink", {
        attrs: { "profile-enabled": _vm.profileEnabled },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/ProfileVisibilitySection.vue?vue&type=template&id=561c922f&scoped=true& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    {
      style: { marginLeft: _vm.marginLeft },
      attrs: { id: "profile-visibility" },
    },
    [
      _c("HeaderBar", { attrs: { "account-property": _vm.heading } }),
      _vm._v(" "),
      _c("em", { class: { disabled: _vm.disabled } }, [
        _vm._v(
          "\n\t\t" +
            _vm._s(
              _vm.t(
                "settings",
                'The more restrictive setting of either visibility or scope is respected on your Profile. For example, if visibility is set to "Show to everyone" and scope is set to "Private", "Private" is respected.'
              )
            ) +
            "\n\t"
        ),
      ]),
      _vm._v(" "),
      _c(
        "div",
        {
          staticClass: "visibility-dropdowns",
          style: {
            gridTemplateRows: "repeat(" + _vm.rows + ", 44px)",
          },
        },
        _vm._l(_vm.visibilityParams, function (param) {
          return _c("VisibilityDropdown", {
            key: param.id,
            attrs: {
              "param-id": param.id,
              "display-id": param.displayId,
              visibility: param.visibility,
            },
            on: {
              "update:visibility": function ($event) {
                return _vm.$set(param, "visibility", $event)
              },
            },
          })
        }),
        1
      ),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/ProfileVisibilitySection/VisibilityDropdown.vue?vue&type=template&id=5b020be8&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "visibility-container", class: { disabled: _vm.disabled } },
    [
      _c("label", { attrs: { for: _vm.inputId } }, [
        _vm._v(
          "\n\t\t" +
            _vm._s(
              _vm.t("settings", "{displayId}", { displayId: _vm.displayId })
            ) +
            "\n\t"
        ),
      ]),
      _vm._v(" "),
      _c("Multiselect", {
        staticClass: "visibility-container__multiselect",
        attrs: {
          id: _vm.inputId,
          options: _vm.visibilityOptions,
          "track-by": "name",
          label: "label",
          value: _vm.visibilityObject,
        },
        on: { change: _vm.onVisibilityChange },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true&":
/*!**********************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/Role.vue?vue&type=template&id=6181b1b4&scoped=true& ***!
  \**********************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "role" }, [
    _c("input", {
      attrs: {
        id: "role",
        type: "text",
        placeholder: _vm.t("settings", "Your role"),
        autocapitalize: "none",
        autocomplete: "on",
        autocorrect: "off",
      },
      domProps: { value: _vm.role },
      on: { input: _vm.onRoleChange },
    }),
    _vm._v(" "),
    _c(
      "div",
      { staticClass: "role__actions-container" },
      [
        _c("transition", { attrs: { name: "fade" } }, [
          _vm.showCheckmarkIcon
            ? _c("span", { staticClass: "icon-checkmark" })
            : _vm.showErrorIcon
            ? _c("span", { staticClass: "icon-error" })
            : _vm._e(),
        ]),
      ],
      1
    ),
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/RoleSection/RoleSection.vue?vue&type=template&id=fea062e2&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c("HeaderBar", {
        attrs: {
          "account-property": _vm.accountProperty,
          "label-for": "role",
          scope: _vm.primaryRole.scope,
        },
        on: {
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryRole, "scope", $event)
          },
        },
      }),
      _vm._v(" "),
      _c("Role", {
        attrs: { role: _vm.primaryRole.value, scope: _vm.primaryRole.scope },
        on: {
          "update:role": function ($event) {
            return _vm.$set(_vm.primaryRole, "value", $event)
          },
          "update:scope": function ($event) {
            return _vm.$set(_vm.primaryRole, "scope", $event)
          },
        },
      }),
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true&":
/*!**********************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/AddButton.vue?vue&type=template&id=aa45d34e&scoped=true& ***!
  \**********************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "button",
    _vm._g({ attrs: { disabled: _vm.disabled } }, _vm.$listeners),
    [
      _c("span", { staticClass: "icon icon-add" }),
      _vm._v("\n\t" + _vm._s(_vm.t("settings", "Add")) + "\n"),
    ]
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControl.vue?vue&type=template&id=08cbb240&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "Actions",
    {
      class: {
        "federation-actions": !_vm.additional,
        "federation-actions--additional": _vm.additional,
      },
      attrs: {
        "aria-label": _vm.ariaLabel,
        "default-icon": _vm.scopeIcon,
        disabled: _vm.disabled,
      },
    },
    _vm._l(_vm.federationScopes, function (federationScope) {
      return _c("FederationControlAction", {
        key: federationScope.name,
        attrs: {
          "active-scope": _vm.scope,
          "display-name": federationScope.displayName,
          "handle-scope-change": _vm.changeScope,
          "icon-class": federationScope.iconClass,
          "is-supported-scope": _vm.supportedScopes.includes(
            federationScope.name
          ),
          name: federationScope.name,
          "tooltip-disabled": federationScope.tooltipDisabled,
          tooltip: federationScope.tooltip,
        },
      })
    }),
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true&":
/*!************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/FederationControlAction.vue?vue&type=template&id=ba1ab8d4&scoped=true& ***!
  \************************************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "ActionButton",
    {
      staticClass: "federation-actions__btn",
      class: {
        "federation-actions__btn--active": _vm.activeScope === _vm.name,
      },
      attrs: {
        "aria-label": _vm.isSupportedScope ? _vm.tooltip : _vm.tooltipDisabled,
        "close-after-click": true,
        disabled: !_vm.isSupportedScope,
        icon: _vm.iconClass,
        title: _vm.displayName,
      },
      on: {
        click: function ($event) {
          $event.stopPropagation()
          $event.preventDefault()
          return _vm.updateScope.apply(null, arguments)
        },
      },
    },
    [
      _vm._v(
        "\n\t" +
          _vm._s(_vm.isSupportedScope ? _vm.tooltip : _vm.tooltipDisabled) +
          "\n"
      ),
    ]
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true&":
/*!**********************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./apps/settings/src/components/PersonalInfo/shared/HeaderBar.vue?vue&type=template&id=6a8a7fec&scoped=true& ***!
  \**********************************************************************************************************************************************************************************************************************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": function() { return /* binding */ render; },
/* harmony export */   "staticRenderFns": function() { return /* binding */ staticRenderFns; }
/* harmony export */ });
var render = function () {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "h3",
    {
      class: {
        "setting-property": _vm.isSettingProperty,
        "profile-property": _vm.isProfileProperty,
      },
    },
    [
      _c("label", { attrs: { for: _vm.labelFor } }, [
        _vm._v("\n\t\t" + _vm._s(_vm.accountProperty) + "\n\t"),
      ]),
      _vm._v(" "),
      _vm.scope
        ? [
            _c("FederationControl", {
              staticClass: "federation-control",
              attrs: {
                "account-property": _vm.accountProperty,
                scope: _vm.localScope,
              },
              on: {
                "update:scope": [
                  function ($event) {
                    _vm.localScope = $event
                  },
                  _vm.onScopeChange,
                ],
              },
            }),
          ]
        : _vm._e(),
      _vm._v(" "),
      _vm.isEditable && _vm.isMultiValueSupported
        ? [
            _c("AddButton", {
              staticClass: "add-button",
              attrs: { disabled: !_vm.isValidSection },
              on: {
                click: function ($event) {
                  $event.stopPropagation()
                  $event.preventDefault()
                  return _vm.onAddAdditional.apply(null, arguments)
                },
              },
            }),
          ]
        : _vm._e(),
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true



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
/******/ 			"settings-vue-settings-personal-info": 0
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
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["core-common"], function() { return __webpack_require__("./apps/settings/src/main-personal-info.js"); })
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;
//# sourceMappingURL=settings-vue-settings-personal-info.js.map?v=6402c9563b580979b562