/**
 * @copyright 2020, Roeland Jago Douma <roeland@famdouma.nl>
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

import Axios from '@nextcloud/axios'
import { generateUrl } from '@nextcloud/router'

/**
 * @param {any} loginName -
 */
export function startAuthentication(loginName) {
	const url = generateUrl('/login/webauthn/start')

	return Axios.post(url, { loginName })
		.then(resp => resp.data)
}

/**
 * @param {any} data -
 */
export function finishAuthentication(data) {
	const url = generateUrl('/login/webauthn/finish')

	return Axios.post(url, { data })
		.then(resp => resp.data)
}
