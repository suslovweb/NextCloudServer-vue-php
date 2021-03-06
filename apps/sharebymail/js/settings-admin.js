/**
 * @copyright Copyright (c) 2017 Bjoern Schiessle <bjoern@schiessle.org>
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
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
$(function() {

	$('#sendPasswordMail').on('change', function() {
		var status = 'no';
		if ($(this).is(':checked')) {
			status = 'yes';
		}
		OCP.AppConfig.setValue('sharebymail', 'sendpasswordmail', status);
	});

	$('#enforcePasswordProtection').on('change', function() {
		var status = 'no';
		if ($(this).is(':checked')) {
			status = 'yes';
		}
		OCP.AppConfig.setValue('sharebymail', 'enforcePasswordProtection', status);
	});

	$('#replyToInitiator').on('change', function() {
		var status = 'no';
		if ($(this).is(':checked')) {
			status = 'yes';
		}
		OCP.AppConfig.setValue('sharebymail', 'replyToInitiator', status);
	});

});
