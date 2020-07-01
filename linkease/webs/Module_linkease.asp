﻿<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta HTTP-EQUIV="Pragma" CONTENT="no-cache" />
    <meta HTTP-EQUIV="Expires" CONTENT="-1" />
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="icon" href="images/favicon.png" />
    <title>软件中心 - 易有云2.0（LinkEase）</title>
    <link rel="stylesheet" type="text/css" href="index_style.css" />
    <link rel="stylesheet" type="text/css" href="form_style.css" />
    <link rel="stylesheet" type="text/css" href="usp_style.css" />
    <link rel="stylesheet" type="text/css" href="ParentalControl.css">
    <link rel="stylesheet" type="text/css" href="css/element.css">
    <script language="JavaScript" type="text/javascript" src="/state.js"></script>
    <script language="JavaScript" type="text/javascript" src="/popup.js"></script>
    <script language="JavaScript" type="text/javascript" src="/validator.js"></script>
    <script language="JavaScript" type="text/javascript" src="/help.js"></script>
    <script language="JavaScript" type="text/javascript" src="/general.js"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/disk_functions.js"></script>
    <script language="JavaScript" type="text/javascript" src="/client_function.js"></script>
    <script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>
    <script type="text/javascript" src="/dbconf?p=linkease&v=<% uptime(); %>"></script>
    <style>
        .Bar_container {
            width: 85%;
            height: 20px;
            border: 1px inset #999;
            margin: 0 auto;
            margin-top: 20px \9;
            background-color: #FFFFFF;
            z-index: 100;
        }

        #proceeding_img_text {
            position: absolute;
            z-index: 101;
            font-size: 11px;
            color: #000000;
            line-height: 21px;
            width: 83%;
        }

        #proceeding_img {
            height: 21px;
            background: #C0D1D3 url(/images/ss_proceding.gif);
        }

        #ClientList_Block_PC {
            border: 1px outset #999;
            background-color: #576D73;
            position: absolute;
            *margin-top: 26px;
            margin-left: 3px;
            *margin-left: -129px;
            width: 255px;
            text-align: left;
            height: auto;
            overflow-y: auto;
            z-index: 200;
            padding: 1px;
            display: none;
        }

        #ClientList_Block_PC div {
            background-color: #576D73;
            height: auto;
            *height: 20px;
            line-height: 20px;
            text-decoration: none;
            font-family: Lucida Console;
            padding-left: 2px;
        }

        #ClientList_Block_PC a {
            background-color: #EFEFEF;
            color: #FFF;
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            text-decoration: none;
        }

        #ClientList_Block_PC div:hover,
        #ClientList_Block a:hover {
            background-color: #3366FF;
            color: #FFFFFF;
            cursor: default;
        }

        .linkease_btn {
            border: 1px solid #222;
            background: linear-gradient(to bottom, #003333 0%, #000000 100%);
            /* W3C */
            font-size: 10pt;
            color: #fff;
            padding: 5px 5px;
            border-radius: 5px 5px 5px 5px;
            width: 16%;
        }

        .linkease_btn:hover {
            border: 1px solid #222;
            background: linear-gradient(to bottom, #27c9c9 0%, #279fd9 100%);
            /* W3C */
            font-size: 10pt;
            color: #fff;
            padding: 5px 5px;
            border-radius: 5px 5px 5px 5px;
            width: 16%;
        }

        /* folder tree */
        .mask_bg {
            position: absolute;
            margin: auto;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 100;
            /*background-color: #FFF;*/
            background: url(images/popup_bg2.gif);
            background-repeat: repeat;
            filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
            -moz-opacity: 0.6;
            display: none;
            /*visibility:hidden;*/
            overflow: hidden;
        }

        .mask_floder_bg {
            position: absolute;
            margin: auto;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 300;
            /*background-color: #FFF;*/
            background: url(images/popup_bg2.gif);
            background-repeat: repeat;
            filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
            -moz-opacity: 0.6;
            display: none;
            /*visibility:hidden;*/
            overflow: hidden;
        }

        .folderClicked {
            color: #569AC7;
            font-size: 14px;
            cursor: text;
        }

        .lastfolderClicked {
            color: #FFFFFF;
            cursor: pointer;
        }

        .show-btn1,
        .show-btn2,
        .show-btn3,
        .show-btn4 {
            border: 1px solid #222;
            background: #576d73;
            font-size: 10pt;
            color: #fff;
            padding: 10px 3.75px;
            border-radius: 5px 5px 0px 0px;
            width: 8.45601%;
        }

        .active {
            background: #2f3a3e;
        }

        input[type=button]:focus {
            outline: none;
        }

        .linkease_msg {
            margin: 10px;
        }

        .FormTitle i {
            color: #FC0;
            font-style: normal;
        }

        .splitLine {
            background: #32393B;
            background: -webkit-linear-gradient(#32393B 0%, #32393B 20%, #667881 80%, #667881 100%);
            background: -o-linear-gradient(#32393B 0%, #32393B 20%, #667881 80%, #667881 100%);
            background: linear-gradient(#32393B 0%, #32393B 20%, #667881 80%, #667881 100%);
            height: 2px;
            width: 740px;
            margin: 1px 0;
        }
    </style>
    <script>
        jQuery.ajax = (function (_ajax) {
            var protocol = location.protocol,
                hostname = location.hostname,
                exRegex = RegExp(protocol + '//' + hostname),
                YQL = 'http' + (/^https/.test(protocol) ? 's' : '') + '://query.yahooapis.com/v1/public/yql?callback=?',
                query = 'select * from html where url="{URL}" and xpath="*"';
            function isExternal(url) {
                return !exRegex.test(url) && /:\/\//.test(url);
            }
            return function (o) {
                var url = o.url;
                if (/get/i.test(o.type) && !/json/i.test(o.dataType) && isExternal(url)) {
                    // Manipulate options so that JSONP-x request is made to YQL
                    o.url = YQL;
                    o.dataType = 'json';
                    o.data = {
                        q: query.replace(
                            '{URL}',
                            url + (o.data ?
                                (/\?/.test(url) ? '&' : '?') + jQuery.param(o.data) : '')
                        ),
                        format: 'xml'
                    };
                    // Since it's a JSONP request
                    // complete === success
                    if (!o.success && o.complete) {
                        o.success = o.complete;
                        delete o.complete;
                    }
                    o.success = (function (_success) {
                        return function (data) {
                            if (_success) {
                                // Fake XHR callback.
                                _success.call(this, {
                                    responseText: (data.results[0] || '')
                                        // YQL screws with <script>s
                                        // Get rid of them
                                        .replace(/<script[^>]+?\/>|<script(.|\s)*?\/script>/gi, '')
                                }, 'success');
                            }
                        };
                    })(o.success);
                }
                return _ajax.apply(this, arguments);
            };
        })(jQuery.ajax);
        var $j = jQuery.noConflict();
        var $G = function (id) {
            return document.getElementById(id);
        };
<% get_AiDisk_status(); %>
<% disk_pool_mapping_info(); %>
var PROTOCOL = "cifs";
        var _layer_order = "";
        var FromObject = "0";
        var lastClickedObj = 0;
        var disk_flag = 0;
        window.onresize = cal_panel_block;
        var nfsd_enable = '<% nvram_get("nfsd_enable"); %>';
        var nfsd_exportlist_array = '<% nvram_get("nfsd_exportlist"); %>';
        window.onresize = cal_panel_block;
        String.prototype.replaceAll = function (s1, s2) {
            return this.replace(new RegExp(s1, "gm"), s2);
        }
        function init() {
            var r_lan_ipaddr = "<% nvram_get(lan_ipaddr); %>"
            var linkease_website_en = '<% dbus_get_def("linkease_enable", "0"); %>'
            show_menu(menu_hook);
            get_status();
            conf_to_obj();
            buildswitch();
            toggle_switch();
            version_show();
            //initial_dir();
            //check_dir_path();

            var webite = $j("#linkease_website");  //访问linkease
            var guide = $j("#linkease_guide");    //配置中心
            webite.click(function () {
                window.open("http://" + r_lan_ipaddr + ":8897");
            });
            guide.click(function () {
                window.open("http://" + r_lan_ipaddr + ":8897/guide/index.html");
            });
            if (linkease_website_en == "0") {
                webite.style.display = "none";
                guide.style.display = "none";
            } else {
                webite.style.display = "";
                guide.style.display = "";
            }
        }

        function get_status() {
            $j.ajax({
                url: 'apply.cgi?current_page=Module_linkease.asp&next_page=Module_linkease.asp&group_id=&modified=0&action_mode=+Refresh+&action_script=&action_wait=&first_time=&preferred_lang=CN&SystemCmd=linkease_status.sh',
                dataType: 'html',
                error: function (xhr) {
                    alert("error");
                },
                success: function (response) {
                    //alert("success");
                    setTimeout("check_linkease_status();", 1000);
                }
            });
        }
        var noChange_status = 0;
        var _responseLen;
        function check_linkease_status() {
            $j.ajax({
                url: '/res/linkease_check.html',
                dataType: 'html',

                error: function (xhr) {
                    setTimeout("check_linkease_status();", 2000);
                },
                success: function (response) {
                    var _cmdBtn = document.getElementById("cmdBtn");
                    if (response.search("XU6J03M6") != -1) {
                        linkease_status = response.replace("XU6J03M6", " ");
                        //alert(linkease_status);
                        document.getElementById("status").innerHTML = linkease_status;
                        return true;
                    }

                    if (_responseLen == response.length) {
                        noChange_status++;
                    } else {
                        noChange_status = 0;
                    }
                    if (noChange_status > 100) {
                        noChange_status = 0;
                        //refreshpage();
                    } else {
                        setTimeout("check_linkease_status();", 1000);
                    }
                    _responseLen = response.length;
                }
            });
        }
        function toggle_switch() {
            var rrt = document.getElementById("switch");
            if (document.form.linkease_enable.value != "1") {
                rrt.checked = false;
            } else {
                rrt.checked = true;
            }
        }

        function buildswitch() {
            $j("#switch").click(
                function () {
                    if (document.getElementById('switch').checked) {
                        document.form.linkease_enable.value = 1;
                    } else {
                        document.form.linkease_enable.value = 0;
                    }
                });
        }

        function initial_dir() {
            var __layer_order = "0_0";
            var url = "/getfoldertree.asp";
            var type = "General";
            url += "?motion=gettree&layer_order=" + __layer_order + "&t=" + Math.random();
            $j.get(url, function (data) {
                initial_dir_status(data);
            });
        }
        function initial_dir_status(data) {
            if (data != "" && data.length != 2) {
                get_layer_items("0");
                eval("var default_dir=" + data);
            } else {
                //document.getElementById("EditExports").style.display = "none";
                disk_flag = 1;
            }
        }

        function check_dir_path() {
            var dir_array = document.getElementById('linkease_dir').value.split("/");
            if (dir_array[dir_array.length - 1].length > 21)
                document.getElementById('linkease_dir').value = "/" + dir_array[1] + "/" + dir_array[2] + "/" + dir_array[dir_array.length - 1].substring(0, 18) + "...";
        }
        function get_disk_tree() {
            if (disk_flag == 1) {
                alert('<#no_usb_found#>');
                return false;
            }
            cal_panel_block();
            $j("#folderTree_panel").fadeIn(300);
            get_layer_items("0");
        }
        function get_layer_items(layer_order) {
            $j.ajax({
                url: '/gettree.asp?layer_order=' + layer_order,
                dataType: 'script',
                error: function (xhr) {
                    ;
                },
                success: function () {
                    get_tree_items(treeitems);
                }
            });
        }

        function get_tree_items(treeitems) {
            document.aidiskForm.test_flag.value = 0;
            this.isLoading = 1;
            var array_temp = new Array();
            var array_temp_split = new Array();
            for (var j = 0; j < treeitems.length; j++) { // To hide folder 'Download2'
                array_temp_split[j] = treeitems[j].split("#");
                if (array_temp_split[j][0].match(/^asusware$/)) {
                    continue;
                }
                array_temp.push(treeitems[j]);
            }
            this.Items = array_temp;
            if (this.Items && this.Items.length >= 0) {
                BuildTree();
            }
        }
        function BuildTree() {
            var ItemText, ItemSub, ItemIcon;
            var vertline, isSubTree;
            var layer;
            var short_ItemText = "";
            var shown_ItemText = "";
            var ItemBarCode = "";
            var TempObject = "";
            for (var i = 0; i < this.Items.length; ++i) {
                this.Items[i] = this.Items[i].split("#");
                var Item_size = 0;
                Item_size = this.Items[i].length;
                if (Item_size > 3) {
                    var temp_array = new Array(3);
                    temp_array[2] = this.Items[i][Item_size - 1];
                    temp_array[1] = this.Items[i][Item_size - 2];
                    temp_array[0] = "";
                    for (var j = 0; j < Item_size - 2; ++j) {
                        if (j != 0)
                            temp_array[0] += "#";
                        temp_array[0] += this.Items[i][j];
                    }
                    this.Items[i] = temp_array;
                }
                ItemText = (this.Items[i][0]).replace(/^[\s]+/gi, "").replace(/[\s]+$/gi, "");
                ItemBarCode = this.FromObject + "_" + (this.Items[i][1]).replace(/^[\s]+/gi, "").replace(/[\s]+$/gi, "");
                ItemSub = parseInt((this.Items[i][2]).replace(/^[\s]+/gi, "").replace(/[\s]+$/gi, ""));
                layer = get_layer(ItemBarCode.substring(1));
                if (layer == 3) {
                    if (ItemText.length > 21)
                        short_ItemText = ItemText.substring(0, 30) + "...";
                    else
                        short_ItemText = ItemText;
                } else
                    short_ItemText = ItemText;
                shown_ItemText = showhtmlspace(short_ItemText);
                if (layer == 1)
                    ItemIcon = 'disk';
                else if (layer == 2)
                    ItemIcon = 'part';
                else
                    ItemIcon = 'folders';
                SubClick = ' onclick="GetFolderItem(this, ';
                if (ItemSub <= 0) {
                    SubClick += '0);"';
                    isSubTree = 'n';
                } else {
                    SubClick += '1);"';
                    isSubTree = 's';
                }
                if (i == this.Items.length - 1) {
                    vertline = '';
                    isSubTree += '1';
                } else {
                    vertline = ' background="/images/Tree/vert_line.gif"';
                    isSubTree += '0';
                }
                if (layer == 2 && isSubTree == 'n1') { // Uee to rebuild folder tree if disk without folder, Jieming add at 2012/08/29
                    document.aidiskForm.test_flag.value = 1;
                }
                TempObject += '<table class="tree_table" id="bug_test">';
                TempObject += '<tr>';
                // the line in the front.
                TempObject += '<td class="vert_line">';
                TempObject += '<img id="a' + ItemBarCode + '" onclick=\'document.getElementById("d' + ItemBarCode + '").onclick();\' class="FdRead" src="/images/Tree/vert_line_' + isSubTree + '0.gif">';
                TempObject += '</td>';
                if (layer == 3) {
                    /*a: connect_line b: harddisc+name  c:harddisc  d:name e: next layer forder*/
                    TempObject += '<td>';
                    TempObject += '<img id="c' + ItemBarCode + '" onclick=\'document.getElementById("d' + ItemBarCode + '").onclick();\' src="/images/New_ui/advancesetting/' + ItemIcon + '.png">';
                    TempObject += '</td>';
                    TempObject += '<td>';
                    TempObject += '<span id="d' + ItemBarCode + '"' + SubClick + ' title="' + ItemText + '">' + shown_ItemText + '</span>\n';
                    TempObject += '</td>';
                } else if (layer == 2) {
                    TempObject += '<td>';
                    TempObject += '<table class="tree_table">';
                    TempObject += '<tr>';
                    TempObject += '<td class="vert_line">';
                    TempObject += '<img id="c' + ItemBarCode + '" onclick=\'document.getElementById("d' + ItemBarCode + '").onclick();\' src="/images/New_ui/advancesetting/' + ItemIcon + '.png">';
                    TempObject += '</td>';
                    TempObject += '<td class="FdText">';
                    TempObject += '<span id="d' + ItemBarCode + '"' + SubClick + ' title="' + ItemText + '">' + shown_ItemText + '</span>';
                    TempObject += '</td>';
                    TempObject += '<td></td>';
                    TempObject += '</tr>';
                    TempObject += '</table>';
                    TempObject += '</td>';
                    TempObject += '</tr>';
                    TempObject += '<tr><td></td>';
                    TempObject += '<td colspan=2><div id="e' + ItemBarCode + '" ></div></td>';
                } else {
                    /*a: connect_line b: harddisc+name  c:harddisc  d:name e: next layer forder*/
                    TempObject += '<td>';
                    TempObject += '<table><tr><td>';
                    TempObject += '<img id="c' + ItemBarCode + '" onclick=\'document.getElementById("d' + ItemBarCode + '").onclick();\' src="/images/New_ui/advancesetting/' + ItemIcon + '.png">';
                    TempObject += '</td><td>';
                    TempObject += '<span id="d' + ItemBarCode + '"' + SubClick + ' title="' + ItemText + '">' + shown_ItemText + '</span>';
                    TempObject += '</td></tr></table>';
                    TempObject += '</td>';
                    TempObject += '</tr>';
                    TempObject += '<tr><td></td>';
                    TempObject += '<td><div id="e' + ItemBarCode + '" ></div></td>';
                }
                TempObject += '</tr>';
            }
            TempObject += '</table>';
            document.getElementById("e" + this.FromObject).innerHTML = TempObject;
        }
        function get_layer(barcode) {
            var tmp, layer;
            layer = 0;
            while (barcode.indexOf('_') != -1) {
                barcode = barcode.substring(barcode.indexOf('_'), barcode.length);
                ++layer;
                barcode = barcode.substring(1);
            }
            return layer;
        }
        function conf_to_obj() {
            if (typeof db_linkease != "undefined") {
                for (var field in db_linkease) {
                    var el = document.getElementById(field);
                    if (el != null) {
                        el.value = db_linkease[field];
                    }
                }
            }
        }
        function build_array(obj, layer) {
            var path_temp = "/mnt";
            var layer2_path = "";
            var layer3_path = "";
            if (obj.id.length > 6) {
                if (layer == 3) {
                    layer3_path = "/" + obj.title;
                    while (layer3_path.indexOf("&nbsp;") != -1)
                        layer3_path = layer3_path.replace("&nbsp;", " ");
                    if (obj.id.length > 8)
                        layer2_path = "/" + document.getElementById(obj.id.substring(0, obj.id.length - 3)).innerHTML;
                    else
                        layer2_path = "/" + document.getElementById(obj.id.substring(0, obj.id.length - 2)).innerHTML;
                    while (layer2_path.indexOf("&nbsp;") != -1)
                        layer2_path = layer2_path.replace("&nbsp;", " ");
                }
            }
            if (obj.id.length > 4 && obj.id.length <= 6) {
                if (layer == 2) {
                    layer2_path = "/" + obj.title;
                    while (layer2_path.indexOf("&nbsp;") != -1)
                        layer2_path = layer2_path.replace("&nbsp;", " ");
                }
            }
            path_temp = path_temp + layer2_path + layer3_path;
            return path_temp;
        }
        function GetFolderItem(selectedObj, haveSubTree) {
            var barcode, layer = 0;
            showClickedObj(selectedObj);
            barcode = selectedObj.id.substring(1);
            layer = get_layer(barcode);
            if (layer == 0)
                alert("Machine: Wrong");
            else if (layer == 1) {
                // chose Disk
                setSelectedDiskOrder(selectedObj.id);
                path_directory = build_array(selectedObj, layer);
                document.getElementById('createFolderBtn').className = "createFolderBtn";
                document.getElementById('deleteFolderBtn').className = "deleteFolderBtn";
                document.getElementById('modifyFolderBtn').className = "modifyFolderBtn";
                document.getElementById('createFolderBtn').onclick = function () { };
                document.getElementById('deleteFolderBtn').onclick = function () { };
                document.getElementById('modifyFolderBtn').onclick = function () { };
            } else if (layer == 2) {
                // chose Partition
                setSelectedPoolOrder(selectedObj.id);
                path_directory = build_array(selectedObj, layer);
                document.getElementById('createFolderBtn').className = "createFolderBtn_add";
                document.getElementById('deleteFolderBtn').className = "deleteFolderBtn";
                document.getElementById('modifyFolderBtn').className = "modifyFolderBtn";
                document.getElementById('createFolderBtn').onclick = function () {
                    popupWindow('OverlayMask', '/aidisk/popCreateFolder.asp');
                };
                document.getElementById('deleteFolderBtn').onclick = function () { };
                document.getElementById('modifyFolderBtn').onclick = function () { };
                document.aidiskForm.layer_order.disabled = "disabled";
                document.aidiskForm.layer_order.value = barcode;
            } else if (layer == 3) {
                // chose Shared-Folder
                setSelectedFolderOrder(selectedObj.id);
                path_directory = build_array(selectedObj, layer);
                document.getElementById('createFolderBtn').className = "createFolderBtn";
                document.getElementById('deleteFolderBtn').className = "deleteFolderBtn_add";
                document.getElementById('modifyFolderBtn').className = "modifyFolderBtn_add";
                document.getElementById('createFolderBtn').onclick = function () { };
                document.getElementById('deleteFolderBtn').onclick = function () {
                    popupWindow('OverlayMask', '/aidisk/popDeleteFolder.asp');
                };
                document.getElementById('modifyFolderBtn').onclick = function () {
                    popupWindow('OverlayMask', '/aidisk/popModifyFolder.asp');
                };
                document.aidiskForm.layer_order.disabled = "disabled";
                document.aidiskForm.layer_order.value = barcode;
            }
            if (haveSubTree)
                GetTree(barcode, 1);
        }
        function showClickedObj(clickedObj) {
            if (this.lastClickedObj != 0)
                this.lastClickedObj.className = "lastfolderClicked"; //this className set in AiDisk_style.css
            clickedObj.className = "folderClicked";
            this.lastClickedObj = clickedObj;
        }
        function GetTree(layer_order, v) {
            if (layer_order == "0") {
                this.FromObject = layer_order;
                document.getElementById('d' + layer_order).innerHTML = '<span class="FdWait">. . . . . . . . . .</span>';
                setTimeout('get_layer_items("' + layer_order + '", "gettree")', 1);
                return;
            }
            if (document.getElementById('a' + layer_order).className == "FdRead") {
                document.getElementById('a' + layer_order).className = "FdOpen";
                document.getElementById('a' + layer_order).src = "/images/Tree/vert_line_s" + v + "1.gif";
                this.FromObject = layer_order;
                document.getElementById('e' + layer_order).innerHTML = '<img src="/images/Tree/folder_wait.gif">';
                setTimeout('get_layer_items("' + layer_order + '", "gettree")', 1);
            } else if (document.getElementById('a' + layer_order).className == "FdOpen") {
                document.getElementById('a' + layer_order).className = "FdClose";
                document.getElementById('a' + layer_order).src = "/images/Tree/vert_line_s" + v + "0.gif";
                document.getElementById('e' + layer_order).style.position = "absolute";
                document.getElementById('e' + layer_order).style.visibility = "hidden";
            } else if (document.getElementById('a' + layer_order).className == "FdClose") {
                document.getElementById('a' + layer_order).className = "FdOpen";
                document.getElementById('a' + layer_order).src = "/images/Tree/vert_line_s" + v + "1.gif";
                document.getElementById('e' + layer_order).style.position = "";
                document.getElementById('e' + layer_order).style.visibility = "";
            } else
                alert("Error when show the folder-tree!");
        }
        function cancel_folderTree() {
            this.FromObject = "0";
            $j("#folderTree_panel").fadeOut(300);
        }
        function confirm_folderTree() {
            document.getElementById('linkease_dir').value = path_directory;
            this.FromObject = "0";
            $j("#folderTree_panel").fadeOut(300);
        }
        function cal_panel_block() {
            var blockmarginLeft;
            if (window.innerWidth)
                winWidth = window.innerWidth;
            else if ((document.body) && (document.body.clientWidth))
                winWidth = document.body.clientWidth;
            if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
                winWidth = document.documentElement.clientWidth;
            }
            if (winWidth > 1050) {
                winPadding = (winWidth - 1050) / 2;
                winWidth = 1105;
                blockmarginLeft = (winWidth * 0.25) + winPadding;
            } else if (winWidth <= 1050) {
                blockmarginLeft = (winWidth) * 0.25 + document.body.scrollLeft;
            }
            document.getElementById("folderTree_panel").style.marginLeft = blockmarginLeft + "px";
        }
        function onSubmitCtrl(o, s) {
            var _form = document.form;
            showSSLoadingBar(5);
            document.form.action_mode.value = s;
            updateOptions();
        }

        function done_validating(action) {
            return true;
        }

        function updateOptions() {
            document.form.enctype = "";
            document.form.encoding = "";
            document.form.action = "/applydb.cgi?p=linkease_";
            document.form.SystemCmd.value = "linkease_config.sh";
            document.form.submit();
        }

        function menu_hook(title, tab) {
            var enable_ss = "<% nvram_get("enable_ss"); %>";
            var enable_soft = "<% nvram_get("enable_soft"); %>";
            if (enable_ss == "1" && enable_soft == "1") {
                tabtitle[tabtitle.length - 2] = new Array("", "LinkEase");
                tablink[tablink.length - 2] = new Array("", "Module_linkease.asp");
            } else {
                tabtitle[tabtitle.length - 1] = new Array("", "LinkEase");
                tablink[tablink.length - 1] = new Array("", "Module_linkease.asp");
            }
        }

        function showSSLoadingBar(seconds) {
            if (window.scrollTo)
                window.scrollTo(0, 0);

            disableCheckChangedStatus();

            htmlbodyforIE = document.getElementsByTagName("html");  //this both for IE&FF, use "html" but not "body" because <!DOCTYPE html PUBLIC.......>
            htmlbodyforIE[0].style.overflow = "hidden";      //hidden the Y-scrollbar for preventing from user scroll it.

            winW_H();

            var blockmarginTop;
            var blockmarginLeft;
            if (window.innerWidth)
                winWidth = window.innerWidth;
            else if ((document.body) && (document.body.clientWidth))
                winWidth = document.body.clientWidth;

            if (window.innerHeight)
                winHeight = window.innerHeight;
            else if ((document.body) && (document.body.clientHeight))
                winHeight = document.body.clientHeight;

            if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
                winHeight = document.documentElement.clientHeight;
                winWidth = document.documentElement.clientWidth;
            }

            if (winWidth > 1050) {
                winPadding = (winWidth - 1050) / 2;
                winWidth = 1105;
                blockmarginLeft = (winWidth * 0.3) + winPadding - 150;
            }
            else if (winWidth <= 1050) {
                blockmarginLeft = (winWidth) * 0.3 + document.body.scrollLeft - 160;
            }

            if (winHeight > 660)
                winHeight = 660;

            blockmarginTop = winHeight * 0.3 - 140

            document.getElementById("loadingBarBlock").style.marginTop = blockmarginTop + "px";
            document.getElementById("loadingBarBlock").style.marginLeft = blockmarginLeft + "px";
            document.getElementById("loadingBarBlock").style.width = 770 + "px";
            document.getElementById("LoadingBar").style.width = winW + "px";
            document.getElementById("LoadingBar").style.height = winH + "px";

            loadingSeconds = seconds;
            progress = 100 / loadingSeconds;
            y = 0;
            LoadingLocalProgress(seconds);
        }


        function LoadingLocalProgress(seconds) {
            document.getElementById("LoadingBar").style.visibility = "visible";
            if (document.form.linkease_enable.value != "1") {
                document.getElementById("loading_block3").innerHTML = "linkease关闭中 ..."
            } else {
                document.getElementById("loading_block3").innerHTML = "linkease启用中 ..."
            }

            y = y + progress;
            if (typeof (seconds) == "number" && seconds >= 0) {
                if (seconds != 0) {
                    document.getElementById("proceeding_img").style.width = Math.round(y) + "%";
                    document.getElementById("proceeding_img_text").innerHTML = Math.round(y) + "%";

                    if (document.getElementById("loading_block1")) {
                        document.getElementById("proceeding_img_text").style.width = document.getElementById("loading_block1").clientWidth;
                        document.getElementById("proceeding_img_text").style.marginLeft = "175px";
                    }
                    --seconds;
                    setTimeout("LoadingLocalProgress(" + seconds + ");", 1000);
                }
                else {
                    document.getElementById("proceeding_img_text").innerHTML = "完成";
                    y = 0;
                    setTimeout("hideSSLoadingBar();", 1000);
                    refreshpage();
                }
            }
        }

        function reload_Soft_Center() {
            location.href = "/Main_Soft_center.asp";
        }
        function version_show() {
            $j.ajax({
                url: 'https://koolshare.ngrok.wang/linkease/config.json.js',
                type: 'GET',
                dataType: 'jsonp',
                success: function (res) {
                    if (typeof (res["version"]) != "undefined" && res["version"].length > 0) {
                        if (res["version"] == db_linkease["linkease_version"]) {
                            $j("#linkease_version_show").html("插件版本：" + res["version"]);
                        } else if (res["version"] > db_linkease["linkease_version"]) {
                            $j("#linkease_version_show").html("<font color=\"#66FF66\">有新版本：" + res.version + "</font>");
                        }
                    }
                }
            });
        }
    </script>
</head>

<body onload="init();">
    <div id="TopBanner"></div>
    <div id="DM_mask" class="mask_bg"></div>
    <div id="folderTree_panel" class="panel_folder">
        <table>
            <tr>
                <td>
                    <div class="machineName"
                        style="width:200px;font-family:Microsoft JhengHei;font-size:12pt;font-weight:bolder; margin-top:15px;margin-left:30px;">
                        选择下载目录</div>
                </td>
                <td>
                    <div style="width:240px;margin-top:17px;margin-left:125px;">
                        <table>
                            <tr>
                                <td>
                                    <div id="createFolderBtn" class="createFolderBtn" title="<#AddFolderTitle#>"></div>
                                </td>
                                <td>
                                    <div id="deleteFolderBtn" class="deleteFolderBtn" title="<#DelFolderTitle#>"></div>
                                </td>
                                <td>
                                    <div id="modifyFolderBtn" class="modifyFolderBtn" title="<#ModFolderTitle#>"></div>
                                </td>
                            <tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <div id="e0" class="folder_tree"></div>
        <div style="background-image:url(images/Tree/bg_02.png);background-repeat:no-repeat;height:90px;">
            <input class="button_gen" type="button" style="margin-left:27%;margin-top:18px;"
                onclick="cancel_folderTree();" value="取消">
            <input class="button_gen" type="button" onclick="confirm_folderTree();" value="确认">
        </div>
    </div>
    <div id="DM_mask_floder" class="mask_floder_bg"></div>
    <!-- floder tree-->
    <div id="Loading" class="popup_bg"></div>
    <div id="LoadingBar" class="popup_bar_bg">
        <table cellpadding="5" cellspacing="0" id="loadingBarBlock" class="loadingBarBlock" align="center">
            <tr>
                <td height="100">
                    <div id="loading_block3" style="margin:10px auto;width:85%; font-size:12pt;"></div>
                    <div id="loading_block1" class="Bar_container">
                        <span id="proceeding_img_text"></span>
                        <div id="proceeding_img"></div>
                    </div>
                    <div id="loading_block2" style="margin:10px auto; width:85%;">进度条走动过程中请勿刷新网页，请稍后...</div>
                </td>
            </tr>
        </table>
    </div>
    <iframe name="hidden_frame" id="hidden_frame" src="" width="0" height="0" frameborder="0"></iframe>
    <form method="post" name="aidiskForm" action="" target="hidden_frame">
        <input type="hidden" name="motion" id="motion" value="">
        <input type="hidden" name="layer_order" id="layer_order" value="">
        <input type="hidden" name="test_flag" value="" disabled="disabled">
        <input type="hidden" name="protocol" id="protocol" value="">
    </form>
    <form method="POST" name="form" action="/applydb.cgi?p=linkease_" target="hidden_frame">
        <input type="hidden" name="current_page" value="Module_linkease.asp">
        <input type="hidden" name="next_page" value="Module_linkease.asp">
        <input type="hidden" name="group_id" value="">
        <input type="hidden" name="modified" value="0">
        <input type="hidden" name="action_mode" value="">
        <input type="hidden" name="action_script" value="">
        <input type="hidden" name="action_wait" value="8">
        <input type="hidden" name="first_time" value="">
        <input type="hidden" name="preferred_lang" id="preferred_lang" value="<% nvram_get("preferred_lang"); %>">
        <input type="hidden" name="SystemCmd" onkeydown="onSubmitCtrl(this, ' Refresh ')" value="">
        <input type="hidden" name="firmver" value="<% nvram_get("firmver"); %>">
        <input type="hidden" id="linkease_enable" name="linkease_enable"
            value='<% dbus_get_def("linkease_enable", "0"); %>' />
        <table class="content" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="17">&nbsp;</td>
                <td valign="top" width="202">
                    <div id="mainMenu"></div>
                    <div id="subMenu"></div>
                </td>
                <td valign="top">
                    <div id="tabMenu" class="submenuBlock"></div>
                    <table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="left" valign="top">
                                <table width="760px" border="0" cellpadding="5" cellspacing="0" bordercolor="#6b8fa3"
                                    class="FormTitle" id="FormTitle">
                                    <tr>
                                        <td bgcolor="#4D595D" colspan="3" valign="top">
                                            <div>&nbsp;</div>
                                            <div class="formfonttitle">易有云2.0（LinkEase）跨平台文件同步</div>
                                            <div style="float:right; width:15px; height:25px;margin-top:-20px">
                                                <img id="return_btn" onclick="reload_Soft_Center();" align="right"
                                                    style="cursor:pointer;position:absolute;margin-left:-30px;margin-top:-25px;"
                                                    title="返回软件中心" src="/images/backprev.png"
                                                    onMouseOver="this.src='/images/backprevclick.png'"
                                                    onMouseOut="this.src='/images/backprev.png'"></img>
                                            </div>
                                            <div style="margin-left:5px;margin-top:10px;margin-bottom:10px"><img
                                                    src="/images/New_ui/export/line_export.png"></div>
                                            <div class="SimpleNote">
                                                <li> LinkEase支持PC、Mac、iOS、安卓、NAS和路由器平台，iOS易有云公测中：</li>
                                                <li><i>相关文档：</i><a href="https://github.com/koolshare/linkease"
                                                        target="_blank"><em><u>[插件更新日志 ]</u></em></a></li>
                                                <li><i>注意事项：</i>请保护好你的LinkEase的账号密码，如果被其他人获知，那么下一个摄影大师可能就是你！！！</li>
                                            </div>
                                            <table width="100%" border="1" align="center" cellpadding="4"
                                                cellspacing="0" bordercolor="#6b8fa3" class="FormTable">
                                                <thead>
                                                    <tr>
                                                        <td colspan="2">LinkEase 2.0 - 高级设置</td>
                                                    </tr>
                                                </thead>
                                                <tr id="switch_tr">
                                                    <th>
                                                        <label>开关</label>
                                                    </th>
                                                    <td colspan="2">
                                                        <div class="switch_field"
                                                            style="display:table-cell;float: left;">
                                                            <label for="switch">
                                                                <input id="switch" class="switch" type="checkbox"
                                                                    style="display: none;">
                                                                <div class="switch_container">
                                                                    <div class="switch_bar"></div>
                                                                    <div class="switch_circle transition_style">
                                                                        <div></div>
                                                                    </div>
                                                                </div>
                                                            </label>
                                                        </div>
                                                        <div id="linkease_version_show"
                                                            style="padding-top:5px;margin-left:30px;margin-top:0px;float: left;">
                                                            插件版本：<% dbus_get_def("linkease_version", "未知"); %></div>
                                                        <div id="linkease_changelog_show"
                                                            style="padding-top:5px;margin-right:50px;margin-top:0px;float: right;">
                                                            <a href="https://raw.githubusercontent.com/koolshare/merlin_EasyExplorer/master/Changelog.txt"
                                                                target="_blank"><em><u>[ 更新日志 ]</u></em></a></div>
                                                    </td>
                                                </tr>
                                                <tr id="linkease_status">
                                                    <th>运行状态</th>
                                                    <td><span id="status">获取中...</span></td>
                                                </tr>
                                                <tr id="rule_update_switch">
                                                    <th>管理/帮助</th>
                                                    <td>
                                                        <a type="button" id="linkease_guide" class="linkease_btn"
                                                            target="_blank">配置中心</a>
                                                        <a type="button" id="linkease_website" class="linkease_btn"
                                                            href="" target="_blank">访问LinkEase</a>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="linkease_msg">
                                                <i>使用事项：</i>
                                                <div class="linkease_msg_info">
                                                    <li>使用易有云2.0 APP注册LinkEase账号</li>
                                                    <li>启用插件后,可使用易有云APP进行扫描局域网设备并绑定</li>
                                                    <li>点击上方"配置中心"按钮,进入易有云2.0的配置页面,并登录您的易有云2.0账号</li>
                                                    <li>登录后进入配置界面，设置设备的名称和存储路径。</li>
                                                    <li>如需恢复至旧配置则在配置界面选择相应设备</li>
                                                    <li>确保无误后点击绑定，成功后会提示已绑定。</li>
                                                    <li>至此,您可使用易有云2.0的APP或客户端选择绑定的设备并使用</li>
                                                </div>
                                            </div>
                                            <div style="margin:30px 0 10px 5px;" class="splitLine"></div>
                                            <div id="warning" style="font-size:14px;margin:20px auto;"></div>
                                            <div class="apply_gen">
                                                <input class="button_gen" id="cmdBtn"
                                                    onClick="onSubmitCtrl(this, ' Refresh ')" type="button"
                                                    value="提交" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="10" align="center" valign="top"></td>
            </tr>
        </table>
    </form>
    <div id="footer"></div>
    <div id="OverlayMask" class="popup_bg">
        <div align="center">
            <iframe src="" frameborder="0" scrolling="no" id="popupframe" width="400" height="400"
                allowtransparency="true" style="margin-top:150px;"></iframe>
        </div>
    </div>
</body>
<script type="text/javascript">
<!--[if !IE]> -->
        jQuery.noConflict();
    (function ($) {
        var i = 0;
    })(jQuery);
<!--< ![endif]-- >
</script>

</html>
