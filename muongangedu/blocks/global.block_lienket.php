<?php
//Block liên kết web theo dạng Menu xổ
if ((!defined('NV_SYSTEM')) AND (!defined('NUKEVN_ADMIN'))) {
    Header("Location: ../index.php");
    exit;
}
global $nukeurl;
$content  =  "<!-- Begin Block Weblink -->";
$content  .= "<center>";
$content  .= "<table>";

$content  .= "<select size=\"1\" style=\"width: 100%; color: #205fa0;\" id=\"link\" name=\"link\" onchange=\"window.open(this.options[this.selectedIndex].value,'_blank'); sites.options[0].selected=true\">";
$content  .= "<option value=\"/\">--- Liên kết nội bộ ngành ---</option>";
$content  .= "<option value=\"https://moet.gov.vn\">* Website Bộ Giáo dục và Đào tạo</option> ";
$content  .= "<option value=\"https://dienbien.edu.vn/\">* Sở Giáo dục và Đào tạo Điện Biên</option> ";
$content  .= "<option value=\"http://hscv.dienbien.edu.vn/\">* Hồ sơ công việc ngành Giáo dục Điện Biên</option> ";
$content  .= "<option value=\"http://mail.dienbien.edu.vn/\">* Email ngành Giáo dục Điện Biên</option> ";
$content  .= "</select>";

$content  .= "<p style=\"margin-top: -10px; margin-bottom: 0\">&nbsp;</p>";
$content  .= "<select size=\"1\" style=\"width: 100%;color: #205fa0;\" id=\"link\" name=\"link\" onchange=\"window.open(this.options[this.selectedIndex].value,'_blank'); sites.options[0].selected=true\">";
$content  .= "<option value=\"/\">--- Truy nhập quản lý:---</option>";
$content  .= "<option value=\"https://ptdtntthptmuongang.edu.vn/admin/\">* Quả trị website Nhà trường</option>";
$content  .= "<option value=\"https://hscv.ptdtntthptmuongang.edu.vn/\">* Quản lý văn bản, công việc nội bộ</option>";
$content  .= "<option value=\"https://dienbien.vnerp.vn\">* Quả lý hồ sơ cán bộ CCVC</option>";
$content  .= "<option value=\"https://csdlqgtsc-sso.mof.gov.vn\">* Quản lý tài sản công</option>";
$content  .= "<option value=\"https://truong.csdl.moet.gov.vn\">* Quản lý CSDL ngành Giáo dục và Đào tạo</option>";
$content  .= "</select>";

$content  .= "<p style=\"margin-top: -10px; margin-bottom: 0\">&nbsp;</p>";
$content  .= "<select size=\"1\" style=\"width: 100%;; color: #205fa0;\" id=\"link\" name=\"link\" onchange=\"window.open(this.options[this.selectedIndex].value,'_blank'); sites.options[0].selected=true\">";
$content  .= "<option value=\"/\">--- Website khác ---</option>";
$content  .= "<option value=\"http://dienbien.gov.vn\">* UBND tỉnh Điện Biên</option> ";
$content  .= "<option value=\"https://baodienbienphu.com.vn\">* Báo Điện Biên Phủ Online</option>";
$content  .= "<option value=\"https://www.dienbientv.vn/\">* Đài Phát thanh và Truyền hình Điện Biên</option>";
$content  .= "</select>";


$content  .= "</td></tr></table>";
$content  .= "</form>";
$content  .= "</center>";
$content  .= "<!-- End Block By .... -->";
?>