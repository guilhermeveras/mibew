<?php
/*
 * Copyright 2005-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* authorization token check for CSRF attack */
function csrfchecktoken()
{
	setcsrftoken();

	// check the turing code for post requests and del requests
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		//if token match
		if (!isset($_POST['csrf_token']) || ($_POST['csrf_token'] != $_SESSION['csrf_token'])) {

			die("CSRF failure");
		}
	} else if (isset($_GET['act'])) {
		if (($_GET['act'] == 'del' || $_GET['act'] == 'delete') && $_GET['csrf_token'] != $_SESSION['csrf_token']) {

			die("CSRF failure");
		}
	}
}

/* print csrf token as a hidden field*/
function print_csrf_token_input()
{
	setcsrftoken();

	echo "<input name='csrf_token' type='hidden' value='" . $_SESSION['csrf_token'] . "' />";
}

/* print csrf token in url format */
function print_csrf_token_in_url()
{
	setcsrftoken();

	echo "&amp;csrf_token=" . $_SESSION['csrf_token'];
}

/* set csrf token */
function setcsrftoken()
{
	if (!isset($_SESSION['csrf_token'])) {
		$_SESSION['csrf_token'] = sha1(rand(10000000, 99999999));
	}
}

?>