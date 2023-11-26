<?php

// Load Dolibarr environment
$res = 0;
// Try main.inc.php into web root known defined into CONTEXT_DOCUMENT_ROOT (not always defined)
if (!$res && !empty($_SERVER["CONTEXT_DOCUMENT_ROOT"])) {
	$res = @include $_SERVER["CONTEXT_DOCUMENT_ROOT"]."/main.inc.php";
}
// Try main.inc.php into web root detected using web root calculated from SCRIPT_FILENAME
$tmp = empty($_SERVER['SCRIPT_FILENAME']) ? '' : $_SERVER['SCRIPT_FILENAME']; $tmp2 = realpath(__FILE__); $i = strlen($tmp) - 1; $j = strlen($tmp2) - 1;
while ($i > 0 && $j > 0 && isset($tmp[$i]) && isset($tmp2[$j]) && $tmp[$i] == $tmp2[$j]) {
	$i--; $j--;
}
if (!$res && $i > 0 && file_exists(substr($tmp, 0, ($i + 1))."/main.inc.php")) {
	$res = @include substr($tmp, 0, ($i + 1))."/main.inc.php";
}
if (!$res && $i > 0 && file_exists(dirname(substr($tmp, 0, ($i + 1)))."/main.inc.php")) {
	$res = @include dirname(substr($tmp, 0, ($i + 1)))."/main.inc.php";
}
// Try main.inc.php using relative path
if (!$res && file_exists("../main.inc.php")) {
	$res = @include "../main.inc.php";
}
if (!$res && file_exists("../../main.inc.php")) {
	$res = @include "../../main.inc.php";
}
if (!$res && file_exists("../../../main.inc.php")) {
	$res = @include "../../../main.inc.php";
}
if (!$res) {
	die("Include of main fails");
}

require_once DOL_DOCUMENT_ROOT.'/core/class/html.formfile.class.php';

// Load translation files required by the page
$langs->loadLangs(array("easynotes@easynotes"));

$action = GETPOST('action', 'aZ09');


// Security check
// if (! $user->rights->easynotes->myobject->read) {
// 	accessforbidden();
// }
$socid = GETPOST('socid', 'int');
if (isset($user->socid) && $user->socid > 0) {
	$action = '';
	$socid = $user->socid;
}

$max = 5;
$now = dol_now();


/*
 * Actions
 */

// None


/*
 * View
 */

$form = new Form($db);
$formfile = new FormFile($db);

llxHeader("", $langs->trans("Notas"));
?>
<table class="centpercent notopnoleftnoright table-fiche-title">
	<tr>
		<td class="nobordernopadding widthpictotitle valignmiddle col-picto">
			<span class="far fa-clipboard infobox-project valignmiddle pictotitle widthpictotitle" style=""></span>
		</td>
		<td class="nobordernopadding valignmiddle col-title">
			<div class="titre inline-block">
				<span style="padding: 0px; padding-right: 3px !important;"><?php echo $langs->trans("Notas"); ?></span>
			</div>
		</td>
		<?php if ($user->rights->easynotes->easynotes->write) { ?>
			<?php if ($user->admin) { ?>
		<td class="nobordernopadding valignmiddle col-title" align="right">
			<a class="btnTitle btnTitlePlus" href="<?php echo DOL_URL_ROOT; ?>/custom/easynotes/note_card.php?action=create" title="New Note"><span class="fa fa-plus-circle valignmiddle btnTitle-icon"></span></a>
		</td>
		<?php } ?>
		<?php } ?>
	</tr>
</table>

<div class="fichecenter">
<div >

<?php include('easynotesview.php');?>

</div>
</div>

<?php
// End of page
llxFooter();
$db->close();
