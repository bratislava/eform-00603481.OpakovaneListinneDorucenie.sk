<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#xa0;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:egonp="http://schemas.gov.sk/form/00603481.OpakovaneListinneDorucenie.sk/1.4"
	exclude-result-prefixes="egonp">
	<xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd"
		doctype-public="-//W3C//DTD HTML 4.01//EN" indent="no" omit-xml-declaration="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<title>Rozhodnutie - doručenie do vlastných rúk</title>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<meta name="language" content="sk-SK" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/jquery-ui.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/jquery.multiselect.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/jquery.multiselect.filter.css"
					rel="stylesheet" type="text/css" />
				<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/base.css"
					rel="stylesheet" type="text/css" />
				<link href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/ego.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/treeselect.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/chosentree.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Styles/p_upvs.css"
					rel="stylesheet" type="text/css" />
				<link
					href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400italic,bold,600&amp;subset=latin,latin-ext"
					rel="stylesheet" type="text/css" />
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery-migrate.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.mask.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery-ui.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.dataTables.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery-ui-timepicker-addon.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.multiselect.filter.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.multiselect.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.validate.min.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.validate.customRules.js"
					type="text/javascript"></script>
				<script src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/ego.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.form.plugins.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/ego.statusDialog.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.chosentree.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/jquery.treeselect.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/fillerSaver.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/wrapper.js"
					type="text/javascript"></script>
				<script
					src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Scripts/p_upvs.js"
					type="text/javascript"></script>
				<script type="text/javascript"> var projectType = 'UPVS'; <xsl:text
						disable-output-escaping="yes">
								$(function (){
				  $("textarea").each(function () {
				   this.style.height = (this.scrollHeight)+'px';
				  });
				});
					/* <![CDATA[ */
		$.validator.addMethod
(
"SenderPropertyRegistrationNumberRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^\d{1,10}$/));
}
);

$.validator.addMethod
(
"SenderBuildingNumberRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^.{1,20}$/));
}
);

$.validator.addMethod
(
"SenderPostalCodeRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^.{1,12}$/));
}
);

$.validator.addMethod
(
"IcoRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^\d{8}$|^\d{12}$/));
}
);

$.validator.addMethod
(
"SuffixRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^\d{4,5}$/));
}
);

$.validator.addMethod
(
"RecipientPropertyRegistrationNumberRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^\d{1,10}$/));
}
);

$.validator.addMethod
(
"RecipientBuildingNumberRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^.{1,20}$/));
}
);

$.validator.addMethod
(
"RecipientPostalCodeRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^.{1,12}$/));
}
);

$.validator.addMethod
(
"RecipientPropertyRegistrationNumberPORegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^\d{1,10}$/));
}
);

$.validator.addMethod
(
"RecipientBuildingNumberPORegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
if (value.length == 0) { return true; }
return value.match(new RegExp(/^$|^.{1,20}$/));
}
);

$.validator.addMethod
(
"RecipientPostalCodePORegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^.{1,12}$/));
}
);


		$.validator.addMethod
(
"CheckSenderPropertyAndBuildingNumber",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
var SupisneVal = $("#SenderPropertyRegistrationNumber").val();
var OrientacneVal = $("#SenderBuildingNumber").val();

if (SupisneVal == '' && OrientacneVal == '')
    return false;
else
    return true;


}
);

$.validator.addMethod
(
"CheckRecipientPropertyAndBuildingNumber",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
var element_id = "RecipientPropertyRegistrationNumber";
var element_idOrientacne = "RecipientBuildingNumber";
var index = $("[id^='" + element_id + "']").index(element);
var SupisneVal = $("[id^='" + element_id + "']").eq(index).val();
var OrientacneVal = $("[id^='" + element_idOrientacne + "']").eq(index).val();

if (SupisneVal == '' && OrientacneVal == '')
    return false;
else
    return true;

}
);

$.validator.addMethod
(
"CheckRecipientPropertyAndBuildingNumberPO",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
var element_id = "RecipientPropertyRegistrationNumberPO";
var element_idOrientacne = "RecipientBuildingNumberPO";
var index = $("[id^='" + element_id + "']").index(element);
var SupisneVal = $("[id^='" + element_id + "']").eq(index).val();
var OrientacneVal = $("[id^='" + element_idOrientacne + "']").eq(index).val();

if (SupisneVal == '' && OrientacneVal == '')
    return false;
else
    return true;


}
);


		
		
		function GetExternalResourceIndex(resourcetype) {
  switch (resourcetype) {
    case 3:
      return 'form.10.OLD.sk.xsd';
      break;
    case 4:
      return 'form.10.OLD.sb.xslt';
      break;
    case 7:
      return 'form.10.OLD.html.xslt';
      break;
    case 12:
      return 'form.10.OLD.fo.xsl';
      break;
    default:
      return null;
  }
  return null;
}
function GetExternalResource(resourcetype, index) {
  switch (resourcetype) {
    case 3:
      if (index == null || index =='form.10.OLD.sk.xsd') return 'form.10.sk.xsd';
      break;
    case 4:
      if (index == null || index =='form.10.OLD.sb.xslt') return 'form.10.sb.xslt';
      break;
    case 7:
      if (index == null || index =='form.10.OLD.html.xslt') return 'form.10.html.xslt';
      break;
    case 12:
      if (index == null || index =='form.10.OLD.fo.xsl') return 'form.10.fo.xsl';
      break;
    default:
      return null;
  }
  return null;
}

		function SetDefaultValue(key, value) {
  if (value == '' || key == '') {
    return;
	}
}
function GetDefaultValue() {
  var retString = '';
  return retString;
}

				function InitConditionalRules(context, sid) {
			if (sid == null) {

			
			
			function ShowHideSectionLabel(sectionId, show) {
    var section = $('#' + sectionId);

    if (section.length > 0) {
        SectionLabel = section.find('.headercorrection');

        if (SectionLabel.length > 0) {
            if (show) {
                SectionLabel.show();
            }
            else {
                SectionLabel.hide();
            }
        }
    }

    parent.postMessage("CONTENT_CHANGED", '*');
}


$("#addSectionlayoutRow5037").live("click", function () {
    ShowHideSectionLabel('layoutRow5037', false);
});

$("#removeSectionlayoutRow5037").live("click", function () {
    ShowHideSectionLabel('layoutRow5037', true);
});


$("#addSectionlayoutRow5040").live("click", function () {
    //ShowHideSectionLabel('layoutRow5040', false);
    parent.postMessage("CONTENT_CHANGED", '*');
});

$("#removeSectionlayoutRow5040").live("click", function () {
    //ShowHideSectionLabel('layoutRow5040', true);
    parent.postMessage("CONTENT_CHANGED", '*');
});


$(window).bind("load", function () {
    ShowHideSectionLabel('layoutRow5037', true);
    ShowHideSectionLabel('layoutRow5040', true);
});



$(window).bind("load", function () {
    // Uprava nazvu pola
    $(".fieldLabel").css('line-height', '16px');

    // Uprava info ikony
    $(".info").css('background', 'url(https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Images/info.png) 0 0 no-repeat');
/*
    // Uprava farby buttonov
    $(".ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default").css({
        'background' : '50% 50% repeat-x #00823b !important', 
        'border' : '#00823b solid 1px !important'
    });

    // Uprava farby buttonov
    $(".ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover, .ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus").css({
        'border' : '#08b255 solid 1px !important'
    });

    // Uprava farby buttonov
    $(".button:hover, .lookupbutton:hover, .ui-slider-handle ui-state-default ui-corner-all ui-state-hover").css({
        'background-color' : '#08b255 !important', 
        'border' : '#08b255 solid 1px'
    });

    // Uprava farby buttonov
    $(".ui-dialog").css({
        'background' : '#00823b !important'
    });
*/

     // Uprava layoutRow
    $(".layoutRow").css({
        'margin' : '0 0 0 0 !important'
    });
	
	$(".layoutRow").css('margin', '0px 0px 0px 0px');
	

// Uprava cell
    $(".cell").css({
        'margin' : '0 0 0 5px !important'
    });
	
	$(".cell").css('margin', '0px 0px 0px 5px');
	
	$(".infoIcon").hide();

// Uprava lookupbutton
    $(".lookupbutton").css("cssText", "padding: 4px 1px 4px 1px !important;" );
    //$(".lookupbutton").css("cssText", "font-size: 0.60em !important;");

});


//SwitchSections({ '[name|="SubjectTypeFOPOOVM"]:eq(0)': ['#layoutRow5026'], '[name|="SubjectTypeFOPOOVM"]:eq(1)': ['#layoutRow5030'], '[name|="SubjectTypeFOPOOVM"]:eq(2)': ['#layoutRow5057'] }, 'layoutColumn5475', false);


// ShowHide SubjectTypeFOPO

(context == null ? $('form') : context).find("[name|='SubjectTypeFOPO']").live('click', function () {
    var elementType = $(this).prop('tagName');
    var FO = "Fyzická osoba";
    var PO = "Právnická osoba";

    if (elementType == "INPUT") {
        var hodnotaCislenika = $(this).val();
        var nadradenaSekcia = $(this).closest("div[id^='layoutRow5025']");
        var foSekcia = nadradenaSekcia.find("div[id^='layoutRow5026']");
        var poSekcia = nadradenaSekcia.find("div[id^='layoutRow5030']");

        if (hodnotaCislenika == FO) {
            foSekcia.removeClass("hiddenSection");
            foSekcia.ToggleValidators(false);
            poSekcia.addClass("hiddenSection");
            poSekcia.ToggleValidators(true);
        } else if (hodnotaCislenika == PO) {
            foSekcia.addClass("hiddenSection");																		
            foSekcia.ToggleValidators(true);
            poSekcia.removeClass("hiddenSection");
            poSekcia.ToggleValidators(false);
        }

        parent.postMessage("CONTENT_CHANGED", '*');
    }
});

$(window).bind('load', function () {
    var nadradenaSekcia = $("div[id^='layoutRow5025']");

    nadradenaSekcia.each(function () {
        var radioOsoba = $(this).find("[name|='SubjectTypeFOPO']");
        var foSekcia = $(this).find("div[id^='layoutRow5026']");
        var poSekcia = $(this).find("div[id^='layoutRow5030']");

        if (radioOsoba.eq(0).is(':checked')) {
            foSekcia.removeClass("hiddenSection");
            foSekcia.ToggleValidators(false);
            poSekcia.addClass("hiddenSection");
            poSekcia.ToggleValidators(true);
        }
        else if (radioOsoba.eq(1).is(':checked')) {
            foSekcia.addClass("hiddenSection");
            foSekcia.ToggleValidators(true);
            poSekcia.removeClass("hiddenSection");
            poSekcia.ToggleValidators(false);
        }
        else {
            foSekcia.addClass("hiddenSection");
            foSekcia.ToggleValidators(true);
            poSekcia.addClass("hiddenSection");
            poSekcia.ToggleValidators(true);
        }

        parent.postMessage("CONTENT_CHANGED", '*');
    });
});

(context == null ? $('form') : context).find("[id^='addSectionlayoutRow5025']").live('click', function () {
    var nadradenaSekcia = $("div[id^='layoutRow5025']:last");
    var foSekcia = nadradenaSekcia.find("div[id^='layoutRow5026']");
    var poSekcia = nadradenaSekcia.find("div[id^='layoutRow5030']");

    foSekcia.addClass("hiddenSection");
    foSekcia.ToggleValidators(true);
    poSekcia.addClass("hiddenSection");
    poSekcia.ToggleValidators(true);

    parent.postMessage("CONTENT_CHANGED", '*');
});


// Vynechane schovane polia s prednastavenou hodnotou
function ClearFormNew(element) {
    $(element).find(':input').each(function () {
        if (this.id == 'IdentifierTypeCodelistCode' || this.id == 'IdentifierTypeItemCode' || this.id == 'IdentifierTypeItemName' || this.id == 'RecipientAfixPrefixCodelistCode' || this.id == 'RecipientAfixPrefixItemCode' || this.id == 'RecipientAfixPostfixCodelistCode' || this.id == 'RecipientAfixPostfixItemCode' || this.id == 'RecipientMunicipalityCodelistCode' || this.id == 'RecipientMunicipalityItemCode' || this.id == 'RecipientMunicipalityItemName' || this.id == 'RecipientPostalCountryCodelistCode' || this.id == 'RecipientMunicipalityCodelistCodePO' || this.id == 'RecipientMunicipalityItemCodePO' || this.id == 'RecipientMunicipalityItemNamePO' || this.id == 'RecipientPostalCountryCodelistCodePO') {
            // Odlozene pre pripadnu akciu
        }
        else {
            switch (this.type) {
                case 'password':
                case 'select-multiple':
                case 'select-one':
                case 'text':
                case 'textarea':
                    $(this).val('');
                    break;
                case 'checkbox':
                case 'radio':
                    this.checked = false;
            }
        }
    });
}


$("#clearForm").unbind("click");

// Nefunguje override, zavolat vlastnyClearFormNew
$("#clearForm").click(function () {
    ClearFormNew(this.form);
});


$(window).bind("load", function () {
    $('[id|=RecipientPostalCountryItemName]').each(function () {
        var ItemNameElement = $(this);
        var parent = $(this).closest("[id^='layoutRow5025']");

        if (parent.length != 0) {
            var ItemNameCode = parent.find("[id|='RecipientPostalCountryItemCode']");

            if (parent.length != 0) {
                if (ItemNameElement.val() == '') {
                    ItemNameElement.val('Slovenská republika');
                    ItemNameCode.val('703');
                }
            }
        }
    });

    $('[id|=RecipientPostalCountryCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000086');
        }
    });

    $('[id|=RecipientPostalCountryItemNamePO]').each(function () {
        var ItemNameElement = $(this);
        var parent = $(this).closest("[id^='layoutRow5025']");

        if (parent.length != 0) {
            var ItemNameCode = parent.find("[id|='RecipientPostalCountryItemCodePO']");

            if (parent.length != 0) {
                if (ItemNameElement.val() == '') {
                    ItemNameElement.val('Slovenská republika');
                    ItemNameCode.val('703');
                }
            }
        }
    });

    $('[id|=RecipientPostalCountryCodelistCodePO]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000086');
        }
    });

    $('[id|=RecipientAfixPrefixCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000062');
        }
    });

    $('[id|=RecipientAfixPostfixCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000063');
        }
    });

    if ($("#IdentifierTypeCodelistCode").val() == '') {
        $("#IdentifierTypeCodelistCode").val('CL004001');
    }

    if ($("#IdentifierTypeItemCode").val() == '') {
        $("#IdentifierTypeItemCode").val('7');
    }

    if ($("#IdentifierTypeItemName").val() == '') {
        $("#IdentifierTypeItemName").val('IČO (Identifikačné číslo organizácie)');
    }

    if ($("#TelephoneTypeCodelistCode").val() == '') {
        $("#TelephoneTypeCodelistCode").val('CL004005');
    }

    if ($("#TelephoneTypeItemCode").val() == '') {
        $("#TelephoneTypeItemCode").val('1');
    }

    if ($("#TelephoneTypeItemName").val() == '') {
        $("#TelephoneTypeItemName").val('Pevná sieť');
    }

    $('[name|="SubjectTypeFOPO"]').unbind('change');
    $('[name|="SubjectTypeFOPO"]').on('change', function () {
        $('[id|=RecipientPostalCountryCodelistCode]').each(function () {
            var CodelistCodeElement = $(this);

            if (CodelistCodeElement.val() == '') {
                CodelistCodeElement.val('CL000086');
            }
        });

        $('[id|=RecipientPostalCountryCodelistCodePO]').each(function () {
            var CodelistCodeElement = $(this);

            if (CodelistCodeElement.val() == '') {
                CodelistCodeElement.val('CL000086');
            }
        });

        $('[id|=RecipientAfixPrefixCodelistCode]').each(function () {
            var CodelistCodeElement = $(this);

            if (CodelistCodeElement.val() == '') {
                CodelistCodeElement.val('CL000062');
            }
        });

        $('[id|=RecipientAfixPostfixCodelistCode]').each(function () {
            var CodelistCodeElement = $(this);

            if (CodelistCodeElement.val() == '') {
                CodelistCodeElement.val('CL000063');
            }
        });
    });
});

(context == null ? $('form') : context).find("[id^='addSectionlayoutRow5025']").live('click', function () {
    $('[id|=RecipientPostalCountryItemName]').each(function () {
        var ItemNameElement = $(this);
        var parent = $(this).closest("[id^='layoutRow5025']");

        if (parent.length != 0) {
            var ItemNameCode = parent.find("[id|='RecipientPostalCountryItemCode']");

            if (parent.length != 0) {
                if (ItemNameElement.val() == '') {
                    ItemNameElement.val('Slovenská republika');
                    ItemNameCode.val('703');
                }
            }
        }
    });

    $('[id|=RecipientPostalCountryCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000086');
        }
    });

    $('[id|=RecipientPostalCountryItemNamePO]').each(function () {
        var ItemNameElement = $(this);
        var parent = $(this).closest("[id^='layoutRow5025']");

        if (parent.length != 0) {
            var ItemNameCode = parent.find("[id|='RecipientPostalCountryItemCodePO']");

            if (parent.length != 0) {
                if (ItemNameElement.val() == '') {
                    ItemNameElement.val('Slovenská republika');
                    ItemNameCode.val('703');
                }
            }
        }
    });

    $('[id|=RecipientPostalCountryCodelistCodePO]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000086');
        }
    });

    $('[id|=RecipientAfixPrefixCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000062');
        }
    });

    $('[id|=RecipientAfixPostfixCodelistCode]').each(function () {
        var CodelistCodeElement = $(this);

        if (CodelistCodeElement.val() == '') {
            CodelistCodeElement.val('CL000063');
        }
    });
});


$(window).bind("load", function () {
    var infoDialog = function () {
        var infoIcon = $(this);
        var modal = infoIcon.find(".dialog-modal");
        modal.dialog({
            position: {
                my: "right bottom",
                at: "left top",
                of: infoIcon,
                offset: "20 20"
            },
            minHeight: 0,
            open: function () {
                modal.css('display', 'inline');
            },
            close: function (event) {
                var target = $(event.target);
                target.dialog('destroy');
                target.appendTo(modal);
            }
        });
    };

    $('form').find(".info").unbind('mouseover');
    $('form').find(".info").click(infoDialog);
});



$("[id^='addSectionlayoutRow']").live('click', function () {
    var infoDialog = function () {
        var infoIcon = $(this);
        var modal = infoIcon.find(".dialog-modal");
        modal.dialog({
            position: {
                my: "right bottom",
                at: "left top",
                of: infoIcon,
                offset: "20 20"
            },
            minHeight: 0,
            open: function () {
                modal.css('display', 'inline');
            },
            close: function (event) {
                var target = $(event.target);
                target.dialog('destroy');
                target.appendTo(modal);
            }
        });
    };

    (context == null ? $('form') : context).find(".info").unbind('mouseover');
    (context == null ? $('form') : context).find(".info").click(infoDialog);
});


$(window).bind("load", function () {
    function InitDatePickerDateFormatNEW() {
        $(".datepickerISO").datepicker({
            dateFormat: 'yy-mm-dd',
            onSelect: function () {
                $(this).focusout();
            }
        });

        var datePickers = $(".datepicker");
        datePickers.datepicker({
            dateFormat: 'dd.mm.yy',
            onSelect: function () {
                $(this).focusout();
            }
        });

        datePickers.each(function () {
            if (this.value) {
                if (this.value.indexOf('-') != -1) {
                    var dateParts = this.value.split('-');
                    var day = parseInt(dateParts[2], 10);
                    var month = parseInt(dateParts[1], 10);
                    var year = parseInt(dateParts[0], 10);

                    if (day < 10) {
                        day = "0" + day;
                    }
                    if (month < 10) {
                        month = "0" + month;
                    }

                    this.value = day + "." + month + "." + year;
                }
            }
        });
    }

    function InitDatePickerAutoCorrectSKDateFormat() {
        $(".datepicker").live('change', function () {
            var date = this.value.split('.');

            if (date.length == 3) {
                var day = ('0' + (date[0])).slice(-2);
                var month = ('0' + (date[1])).slice(-2);
                var year = date[2];

                this.value = day + '.' + month + '.' + year;
            }
        });
    }

    InitDatePickerDateFormatNEW();
    InitDatePickerAutoCorrectSKDateFormat();
});


// Pre opakovatelne ekcie

$('[name|="SubjectTypeFOPO"]').on('change', function () {
    var parent = $(this).closest("[id^='layoutRow5025']");

    if (parent.length != 0) {
        var Prefix = parent.find("[id|='RecipientAfixPrefixItemName']");
        var Postfix = parent.find("[id|='RecipientAfixPostfixItemName']");
        var CountryFO = parent.find("[id|='RecipientPostalCountryItemName']");
        var CountryPO = parent.find("[id|='RecipientPostalCountryItemNamePO']");

        Prefix.keydown(function (data) {
            if (data.which == 8 || data.which == 9 || data.which == 46) {
                //
            }
            else {
                data.preventDefault();
            }
        });

        Prefix.keyup(function (data) {
            if ($(this).val() == '') {
                parent.find("[id|='RecipientAfixPrefixItemCode']").val('');
            }
        });


        Postfix.keydown(function (data) {
            if (data.which == 8 || data.which == 9 || data.which == 46) {
                //
            }
            else {
                data.preventDefault();
            }
        });

        Postfix.keyup(function (data) {
            if ($(this).val() == '') {
                parent.find("[id|='RecipientAfixPostfixItemCode']").val('');
            }
        });

        CountryFO.keydown(function (data) {
            if (data.which == 8 || data.which == 9 || data.which == 46) {
                //
            }
            else {
                data.preventDefault();
            }
        });

        CountryFO.keyup(function (data) {
            if ($(this).val() == '') {
                parent.find("[id|='RecipientPostalCountryItemCode']").val('');
            }
        });


        CountryPO.keydown(function (data) {
            if (data.which == 8 || data.which == 9 || data.which == 46) {
                //
            }
            else {
                data.preventDefault();
            }
        });

        CountryPO.keyup(function (data) {
            if ($(this).val() == '') {
                parent.find("[id|='RecipientPostalCountryItemCodePO']").val('');
            }
        });
    }
});

$(window).bind("load", function () {
    $("[id^='layoutRow5025']").each(function () {
        var parent = $(this);

        if (parent.length != 0) {
            var Prefix = parent.find("[id|='RecipientAfixPrefixItemName']");
            var Postfix = parent.find("[id|='RecipientAfixPostfixItemName']");
            var CountryFO = parent.find("[id|='RecipientPostalCountryItemName']");
            var CountryPO = parent.find("[id|='RecipientPostalCountryItemNamePO']");

            Prefix.keydown(function (data) {
                if (data.which == 8 || data.which == 9 || data.which == 46) {
                    //
                }
                else {
                    data.preventDefault();
                }
            });

            Prefix.keyup(function (data) {
                if ($(this).val() == '') {
                    parent.find("[id|='RecipientAfixPrefixItemCode']").val('');
                }
            });


            Postfix.keydown(function (data) {
                if (data.which == 8 || data.which == 9 || data.which == 46) {
                    //
                }
                else {
                    data.preventDefault();
                }
            });

            Postfix.keyup(function (data) {
                if ($(this).val() == '') {
                    parent.find("[id|='RecipientAfixPostfixItemCode']").val('');
                }
            });

            CountryFO.keydown(function (data) {
                if (data.which == 8 || data.which == 9 || data.which == 46) {
                    //
                }
                else {
                    data.preventDefault();
                }
            });

            CountryFO.keyup(function (data) {
                if ($(this).val() == '') {
                    parent.find("[id|='RecipientPostalCountryItemCode']").val('');
                }
            });


            CountryPO.keydown(function (data) {
                if (data.which == 8 || data.which == 9 || data.which == 46) {
                    //
                }
                else {
                    data.preventDefault();
                }
            });

            CountryPO.keyup(function (data) {
                if ($(this).val() == '') {
                    parent.find("[id|='RecipientPostalCountryItemCodePO']").val('');
                }
            });
        }
    });
});





			
			
			}
		}
						

		var validatorObject = null;
		
		function InitValidation() {
			validatorObject = $("#Dokument").validate({
							errorLabelContainer: $("#errorsContainer"),
				wrapper: "li",
				onkeyup: false,
				onclick: false,
		        ignore: ".disableValidators",
								rules: {
			  		HeadEmptyField :
{
maxValue: 4000.0000
},

LblSneder :
{
maxValue: 4000.0000
},

SenderStreetName :
{
required: true,
maxlength: 100
},

SenderPropertyRegistrationNumber :
{
SenderPropertyRegistrationNumberRegEx: true,
maxlength: 10,
CheckSenderPropertyAndBuildingNumber: true
},

SenderBuildingNumber :
{
SenderBuildingNumberRegEx: true,
maxlength: 20
},

SenderMunicipalityNonCodelistData :
{
required: true,
maxlength: 128
},

SenderMunicipalityCodeList :
{
maxlength: 100
},

SenderMunicipalityItemCode :
{
maxlength: 128
},

SenderMunicipalityItemName :
{
maxlength: 128
},

SenderPostalCode :
{
required: true,
SenderPostalCodeRegEx: true,
maxlength: 12
},

Title :
{
required: true,
maxlength: 255
},

SenderOrganizationUnit :
{
maxlength: 255
},

Ico :
{
required: true,
IcoRegEx: true,
maxlength: 12
},

IdentifierTypeCodelistCode :
{
maxlength: 100
},

IdentifierTypeItemCode :
{
maxlength: 128
},

IdentifierTypeItemName :
{
maxlength: 128
},

Suffix :
{
SuffixRegEx: true,
maxlength: 5
},

LblEmptySection4EmptyLine :
{
maxValue: 4000.0000
},

LblEmptySectionEmptyLine :
{
maxValue: 4000.0000
},

FileReference :
{
required: true,
maxlength: 128
},

LblVybavujeEmptyLine :
{
maxValue: 4000.0000
},

MunicipalityPlace :
{
required: true,
maxlength: 127
},

Date :
{
required: true
},


AttachmentVal :
{
maxlength: 4096
},

LblEmptySection5EmptyLine :
{
maxValue: 4000.0000
},


CreatorPersonDataEmptyLine1 :
{
maxValue: 4000.0000
},

CreatorPersonDataEmptyLine :
{
maxValue: 4000.0000
},

CreatorPersonName :
{
required: true,
maxlength: 255
},

Position :
{
required: true,
maxlength: 1023
},

CreatorPersonDataEmptyLine3 :
{
maxValue: 4000.0000
},

CreatorPersonDataEmptyLine4 :
{
maxValue: 4000.0000
},

LblEmptySection2EmptyLine :
{
maxValue: 4000.0000
},


LblEmptySection6EmptyLine :
{
maxValue: 4000.0000
},

LblRecipient :
{
maxValue: 4000.0000
},

RecipientEmpryField :
{
maxValue: 4000.0000
},

SubjectTypeFOPO :
{
required: true
},

RecipientStreetName :
{
required: true,
maxlength: 100
},

RecipientPropertyRegistrationNumber :
{
RecipientPropertyRegistrationNumberRegEx: true,
maxlength: 10,
CheckRecipientPropertyAndBuildingNumber: true
},

RecipientBuildingNumber :
{
RecipientBuildingNumberRegEx: true,
maxlength: 20
},

RecipientMunicipalityNonCodelistData :
{
required: true,
maxlength: 128
},

RecipientMunicipalityItemCode :
{
maxlength: 128
},

RecipientMunicipalityItemName :
{
maxlength: 128
},

RecipientMunicipalityCodelistCode :
{
maxlength: 100
},

RecipientPostalCode :
{
required: true,
RecipientPostalCodeRegEx: true,
maxlength: 12
},

RecipientPostalCountryItemName :
{
required: true
},

RecipientPostalCountryItemCode :
{
maxlength: 255
},

RecipientPostalCountryCodelistCode :
{
maxlength: 100
},


RecipientAfixPrefixItemCode :
{
maxlength: 256
},

RecipientAfixPrefixCodelistCode :
{
maxlength: 128
},

RecipientGivenName :
{
required: true,
maxlength: 255
},


RecipientAfixPostfixItemCode :
{
maxlength: 256
},

RecipientAfixPostfixCodelistCode :
{
maxlength: 128
},

RecipientFamilyName :
{
required: true,
maxlength: 255
},

RecipientCorporateBodyFullName :
{
required: true,
maxlength: 255
},

RecipientOrganizationUnit :
{
maxlength: 255
},

RecipientStreetNamePO :
{
required: true,
maxlength: 100
},

RecipientPropertyRegistrationNumberPO :
{
RecipientPropertyRegistrationNumberPORegEx: true,
maxlength: 10,
CheckRecipientPropertyAndBuildingNumberPO: true
},

RecipientBuildingNumberPO :
{
RecipientBuildingNumberPORegEx: true,
maxlength: 20
},

RecipientMunicipalityNonCodelistDataPO :
{
required: true,
maxlength: 128
},

RecipientMunicipalityItemCodePO :
{
maxlength: 128
},

RecipientMunicipalityItemNamePO :
{
maxlength: 128
},

RecipientMunicipalityCodelistCodePO :
{
maxlength: 100
},

RecipientPostalCodePO :
{
required: true,
RecipientPostalCodePORegEx: true,
maxlength: 12
},

RecipientPostalCountryItemNamePO :
{
required: true
},

RecipientPostalCountryItemCodePO :
{
maxlength: 256
},

RecipientPostalCountryCodelistCodePO :
{
maxlength: 100
},

LblEmptySection3EmptyLine :
{
maxValue: 4000.0000
},


LblLogoSectionEmptyLine :
{
maxValue: 4000.0000
},

Subject :
{
required: true,
maxlength: 1023
},

Rozhodnutie :
{
required: true
},

LblVyrokRozhodnutia :
{
maxValue: 4000.0000
},


LblOdovodnenie :
{
maxValue: 4000.0000
},


LblEmptySection7EmptyLine :
{
maxValue: 4000.0000
},

LblEmptySection8EmptyLine :
{
maxValue: 4000.0000
},

LblEmptySection9EmptyLine :
{
maxValue: 4000.0000
},

LblEmptySection10EmptyLine :
{
maxValue: 4000.0000
},

LblEmptySection11EmptyLine :
{
maxValue: 4000.0000
},

AdjudgementType :
{
maxlength: 127
},


ReferenceIdentifier :
{
maxlength: 2048
},

LblUcastniciKonania :
{
maxValue: 4000.0000
}
			  	},
				messages: {			
			   		HeadEmptyField :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblSneder :
{
maxValue: "Maximálna hodnota položky 'Odosielateľ' musí byť: 4000.0000"
},

SenderStreetName :
{
required: "Položka 'Ulica' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Ulica' musí byť: 100 znakov"
},

SenderPropertyRegistrationNumber :
{
maxlength: "Maximálna dĺžka položky 'Súpisné číslo' musí byť: 10 znakov",
SenderPropertyRegistrationNumberRegEx: "Položka 'Súpisné číslo' má neplatný formát",
CheckSenderPropertyAndBuildingNumber: "Aspoň jedna z položiek 'Súpisné číslo' a 'Orientačné číslo' musí byť vyplnená"
},

SenderBuildingNumber :
{
maxlength: "Maximálna dĺžka položky 'Orientačné číslo' musí byť: 20 znakov",
SenderBuildingNumberRegEx: "Položka 'Orientačné číslo' má neplatný formát"
},

SenderMunicipalityNonCodelistData :
{
required: "Položka 'Mesto' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Mesto' musí byť: 128 znakov"
},

SenderMunicipalityCodeList :
{
maxlength: "Maximálna dĺžka položky 'SenderMunicipalityCodeList' musí byť: 100 znakov"
},

SenderMunicipalityItemCode :
{
maxlength: "Maximálna dĺžka položky 'SenderMunicipalityItemCode' musí byť: 128 znakov"
},

SenderMunicipalityItemName :
{
maxlength: "Maximálna dĺžka položky 'SenderMunicipalityItemName' musí byť: 128 znakov"
},

SenderPostalCode :
{
required: "Položka 'PSČ' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'PSČ' musí byť: 12 znakov",
SenderPostalCodeRegEx: "Položka 'PSČ' má neplatný formát"
},

Title :
{
required: "Položka 'Názov' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Názov' musí byť: 255 znakov"
},

SenderOrganizationUnit :
{
maxlength: "Maximálna dĺžka položky 'Organizačná zložka' musí byť: 255 znakov"
},

Ico :
{
required: "Položka 'IČO' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'IČO' musí byť: 12 znakov",
IcoRegEx: "Položka 'IČO' má neplatný formát"
},

IdentifierTypeCodelistCode :
{
maxlength: "Maximálna dĺžka položky 'IdentifierTypeCodelistCode' musí byť: 100 znakov"
},

IdentifierTypeItemCode :
{
maxlength: "Maximálna dĺžka položky 'IdentifierTypeItemCode' musí byť: 128 znakov"
},

IdentifierTypeItemName :
{
maxlength: "Maximálna dĺžka položky 'IdentifierTypeItemName' musí byť: 128 znakov"
},

Suffix :
{
maxlength: "Maximálna dĺžka položky 'Sufix' musí byť: 5 znakov",
SuffixRegEx: "Položka 'Sufix' má neplatný formát"
},

LblEmptySection4EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySectionEmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

FileReference :
{
required: "Položka 'Číslo spisu' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Číslo spisu' musí byť: 128 znakov"
},

LblVybavujeEmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

MunicipalityPlace :
{
required: "Položka 'Miesto' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Miesto' musí byť: 127 znakov"
},

Date :
{
required: "Položka 'Dátum' musí byť vyplnená",
date: "Položka 'Dátum' má neplatný formát"
},


AttachmentVal :
{
maxlength: "Maximálna dĺžka položky 'Príloha' musí byť: 4096 znakov"
},

LblEmptySection5EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},


CreatorPersonDataEmptyLine1 :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

CreatorPersonDataEmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

CreatorPersonName :
{
required: "Položka 'Meno a priezvisko autorizujúcej osoby' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Meno a priezvisko autorizujúcej osoby' musí byť: 255 znakov"
},

Position :
{
required: "Položka 'Funkcia autorizujúcej osoby' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Funkcia autorizujúcej osoby' musí byť: 1023 znakov"
},

CreatorPersonDataEmptyLine3 :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

CreatorPersonDataEmptyLine4 :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySection2EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},


LblEmptySection6EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblRecipient :
{
maxValue: "Maximálna hodnota položky 'Adresát' musí byť: 4000.0000"
},

RecipientEmpryField :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

SubjectTypeFOPO :
{
required: "Položka 'Fyzická osoba / Právnická osoba' musí byť vyplnená"
},

RecipientStreetName :
{
required: "Položka 'Ulica' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Ulica' musí byť: 100 znakov"
},

RecipientPropertyRegistrationNumber :
{
maxlength: "Maximálna dĺžka položky 'Súpisné číslo' musí byť: 10 znakov",
RecipientPropertyRegistrationNumberRegEx: "Položka 'Súpisné číslo' má neplatný formát",
CheckRecipientPropertyAndBuildingNumber: "Aspoň jedna z položiek 'Súpisné číslo' a 'Orientačné číslo' musí byť vyplnená"
},

RecipientBuildingNumber :
{
maxlength: "Maximálna dĺžka položky 'Orientačné číslo' musí byť: 20 znakov",
RecipientBuildingNumberRegEx: "Položka 'Orientačné číslo' má neplatný formát"
},

RecipientMunicipalityNonCodelistData :
{
required: "Položka 'Mesto' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Mesto' musí byť: 128 znakov"
},

RecipientMunicipalityItemCode :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityItemCode' musí byť: 128 znakov"
},

RecipientMunicipalityItemName :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityItemName' musí byť: 128 znakov"
},

RecipientMunicipalityCodelistCode :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityCodelistCode' musí byť: 100 znakov"
},

RecipientPostalCode :
{
required: "Položka 'PSČ' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'PSČ' musí byť: 12 znakov",
RecipientPostalCodeRegEx: "Položka 'PSČ' má neplatný formát"
},

RecipientPostalCountryItemName :
{
required: "Položka 'Štát' musí byť vyplnená"
},

RecipientPostalCountryItemCode :
{
maxlength: "Maximálna dĺžka položky 'Štát ItemCode' musí byť: 255 znakov"
},

RecipientPostalCountryCodelistCode :
{
maxlength: "Maximálna dĺžka položky 'RecipientPostalCountryCodelistCode' musí byť: 100 znakov"
},


RecipientAfixPrefixItemCode :
{
maxlength: "Maximálna dĺžka položky 'Titul pred ItemCode' musí byť: 256 znakov"
},

RecipientAfixPrefixCodelistCode :
{
maxlength: "Maximálna dĺžka položky 'RecipientAfixPrefixCodelistCode' musí byť: 128 znakov"
},

RecipientGivenName :
{
required: "Položka 'Meno' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Meno' musí byť: 255 znakov"
},


RecipientAfixPostfixItemCode :
{
maxlength: "Maximálna dĺžka položky 'Titul za ItemCode' musí byť: 256 znakov"
},

RecipientAfixPostfixCodelistCode :
{
maxlength: "Maximálna dĺžka položky 'RecipientAfixPostfixCodelistCode' musí byť: 128 znakov"
},

RecipientFamilyName :
{
required: "Položka 'Priezvisko' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Priezvisko' musí byť: 255 znakov"
},

RecipientCorporateBodyFullName :
{
required: "Položka 'Názov' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Názov' musí byť: 255 znakov"
},

RecipientOrganizationUnit :
{
maxlength: "Maximálna dĺžka položky 'Organizačná zložka' musí byť: 255 znakov"
},

RecipientStreetNamePO :
{
required: "Položka 'Ulica' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Ulica' musí byť: 100 znakov"
},

RecipientPropertyRegistrationNumberPO :
{
maxlength: "Maximálna dĺžka položky 'Súpisné číslo' musí byť: 10 znakov",
RecipientPropertyRegistrationNumberPORegEx: "Položka 'Súpisné číslo' má neplatný formát",
CheckRecipientPropertyAndBuildingNumberPO: "Aspoň jedna z položiek 'Súpisné číslo' a 'Orientačné číslo' musí byť vyplnená"
},

RecipientBuildingNumberPO :
{
maxlength: "Maximálna dĺžka položky 'Orientačné číslo' musí byť: 20 znakov",
RecipientBuildingNumberPORegEx: "Položka 'Orientačné číslo' má neplatný formát"
},

RecipientMunicipalityNonCodelistDataPO :
{
required: "Položka 'Mesto' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Mesto' musí byť: 128 znakov"
},

RecipientMunicipalityItemCodePO :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityItemCode' musí byť: 128 znakov"
},

RecipientMunicipalityItemNamePO :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityItemName' musí byť: 128 znakov"
},

RecipientMunicipalityCodelistCodePO :
{
maxlength: "Maximálna dĺžka položky 'RecipientMunicipalityCodelistCode' musí byť: 100 znakov"
},

RecipientPostalCodePO :
{
required: "Položka 'PSČ' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'PSČ' musí byť: 12 znakov",
RecipientPostalCodePORegEx: "Položka 'PSČ' má neplatný formát"
},

RecipientPostalCountryItemNamePO :
{
required: "Položka 'Štát' musí byť vyplnená"
},

RecipientPostalCountryItemCodePO :
{
maxlength: "Maximálna dĺžka položky 'Štát ItemCode PO' musí byť: 256 znakov"
},

RecipientPostalCountryCodelistCodePO :
{
maxlength: "Maximálna dĺžka položky 'RecipientPostalCountryCodelistCode' musí byť: 100 znakov"
},

LblEmptySection3EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},


LblLogoSectionEmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

Subject :
{
required: "Položka 'Znenie' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky 'Znenie' musí byť: 1023 znakov"
},

Rozhodnutie :
{
required: "Položka 'Rozhodnutie' musí byť vyplnená"
},

LblVyrokRozhodnutia :
{
maxValue: "Maximálna hodnota položky 'Výrok' musí byť: 4000.0000"
},


LblOdovodnenie :
{
maxValue: "Maximálna hodnota položky 'Odôvodnenie' musí byť: 4000.0000"
},


LblEmptySection7EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySection8EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySection9EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySection10EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

LblEmptySection11EmptyLine :
{
maxValue: "Maximálna hodnota položky '&#160;' musí byť: 4000.0000"
},

AdjudgementType :
{
maxlength: "Maximálna dĺžka položky 'AdjudgementType' musí byť: 127 znakov"
},


ReferenceIdentifier :
{
maxlength: "Maximálna dĺžka položky 'ReferenceIdentifier' musí byť: 2048 znakov"
},

LblUcastniciKonania :
{
maxValue: "Maximálna hodnota položky 'Popis konania / Účastníci konania' musí byť: 4000.0000"
}	  	
			  	}
			});
	  	}
	/* ]]> */
					</xsl:text>
				</script>
				<style type="text/css">
					.PozadieLightGreen {background:#f9fff7 ;}
					.bezOkrajaBezPozadiaHlavicky {border:0px;background:none;}
		.bezOkrajaBezPozadiaHlavicky > .caption {border:0px;background:none !important;}
					.dolava8px {position:relative;left:-8px;}
					.bezHlavicky > .caption {border:0px;background:none !important;}
		.PozadieLightBlue {background:#f6fcfe ;}
					.PozadieLightRedParent {background:#ffeaea ;}
					.PozadieLightRed {background:#fff7f7 ;}
					.tucnyText {font-weight:bold;}
					.tucnyText span {font-weight:bold;}
					.TextArea320x24pxNEW TEXTAREA { width:370px; height: 24px}
					.TextArea320x24pxNEW INPUT { width:370px; height: 24px}
					.TextArea150x24pNEWx TEXTAREA { width:150px; height: 24px}
					.TextArea150x24pxNEW INPUT { width:150px; height: 24px}
					.TextArea810x38px TEXTAREA { width:810px; height: 38px }
					.TextArea810x38px INPUT { width810px; height: 38px }
					.TextArea155x24pxNEW TEXTAREA { width:155px; height: 24px}
					.TextArea155x24pxNEW INPUT { width:155px; height: 24px}
					.TextArea812x52px TEXTAREA { width:812px; height: 38px }
					.TextArea812x52px INPUT { width:812px; height: 38px }
					.TextArea209x24px TEXTAREA { width:209px; height: 24px}
					.TextArea209x24px INPUT { width:209px; height: 24px}
					.TextBox370x26px INPUT { width:370px; }
					.hore5px {position:relative;top:-5px;}
					.TextArea300x24pxNEW TEXTAREA { width:300px; height: 24px}
					.TextArea300x24pxNEW INPUT { width:300px; height: 24px}
					.TextArea50x24pxNEW TEXTAREA { width:50px; height: 24px}
					.TextArea50x24pxNEW INPUT { width:50px; height: 24px}
					.TextArea190x24pxNEW TEXTAREA { width:190px; height: 24px}
					.TextArea190x24pxNEW INPUT { width:190px; height: 24px}
					.Znenie LABEL {display: block; float: none; text-align: center; margin: 0 auto;
		font-size: 1.2em; font-weight: bold;
					}

					.Znenie .fieldContent {text-align: center; float: none;
					width: 880px;
					display: block;
					margin-top: 10px;}

					.Znenie INPUT {min-width: 360px; text-align: center;}
					.TextArea812x38pxNEW TEXTAREA { width:812px; height: 38px }
					.TextArea812x38pxNEW INPUT { width:812px; height: 38px }
		.tucnyCentrovanyTextNormal {text-align:center;font-weight:bold;}
					.tucnyCentrovanyTextNormal span {font-size:0.75em !important;}
		.tucnyCentrovanyTextNormal .fieldLabel {margin: 5px 0 5px 0; width:100%}
					.TextArea812x300px TEXTAREA { width:812px; height: 300px }
					.TextArea812x300px INPUT { width:812px; height: 300px }

				</style>
			</head>
			<body>
				<noscript>
					<p class="noscript">Pre kompletnú funkčnosť aplikácie je potrebné povoliť
		JavaScript</p>
				</noscript>
				<div id="errorsContainerDiv" class="errorsContainerDiv">
					<ul id="errorsContainer" class="errorsContainer">
						<li />
					</ul>
				</div>
				<form id="Dokument" action="">
					<div id="main" class="layoutMain ui-widget-content">

						<xsl:for-each select="/egonp:Dokument/egonp:SecSender">
							<div id="layoutRow5020"
								class="layoutRow ui-tabs ui-widget-content   PozadieLightGreen nocaption "
								title="">
								<input type="hidden" name="SecSender" />
								<div id="layoutRowContentlayoutRow5020" class="columns">

									<div id="layoutColumn5468" class="column first">

										<div id="layoutCell7512" class="cell  tucnyText">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">Odosielateľ </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7511" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7519" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecSender/egonp:SecSenderName">
												<div id="layoutRow5022"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden" name="SecSenderName" />
													<div id="layoutRowContentlayoutRow5022"
														class="columns">

														<div id="layoutColumn5472"
															class="column first">

															<div id="layoutCell7520"
																class="cell  TextArea810x38px">

																<label class="fieldLabel" title=""
																	for="Title">
																	<xsl:text
																		disable-output-escaping="yes">Názov </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<textarea id="Title"
																		name="Title" title=""
																		class="xsd_string textArea "
																		maxlength="255" cols="100"
																		rows="5" disabled="disabled">
																		<xsl:if
																			test="boolean(./*[name() = 'Title']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:choose>
																			<xsl:when
																				test="./*[name() = 'Title']"><xsl:value-of
																					select="./*[name() = 'Title']" /></xsl:when>
																			<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
																		</xsl:choose>
																	</textarea>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_D3FCB7B8 {
		font-family:
																					'Verdana';font-size:
		16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">Uveďte
		úplný a presný názov orgánu, ktorý rozhodnutie vydáva (ako je vedený
																						Štatistickým
		úradom SR
																						v Registri
		organizácií). </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

										<div id="layoutCell7521" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecSender/egonp:SecSenderOrganizationUnit">
												<div id="layoutRow5023"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden"
														name="SecSenderOrganizationUnit" />
													<div id="layoutRowContentlayoutRow5023"
														class="columns">

														<div id="layoutColumn5473"
															class="column first">

															<div id="layoutCell7522"
																class="cell  TextArea810x38px">

																<label class="fieldLabel" title=""
																	for="SenderOrganizationUnit">
																	<xsl:text
																		disable-output-escaping="yes">Organizačná zložka </xsl:text>
																</label>
																<span class="fieldContent">
																	<textarea
																		id="SenderOrganizationUnit"
																		name="SenderOrganizationUnit"
																		title=""
																		class="xsd_string textArea "
																		maxlength="255" cols="100"
																		rows="5" disabled="disabled">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderOrganizationUnit']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:choose>
																			<xsl:when
																				test="./*[name() = 'SenderOrganizationUnit']"><xsl:value-of
																					select="./*[name() = 'SenderOrganizationUnit']" /></xsl:when>
																			<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
																		</xsl:choose>
																	</textarea>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_D3FCB7B8 {
		font-family:
																					'Verdana';font-size:
		16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">V prípade,
		že rozhodnutie vydáva konkrétna organizačná zložka, môžete uviesť jej
																						úplný
		a presný názov. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

										<div id="layoutCell7692" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecSender/egonp:SecSenderIdentifierSuffix">
												<div id="layoutRow5069"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden"
														name="SecSenderIdentifierSuffix" />
													<div id="layoutRowContentlayoutRow5069"
														class="columns">

														<div id="layoutColumn5547"
															class="column first"
															style="width:220px;">

															<div id="layoutCell7693"
																class="cell  TextArea150x24pxNEW">

																<label class="fieldLabel" title=""
																	for="Ico">
																	<xsl:text
																		disable-output-escaping="yes">IČO </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input id="Ico" name="Ico"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="12" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'Ico']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'Ico']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'Ico']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A8B3B40B {
		font-family: 'Arial';font-size: 14.67px; }
																					.s_489786FB {
		font-family: 'Times New Roman';font-size: 16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A8B3B40B">Uveďte
		identifikátor v zmysle zákona č. 272/2015 Z. z. o registri právnických
																						osôb,
		podnikateľov a
																						orgánov
		verejnej moci.  Uveďte v tvare bez medzier. </span>
																					<span
																						class="s_489786FB"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7694" class="cell ">

																<label class="fieldLabel" title=""
																	for="IdentifierTypeCodelistCode"
																	style="display: none">
		IdentifierTypeCodelistCode </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="IdentifierTypeCodelistCode"
																		name="IdentifierTypeCodelistCode"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="100" size="190"
																		disabled="disabled" alt=""
																		value="CL004001">
																		<xsl:if
																			test="boolean(./*[name() = 'IdentifierTypeCodelistCode']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'IdentifierTypeCodelistCode']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'IdentifierTypeCodelistCode']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7695" class="cell ">

																<label class="fieldLabel" title=""
																	for="IdentifierTypeItemCode"
																	style="display: none">
		IdentifierTypeItemCode </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="IdentifierTypeItemCode"
																		name="IdentifierTypeItemCode"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="128" size="190"
																		disabled="disabled" alt=""
																		value="7">
																		<xsl:if
																			test="boolean(./*[name() = 'IdentifierTypeItemCode']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'IdentifierTypeItemCode']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'IdentifierTypeItemCode']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7696" class="cell ">

																<label class="fieldLabel" title=""
																	for="IdentifierTypeItemName"
																	style="display: none">
		IdentifierTypeItemName </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="IdentifierTypeItemName"
																		name="IdentifierTypeItemName"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="128" size="190"
																		disabled="disabled" alt=""
																		value="IČO (Identifikačné číslo organizácie)">
																		<xsl:if
																			test="boolean(./*[name() = 'IdentifierTypeItemName']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'IdentifierTypeItemName']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'IdentifierTypeItemName']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div id="layoutColumn5548" class="column "
															style="width:200px;">

															<div id="layoutCell7697"
																class="cell  TextArea150x24pxNEW">

																<label class="fieldLabel" title=""
																	for="Suffix">
																	<xsl:text
																		disable-output-escaping="yes">Sufix </xsl:text>
																</label>
																<span class="fieldContent">
																	<input id="Suffix" name="Suffix"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="5" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'Suffix']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'Suffix']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'Suffix']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A8B3B40B {
		font-family: 'Arial';font-size: 14.67px; }
																					.s_D3FCB7B8 {
		font-family: 'Verdana';font-size: 16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A8B3B40B">Uveďte
		päťmiestne alebo štvormiestne číslo. Súčasť identifikátora elektronickej
																						schránky
		subjektu v
																						konkrétnom
		právnom postavení, ak bol pri zriadení schránky pridelený. Uvádza sa iba
																						v prípade,
																						ak
																						má subjekt
		pre jeden identifikátor osoby (IČO) zriadených
																						viacero
		elektronických
																						schránok
		v rôznych právnych postaveniach alebo ak sa jedná o nezapísanú
																						organizačnú
		zložku orgánu verejnej moci. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

										<div id="layoutCell7510" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecSender/egonp:SecSenderAdressStreetAndNumber">
												<div id="layoutRow5019"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden"
														name="SecSenderAdressStreetAndNumber" />
													<div id="layoutRowContentlayoutRow5019"
														class="columns">

														<div id="layoutColumn5465"
															class="column first"
															style="width:440px;">

															<div id="layoutCell7506"
																class="cell  TextArea320x24pxNEW">

																<label class="fieldLabel" title=""
																	for="SenderStreetName">
																	<xsl:text
																		disable-output-escaping="yes">Ulica </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input id="SenderStreetName"
																		name="SenderStreetName"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="100" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderStreetName']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderStreetName']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderStreetName']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_D3FCB7B8 {
		font-family:
																					'Verdana';font-size:
		16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">Uveďte
		názov ulice, kde orgán, ktorý rozhodnutie vydáva, sídli. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div id="layoutColumn5466" class="column "
															style="width:220px;">

															<div id="layoutCell7507"
																class="cell  TextArea150x24pxNEW">

																<label class="fieldLabel" title=""
																	for="SenderPropertyRegistrationNumber">
																	<xsl:text
																		disable-output-escaping="yes">Súpisné číslo </xsl:text>
																</label>
																<span class="fieldContent">
																	<input
																		id="SenderPropertyRegistrationNumber"
																		name="SenderPropertyRegistrationNumber"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="10" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderPropertyRegistrationNumber']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderPropertyRegistrationNumber']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderPropertyRegistrationNumber']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_A73DE0BF {
		font-family:
																					'Arial';font-size:
		14.6666666666667px; }
																					.s_D3FCB7B8 {
		font-family: 'Verdana';font-size: 16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">Môžete
		uviesť</span>
																					<span
																						class="s_A73DE0BF"> </span>
																					<span
																						class="s_C1A2E899">unikátne
		číslo pridelené budove v rámci katastrálneho územia. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div id="layoutColumn5467" class="column "
															style="width:190px;">

															<div id="layoutCell7508"
																class="cell  TextArea150x24pxNEW">

																<label class="fieldLabel" title=""
																	for="SenderBuildingNumber">
																	<xsl:text
																		disable-output-escaping="yes">Orientačné číslo </xsl:text>
																</label>
																<span class="fieldContent">
																	<input id="SenderBuildingNumber"
																		name="SenderBuildingNumber"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="20" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderBuildingNumber']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderBuildingNumber']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderBuildingNumber']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A4F101E {
		font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																					.s_A0B393FA {
		font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A4F101E">Uveďte
		unikátne číslo pridelené budove v rámci ulice. </span>
																					<span
																						class="s_A0B393FA"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

										<div id="layoutCell7513" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecSender/egonp:SecSenderPostalCodeMunicipality">
												<div id="layoutRow5021"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden"
														name="SecSenderPostalCodeMunicipality" />
													<div id="layoutRowContentlayoutRow5021"
														class="columns">

														<div id="layoutColumn5470"
															class="column first"
															style="width:220px;">

															<div id="layoutCell7518"
																class="cell  TextArea150x24pxNEW">

																<label class="fieldLabel" title=""
																	for="SenderPostalCode">
																	<xsl:text
																		disable-output-escaping="yes">PSČ </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input id="SenderPostalCode"
																		name="SenderPostalCode"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="12" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderPostalCode']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderPostalCode']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderPostalCode']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_D3FCB7B8 {
		font-family:
																					'Verdana';font-size:
		16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">Uveďte
		poštové smerovacie číslo obce/mesta bez medzier. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div id="layoutColumn5469" class="column "
															style="width:440px;">

															<div id="layoutCell7514"
																class="cell  TextArea320x24pxNEW">

																<label class="fieldLabel" title=""
																	for="SenderMunicipalityNonCodelistData">
																	<xsl:text
																		disable-output-escaping="yes">Mesto </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input
																		id="SenderMunicipalityNonCodelistData"
																		name="SenderMunicipalityNonCodelistData"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="128" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderMunicipalityNonCodelistData']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderMunicipalityNonCodelistData']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderMunicipalityNonCodelistData']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A4F101E {
		font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																					.s_A0B393FA {
		font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A4F101E">Uveďte
		názov obce/mesta. </span>
																					<span
																						class="s_A0B393FA"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7515" class="cell ">

																<label class="fieldLabel" title=""
																	for="SenderMunicipalityCodeList"
																	style="display: none">
		SenderMunicipalityCodeList </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="SenderMunicipalityCodeList"
																		name="SenderMunicipalityCodeList"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="100" size="190"
																		disabled="disabled" alt=""
																		value="CL000025">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderMunicipalityCodeList']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderMunicipalityCodeList']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderMunicipalityCodeList']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7516" class="cell ">

																<label class="fieldLabel" title=""
																	for="SenderMunicipalityItemCode"
																	style="display: none">
		SenderMunicipalityItemCode </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="SenderMunicipalityItemCode"
																		name="SenderMunicipalityItemCode"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="128" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderMunicipalityItemCode']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderMunicipalityItemCode']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderMunicipalityItemCode']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7517" class="cell ">

																<label class="fieldLabel" title=""
																	for="SenderMunicipalityItemName"
																	style="display: none">
		SenderMunicipalityItemName </label>
																<span class="fieldContent"
																	style="display: none">
																	<input
																		id="SenderMunicipalityItemName"
																		name="SenderMunicipalityItemName"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="128" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'SenderMunicipalityItemName']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'SenderMunicipalityItemName']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'SenderMunicipalityItemName']" /></xsl:attribute></xsl:if>
																	</input>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div id="layoutColumn5471" class="column "
															style="width:190px;">

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection9">
							<div id="layoutRow5061"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection9" />
								<div id="layoutRowContentlayoutRow5061" class="columns">

									<div id="layoutColumn5536" class="column first">

										<div id="layoutCell7662" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecHandled">
							<div id="layoutRow5035"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecHandled" />
								<div id="layoutRowContentlayoutRow5035" class="columns">

									<div id="layoutColumn5496" class="column first"
										style="width:195px;">

										<div id="layoutCell7571" class="cell  TextArea155x24pxNEW">

											<label class="fieldLabel" title="" for="FileReference">
												<xsl:text disable-output-escaping="yes">Číslo spisu </xsl:text>
												<em>*</em>
											</label>
											<span class="fieldContent">
												<input id="FileReference" name="FileReference"
													title="" type="text" class="xsd_string textBox "
													maxlength="128" size="190" disabled="disabled"
													alt="" value="">
													<xsl:if
														test="boolean(./*[name() = 'FileReference']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'FileReference']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'FileReference']" /></xsl:attribute></xsl:if>
												</input>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Uveďte
		identifikačné číslo spisu, konania alebo inú registratúrnu značku. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div id="layoutColumn5498" class="column " style="width:461px;">

										<div id="layoutCell7573" class="cell  TextArea155x24pxNEW">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div id="layoutColumn5500" class="column " style="width:195px;">

										<div id="layoutCell7575" class="cell  TextArea155x24pxNEW">

											<label class="fieldLabel" title=""
												for="MunicipalityPlace">
												<xsl:text disable-output-escaping="yes">Miesto </xsl:text>
												<em>*</em>
											</label>
											<span class="fieldContent">
												<input id="MunicipalityPlace"
													name="MunicipalityPlace" title="" type="text"
													class="xsd_string textBox " maxlength="127"
													size="190" disabled="disabled" alt="" value="">
													<xsl:if
														test="boolean(./*[name() = 'MunicipalityPlace']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'MunicipalityPlace']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'MunicipalityPlace']" /></xsl:attribute></xsl:if>
												</input>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_C1A2E899 { font-family:
		'Arial';font-size: 14.6666666666667px;color: #00B050; }
																.s_D3FCB7B8 { font-family:
		'Verdana';font-size: 16px; } </style>
															<p class="p_6AAD5060">
																<span class="s_C1A2E899">Uveďte
																	názov obce/mesta vydania
		rozhodnutia. </span>
																<span class="s_D3FCB7B8"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7576" class="cell  TextArea155x24pxNEW">

											<label class="fieldLabel" title="" for="Date">
												<xsl:text disable-output-escaping="yes">Dátum </xsl:text>
												<em>*</em>
											</label>
											<span class="fieldContent">
												<input alt="" id="Date" name="Date" title=""
													type="text"
													class="xsd_date date datepicker Date_internal"
													value="" maxlength="14" size="160"
													disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'Date']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'Date']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'Date']" /></xsl:attribute></xsl:if>
												</input>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Z kalendára
		vyberte deň, mesiac a rok vydania rozhodnutia. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecLogo">
							<div id="layoutRow5051"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecLogo" />
								<div id="layoutRowContentlayoutRow5051" class="columns">

									<div id="layoutColumn5527" class="column first"
										style="width:340px;">

										<div id="layoutCell7644" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div id="layoutColumn5463" class="column " style="width:300px;">

										<div id="layoutCell7504" class="cell ">

											<span class="fieldContent">
												<img
													src="data:image/jpg;base64,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"
													alt="Logo" title="" />
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection4">
							<div id="layoutRow5024"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection4" />
								<div id="layoutRowContentlayoutRow5024" class="columns">

									<div id="layoutColumn5474" class="column first">

										<div id="layoutCell7524" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecRozhodnutie">
							<div id="layoutRow5052"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecRozhodnutie" />
								<div id="layoutRowContentlayoutRow5052" class="columns">

									<div id="layoutColumn5522" class="column first">

										<div id="layoutCell7632" class="cell  Znenie">

											<label class="fieldLabel" title="" for="Subject">
												<xsl:text disable-output-escaping="yes">Znenie </xsl:text>
												<em>*</em>
											</label>
											<span class="fieldContent">
												<input id="Subject" name="Subject" title=""
													type="text" class="xsd_string textBox "
													maxlength="1023" size="190" disabled="disabled"
													alt="" value="ROZHODNUTIE ">
													<xsl:if
														test="boolean(./*[name() = 'Subject']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'Subject']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'Subject']" /></xsl:attribute></xsl:if>
												</input>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_D3FCB7B8 { font-family:
		'Verdana';font-size: 16px; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Vpíšte úplné
		a presné znenie veľkými písmenami, napríklad ROZHODNUTIE alebo ROZKAZ. </span>
																<span class="s_D3FCB7B8"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7639" class="cell  TextArea812x38pxNEW">

											<label class="fieldLabel" title="" for="Rozhodnutie"
												style="display: none">Rozhodnutie <em>*</em></label>
											<span class="fieldContent">
												<textarea id="Rozhodnutie" name="Rozhodnutie"
													title="" class="xsd_string textArea " cols="100"
													rows="5" disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'Rozhodnutie']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when test="./*[name() = 'Rozhodnutie']"><xsl:value-of
																select="./*[name() = 'Rozhodnutie']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Vpíšte úplný
		a presný názov rozhodnutia v zmysle osobitných právnych predpisov, na
																	základe ktorých
																	príslušný orgán pri vydaní
		rozhodnutia postupoval. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection10">
							<div id="layoutRow5062"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection10" />
								<div id="layoutRowContentlayoutRow5062" class="columns">

									<div id="layoutColumn5537" class="column first">

										<div id="layoutCell7664" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecUcastniciKonania">
							<div id="layoutRow5068"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecUcastniciKonania" />
								<div id="layoutRowContentlayoutRow5068" class="columns">

									<div id="layoutColumn5546" class="column first">

										<div id="layoutCell7689"
											class="cell  tucnyCentrovanyTextNormal">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">Popis konania / Účastníci konania </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7690" class="cell  TextArea812x300px">

											<label class="fieldLabel" title=""
												for="UcastniciKonania" style="display: none">Popis
		konania / Účastníci konania </label>
											<span class="fieldContent">
												<textarea id="UcastniciKonania"
													name="UcastniciKonania" title=""
													class="xsd_string textArea " cols="100" rows="5"
													disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'UcastniciKonania']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when
															test="./*[name() = 'UcastniciKonania']"><xsl:value-of
																select="./*[name() = 'UcastniciKonania']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_C1A2E899 { font-family:
		'Arial';font-size: 14.6666666666667px;color: #00B050; }
																.s_D3FCB7B8 { font-family:
		'Verdana';font-size: 16px; } </style>
															<p class="p_6AAD5060">
																<span class="s_C1A2E899">Uveďte
		identifikačné údaje všetkých účastníkov konania (napr. meno, priezvisko,
																	dátum narodenia,
																	rodné číslo, adresu trvalého
		pobytu a pod.) a stručne popíšte samotné konanie, aby bolo
																	zrejmé, v akej veci sa vydáva. </span>
																<span class="s_D3FCB7B8"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection">
							<div id="layoutRow5034"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection" />
								<div id="layoutRowContentlayoutRow5034" class="columns">

									<div id="layoutColumn5495" class="column first">

										<div id="layoutCell7569" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecVyrokRozhodnutia">
							<div id="layoutRow5053"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecVyrokRozhodnutia" />
								<div id="layoutRowContentlayoutRow5053" class="columns">

									<div id="layoutColumn5523" class="column first">

										<div id="layoutCell7634"
											class="cell  tucnyCentrovanyTextNormal">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">Výrok </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7637" class="cell  TextArea812x300px">

											<label class="fieldLabel" title=""
												for="VyrokRozhodnutia" style="display: none">Výrok </label>
											<span class="fieldContent">
												<textarea id="VyrokRozhodnutia"
													name="VyrokRozhodnutia" title=""
													class="xsd_string textArea " cols="100" rows="5"
													disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'VyrokRozhodnutia']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when
															test="./*[name() = 'VyrokRozhodnutia']"><xsl:value-of
																select="./*[name() = 'VyrokRozhodnutia']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Uveďte text
		výroku rozhodnutia vo veci samej, z ktorého budú zrejmé priznané
																	oprávnenia, povinnosti,
		aplikované právne ustanovenia,
																	lehota na plnenie a pod. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection7">
							<div id="layoutRow5055"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection7" />
								<div id="layoutRowContentlayoutRow5055" class="columns">

									<div id="layoutColumn5525" class="column first">

										<div id="layoutCell7641" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecOdovodnenie">
							<div id="layoutRow5054"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecOdovodnenie" />
								<div id="layoutRowContentlayoutRow5054" class="columns">

									<div id="layoutColumn5524" class="column first">

										<div id="layoutCell7636"
											class="cell  tucnyCentrovanyTextNormal">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">Odôvodnenie </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7638" class="cell  TextArea812x300px">

											<label class="fieldLabel" title="" for="Odovodnenie"
												style="display: none">Odôvodnenie </label>
											<span class="fieldContent">
												<textarea id="Odovodnenie" name="Odovodnenie"
													title="" class="xsd_string textArea " cols="100"
													rows="5" disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'Odovodnenie']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when test="./*[name() = 'Odovodnenie']"><xsl:value-of
																select="./*[name() = 'Odovodnenie']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Uveďte text
		odôvodnenia výroku rozhodnutia, ktorý zhodnotí skutkový stav, vyjadrenia
																	účastníkov konania,
																	zhrnie dokazovanie, zdôvodní
		posúdenie právneho stavu veci a pod.). </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection8">
							<div id="layoutRow5056"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection8" />
								<div id="layoutRowContentlayoutRow5056" class="columns">

									<div id="layoutColumn5526" class="column first">

										<div id="layoutCell7643" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecPoucenie">
							<div id="layoutRow5045"
								class="layoutRow ui-tabs ui-widget-content   bezHlavicky PozadieLightBlue "
								title="">
								<input type="hidden" name="SecPoucenie" />
								<div class="caption ui-widget-header">
									<div class="headercorrection" title="Poučenie">Poučenie </div>
									<span class="arrow ui-icon ui-icon-carat-1-n"></span>
								</div>
								<div id="layoutRowContentlayoutRow5045" class="columns">

									<div id="layoutColumn5514" class="column first">

										<div id="layoutCell7613" class="cell  TextArea812x52px">

											<label class="fieldLabel" title="" for="Poucenie"
												style="display: none">Poučenie </label>
											<span class="fieldContent">
												<textarea id="Poucenie" name="Poucenie" title=""
													class="xsd_string textArea " cols="100" rows="5"
													disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'Poucenie']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when test="./*[name() = 'Poucenie']"><xsl:value-of
																select="./*[name() = 'Poucenie']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Zadajte text
		poučenia rozhodnutia, ktorý bude obsahovať informáciu o prípustnosti
																	alebo neprípustnosti
																	podať opravný prostriedok,
																	v akej lehote, akému orgánu
		a pod.. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
								<div id="repetitionCommandslayoutRow5045" class="sectionPager">
									<xsl:if test="position() != last()"><xsl:attribute name="style"><xsl:text>display:none;</xsl:text></xsl:attribute></xsl:if>
								</div>
							</div>
						</xsl:for-each>

						<xsl:if test="normalize-space(/egonp:Dokument/egonp:SecPoucenie) = ''">
							<xsl:if test="/egonp:Dokument/egonp:SecPoucenie/@notInFormData">
								<script type="text/javascript">$(document).ready(function () {
		initRepetitionSection(0, 1, 'layoutRow5045') })</script>
							</xsl:if>
						</xsl:if>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection2">
							<div id="layoutRow5044"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection2" />
								<div id="layoutRowContentlayoutRow5044" class="columns">

									<div id="layoutColumn5513" class="column first">

										<div id="layoutCell7611" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecAttachment">
							<div id="layoutRow5037"
								class="layoutRow ui-tabs ui-widget-content   bezHlavicky PozadieLightBlue "
								title="">
								<input type="hidden" name="SecAttachment" />
								<div class="caption ui-widget-header">
									<div class="headercorrection" title="Príloha">Príloha </div>
									<span class="arrow ui-icon ui-icon-carat-1-n"></span>
								</div>
								<div id="layoutRowContentlayoutRow5037" class="columns">

									<div id="layoutColumn5502" class="column first">

										<div id="layoutCell7584" class="cell ">

											<xsl:for-each
												select="/egonp:Dokument/egonp:SecAttachment/egonp:SecAttachmentInner">
												<div id="layoutRow5038"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
													title="">
													<input type="hidden" name="SecAttachmentInner" />
													<div id="layoutRowContentlayoutRow5038"
														class="columns">

														<div id="layoutColumn5503"
															class="column first"
															style="width:294px;">

															<div id="layoutCell7585"
																class="cell  TextArea209x24px">

																<label class="fieldLabel" title=""
																	for="AttachmentVal">
																	<xsl:text
																		disable-output-escaping="yes">Príloha </xsl:text>
																</label>
																<span class="fieldContent">
																	<input id="AttachmentVal"
																		name="AttachmentVal"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="4096" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'AttachmentVal']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'AttachmentVal']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'AttachmentVal']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_C1A2E899 {
		font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																					.s_D3FCB7B8 {
		font-family:
																					'Verdana';font-size:
		16px; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_C1A2E899">Môžete
		vpísať číselný údaj predstavujúci počet priložených dokumentov, príklad:
																						2 prílohy. </span>
																					<span
																						class="s_D3FCB7B8"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
												</div>
											</xsl:for-each>

											<div class="clear"> </div>
										</div>

										<div id="layoutCell7583" class="cell  TextArea812x52px">

											<label class="fieldLabel" title="" for="AttachmentInfo">
												<xsl:text disable-output-escaping="yes">Popis prílohy </xsl:text>
											</label>
											<span class="fieldContent">
												<textarea id="AttachmentInfo" name="AttachmentInfo"
													title="" class="xsd_string textArea " cols="100"
													rows="5" disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'AttachmentInfo']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when
															test="./*[name() = 'AttachmentInfo']"><xsl:value-of
																select="./*[name() = 'AttachmentInfo']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Môžete zadať
		úplné a presné názvy priložených dokumentov, príklad: Diplom, Životopis. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
								<div id="repetitionCommandslayoutRow5037" class="sectionPager">
									<xsl:if test="position() != last()"><xsl:attribute name="style"><xsl:text>display:none;</xsl:text></xsl:attribute></xsl:if>
								</div>
							</div>
						</xsl:for-each>

						<xsl:if test="normalize-space(/egonp:Dokument/egonp:SecAttachment) = ''">
							<xsl:if test="/egonp:Dokument/egonp:SecAttachment/@notInFormData">
								<script type="text/javascript">$(document).ready(function () {
		initRepetitionSection(0, 1, 'layoutRow5037') })</script>
							</xsl:if>
						</xsl:if>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection5">
							<div id="layoutRow5039"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection5" />
								<div id="layoutRowContentlayoutRow5039" class="columns">

									<div id="layoutColumn5504" class="column first">

										<div id="layoutCell7587" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecCreatorPersonData">
							<div id="layoutRow5042"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecCreatorPersonData" />
								<div id="layoutRowContentlayoutRow5042" class="columns">

									<div id="layoutColumn5507" class="column first"
										style="width:436px;">

										<div id="layoutCell7594" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7593" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div id="layoutColumn5508" class="column " style="width:430px;">

										<div id="layoutCell7667" class="cell ">

											<xsl:for-each select="./egonp:CreatorPerson">
												<div id="layoutRow5064"
													class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
													title="">

													<xsl:variable name="nRowslayoutRow5064"
														select="position()" />
													<xsl:attribute name="id">layoutRow5064<xsl:if
															test="position() > 1"><xsl:text>_Repeating_</xsl:text><xsl:value-of
																select="position()-1" /></xsl:if></xsl:attribute>
													<xsl:attribute name="class">layoutRow ui-tabs
		ui-widget-content bezOkrajaBezPozadiaHlavicky nocaption <xsl:if
															test="position() > 1"><xsl:text> repeatingSection</xsl:text></xsl:if></xsl:attribute>
													<input type="hidden" name="CreatorPerson" />
													<div id="layoutRowContentlayoutRow5064"
														class="columns">

														<div id="layoutColumn5539"
															class="column first">

															<div id="layoutCell7597" class="cell ">

																<span class="fieldLabel" title="">
																	<xsl:text
																		disable-output-escaping="yes">&#160; </xsl:text>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7595"
																class="cell  TextBox370x26px hore5px">

																<label class="fieldLabel" title=""
																	for="CreatorPersonName"
																	style="width:240px;">
																	<xsl:text
																		disable-output-escaping="yes">Meno a priezvisko autorizujúcej osoby </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input id="CreatorPersonName"
																		name="CreatorPersonName"
																		title="" type="text"
																		class="xsd_string textBox "
																		maxlength="255" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'CreatorPersonName']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'CreatorPersonName']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'CreatorPersonName']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A4F101E {
		font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																					.s_A0B393FA {
		font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A4F101E">Uveďte
		meno a priezvisko osoby oprávnenej rozhodnutie podpísať alebo zapečatiť. </span>
																					<span
																						class="s_A0B393FA"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7596"
																class="cell  TextBox370x26px">

																<label class="fieldLabel" title=""
																	for="Position">
																	<xsl:text
																		disable-output-escaping="yes">Funkcia autorizujúcej osoby </xsl:text>
																	<em>*</em>
																</label>
																<span class="fieldContent">
																	<input id="Position"
																		name="Position" title=""
																		type="text"
																		class="xsd_string textBox "
																		maxlength="1023" size="190"
																		disabled="disabled" alt=""
																		value="">
																		<xsl:if
																			test="boolean(./*[name() = 'Position']/@isReadOnly = 'true')"><xsl:attribute
																				name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																		<xsl:if
																			test="./*[name() = 'Position']"><xsl:attribute
																				name="value"><xsl:value-of
																					select="./*[name() = 'Position']" /></xsl:attribute></xsl:if>
																	</input>
																	<div class="info">
																		<div class="dialog-modal"
																			title="Nápoveda">
																			<p>
																				<style
																					type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					body {
		font-family: 'Verdana';font-size: 16px; }
																					.p_6AAD5060 {
		margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																					.s_A4F101E {
		font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																					.s_A0B393FA {
		font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																				<p
																					class="p_6AAD5060">
																					<span
																						class="s_A4F101E">Uveďte
		pracovné zaradenie osoby oprávnenej rozhodnutie podpísať alebo
																						zapečatiť,
		príklad: riaditeľ
																						odboru
		verejného obstarávania. </span>
																					<span
																						class="s_A0B393FA"></span>
																				</p>
																			</p>
																		</div>
																	</div>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7598" class="cell ">

																<span class="fieldLabel" title="">
																	<xsl:text
																		disable-output-escaping="yes">&#160; </xsl:text>
																</span>
																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
													<div id="repetitionCommandslayoutRow5064"
														class="sectionPager">
														<xsl:if test="position() != last()"><xsl:attribute
																name="style"><xsl:text>display:none;</xsl:text></xsl:attribute></xsl:if>
													</div>
												</div>
											</xsl:for-each>

											<xsl:if
												test="normalize-space(./egonp:CreatorPerson) = ''">
												<xsl:if test="./egonp:CreatorPerson/@notInFormData">
													<script type="text/javascript">$(document).ready(function
		() { initRepetitionSection(1, 99, 'layoutRow5064') })</script>
												</xsl:if>
											</xsl:if>

											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection3">
							<div id="layoutRow5050"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection3" />
								<div id="layoutRowContentlayoutRow5050" class="columns">

									<div id="layoutColumn5521" class="column first">

										<div id="layoutCell7625" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecDorucujeSa">
							<div id="layoutRow5048"
								class="layoutRow ui-tabs ui-widget-content   bezHlavicky PozadieLightRedParent "
								title="">
								<input type="hidden" name="SecDorucujeSa" />
								<div class="caption ui-widget-header">
									<div class="headercorrection" title="Doručuje sa">Doručuje sa </div>
									<span class="arrow ui-icon ui-icon-carat-1-n"></span>
								</div>
								<div id="layoutRowContentlayoutRow5048" class="columns">

									<div id="layoutColumn5518" class="column first"
										style="width:901px;">

										<div id="layoutCell7525" class="cell ">

											<xsl:for-each select="./egonp:Recipient">
												<div id="layoutRow5025"
													class="layoutRow ui-tabs ui-widget-content   dolava8px PozadieLightRed nocaption "
													title="">

													<xsl:variable name="nRowslayoutRow5025"
														select="position()" />
													<xsl:attribute name="id">layoutRow5025<xsl:if
															test="position() > 1"><xsl:text>_Repeating_</xsl:text><xsl:value-of
																select="position()-1" /></xsl:if></xsl:attribute>
													<xsl:attribute name="class">layoutRow ui-tabs
		ui-widget-content dolava8px PozadieLightRed nocaption <xsl:if
															test="position() > 1"><xsl:text> repeatingSection</xsl:text></xsl:if></xsl:attribute>
													<input type="hidden" name="Recipient" />
													<div id="layoutRowContentlayoutRow5025"
														class="columns">

														<div id="layoutColumn5475"
															class="column first">

															<div id="layoutCell7526"
																class="cell  tucnyText">

																<span class="fieldLabel" title="">
																	<xsl:text
																		disable-output-escaping="yes">Adresát </xsl:text>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7527" class="cell ">

																<span class="fieldLabel" title="">
																	<xsl:text
																		disable-output-escaping="yes">&#160; </xsl:text>
																</span>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7528" class="cell ">

																<fieldset>
																	<legend></legend>
																	<div
																		class="xsd_string radioButtonList ">
																		<span>
																			<input
																				id="SubjectTypeFOPO"
																				name="SubjectTypeFOPO"
																				class="xsd_string radioButtonList "
																				title=""
																				type="radio"
																				alt="Fyzická osoba"
																				value="Fyzická osoba"
																				disabled="disabled">
																				<xsl:attribute
																					name="name">
		SubjectTypeFOPO</xsl:attribute>
																				<xsl:if
																					test="boolean(./*[name() = 'SubjectTypeFOPO']/@isReadOnly = 'true')"><xsl:attribute
																						name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																				<xsl:if
																					test="./*[name() = 'SubjectTypeFOPO']='Fyzick&#225; osoba'"><xsl:attribute
																						name="checked">
		checked</xsl:attribute></xsl:if>
																			</input>
																			<label
																				for="SubjectTypeFOPO"
																				class="optionLabel">Fyzická
		osoba</label>
																		</span>
																		<span>
																			<input
																				id="SubjectTypeFOPOPostfixList1"
																				name="SubjectTypeFOPO"
																				class="xsd_string radioButtonList "
																				title=""
																				type="radio"
																				alt="Právnická osoba"
																				value="Právnická osoba"
																				disabled="disabled">
																				<xsl:attribute
																					name="name">
		SubjectTypeFOPO</xsl:attribute>
																				<xsl:if
																					test="boolean(./*[name() = 'SubjectTypeFOPO']/@isReadOnly = 'true')"><xsl:attribute
																						name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																				<xsl:if
																					test="./*[name() = 'SubjectTypeFOPO']='Pr&#225;vnick&#225; osoba'"><xsl:attribute
																						name="checked">
		checked</xsl:attribute></xsl:if>
																			</input>
																			<label
																				for="SubjectTypeFOPOPostfixList1"
																				class="optionLabel">Právnická
		osoba</label>
																		</span>
																	</div>
																</fieldset>
																<div class="clear"> </div>
															</div>

															<div id="layoutCell7529" class="cell ">

																<xsl:for-each
																	select="./egonp:RecipientFO">
																	<div id="layoutRow5026"
																		class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																		title="">
																		<input type="hidden"
																			name="RecipientFO" />
																		<div
																			id="layoutRowContentlayoutRow5026"
																			class="columns">

																			<div
																				id="layoutColumn5476"
																				class="column first">

																				<div
																					id="layoutCell7543"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientNameFO">
																						<div
																							id="layoutRow5029"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientNameFO" />
																							<div
																								id="layoutRowContentlayoutRow5029"
																								class="columns">

																								<div
																									id="layoutColumn5483"
																									class="column first"
																									style="width:180px;">

																									<div
																										id="layoutCell7546"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPrefixCodelistCode"
																											style="display: none">
		RecipientAfixPrefixCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientAfixPrefixCodelistCode"
																												name="RecipientAfixPrefixCodelistCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												readonly="readonly"
																												alt=""
																												value="CL000062">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPrefixCodelistCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPrefixCodelistCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPrefixCodelistCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7544"
																										class="cell  TextArea50x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPrefixItemName">
																											<xsl:text
																												disable-output-escaping="yes">Titul pred </xsl:text>
																										</label>
																										<div
																											class="fieldContent">
																											<input
																												id="RecipientAfixPrefixItemName"
																												type="text"
																												disabled="disabled"
																												value=""
																												alt=""
																												name="RecipientAfixPrefixItemName"
																												class="xsd_string remoteLookup  textBox turned"
																												title="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPrefixItemName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPrefixItemName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPrefixItemName']" /></xsl:attribute></xsl:if>
																											</input>
																											<span
																												class="lookupConfiguration"
																												style="display: none;">
																												<span
																													class="lookupComponentId">
		RecipientAfixPrefixItemName</span>
																												<span
																													class="fieldId">
		RecipientAfixPrefixItemCode</span>
																												<span
																													class="remoteSourceIdentifier"></span>
																												<span
																													class="remoteLookupCode">
		SUSR_0062</span>
																												<span
																													class="fieldId">
		ServiceID</span>
																											</span>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">
		Zvoľte
																																„Vybrať“,
		vpíšte konkrétny titul udelený adresátovi pred menom (príklad:
																																Bc.,
		Mgr., Ing.,
																																MUDr.,
		JUDr.), kliknite na „Hľadať“, vyberte hodnotu z číselníka a prejdite na
																																„OK“. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																											<input
																												class="LookupDetailInfo"
																												type="hidden" />
																											<div
																												title="Vyberte hodnotu"
																												class="LookupForm"
																												style="display: none;">
																												<span
																													class="lookupConfiguration"
																													style="display: none;">
																													<span
																														class="lookupComponentId">
		RecipientAfixPrefixItemName</span>
																													<span
																														class="fieldId">
		RecipientAfixPrefixItemCode</span>
																													<span
																														class="remoteSourceIdentifier"></span>
																													<span
																														class="remoteLookupCode">
		SUSR_0062</span>
																													<span
																														class="fieldId">
		ServiceID</span>
																												</span>
																												<div
																													class="tableFilter">
		Zadajte text: <input class="tableFilterText ui-corner-all" type="text" />
<input
																														class="FilterButton ui-button ui-widget ui-state-default ui-corner-all"
																														type="button"
																														value="Hľadať"
																														alt="Hľadať" />
		Ignorovať diakritiku a veľké písmená <input
																														class="tableFilterIgnoreCaseSensitive"
																														type="checkbox"
																														title="Ignorovať diakritiku a veľké písmená" />
																												</div>
																												<table
																													cellpadding="0"
																													cellspacing="0"
																													border="0"
																													class="display LookupTable">
																													<thead>
																														<tr>
																															<th>
		Kód</th>
																															<th>
		Hodnota</th>
																														</tr>
																													</thead>
																													<tbody>
																														<tr>
																															<th></th>
																															<th></th>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																										</div>

																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7545"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPrefixItemCode"
																											style="display: none">Titul
		pred ItemCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientAfixPrefixItemCode"
																												name="RecipientAfixPrefixItemCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="256"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPrefixItemCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPrefixItemCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPrefixItemCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5484"
																									class="column "
																									style="width:260px;">

																									<div
																										id="layoutCell7547"
																										class="cell  TextArea190x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientGivenName">
																											<xsl:text
																												disable-output-escaping="yes">Meno </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientGivenName"
																												name="RecipientGivenName"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="255"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientGivenName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientGivenName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientGivenName']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		krstné meno adresáta. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5486"
																									class="column "
																									style="width:260px;">

																									<div
																										id="layoutCell7551"
																										class="cell  TextArea190x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientFamilyName">
																											<xsl:text
																												disable-output-escaping="yes">Priezvisko </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientFamilyName"
																												name="RecipientFamilyName"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="255"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientFamilyName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientFamilyName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientFamilyName']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		priezvisko adresáta. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5485"
																									class="column "
																									style="width:160px;">

																									<div
																										id="layoutCell7550"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPostfixCodelistCode"
																											style="display: none">
		RecipientAfixPostfixCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientAfixPostfixCodelistCode"
																												name="RecipientAfixPostfixCodelistCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												readonly="readonly"
																												alt=""
																												value="CL000063">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPostfixCodelistCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPostfixCodelistCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPostfixCodelistCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7548"
																										class="cell  TextArea50x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPostfixItemName">
																											<xsl:text
																												disable-output-escaping="yes">Titul za </xsl:text>
																										</label>
																										<div
																											class="fieldContent">
																											<input
																												id="RecipientAfixPostfixItemName"
																												type="text"
																												disabled="disabled"
																												value=""
																												alt=""
																												name="RecipientAfixPostfixItemName"
																												class="xsd_string remoteLookup  textBox turned"
																												title="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPostfixItemName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPostfixItemName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPostfixItemName']" /></xsl:attribute></xsl:if>
																											</input>
																											<span
																												class="lookupConfiguration"
																												style="display: none;">
																												<span
																													class="lookupComponentId">
		RecipientAfixPostfixItemName</span>
																												<span
																													class="fieldId">
		RecipientAfixPostfixItemCode</span>
																												<span
																													class="remoteSourceIdentifier"></span>
																												<span
																													class="remoteLookupCode">
		SUSR_0063</span>
																												<span
																													class="fieldId">
		ServiceID</span>
																											</span>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Zvoľte
		„Vybrať“, vpíšte konkrétny titul uvedený adresátovi za priezviskom
																																(príklad:
		PhD., CSc.,
																																DrSc.),
		kliknite na „Hľadať“, vyberte hodnotu z číselníka a prejdite na „OK“. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																											<input
																												class="LookupDetailInfo"
																												type="hidden" />
																											<div
																												title="Vyberte hodnotu"
																												class="LookupForm"
																												style="display: none;">
																												<span
																													class="lookupConfiguration"
																													style="display: none;">
																													<span
																														class="lookupComponentId">
		RecipientAfixPostfixItemName</span>
																													<span
																														class="fieldId">
		RecipientAfixPostfixItemCode</span>
																													<span
																														class="remoteSourceIdentifier"></span>
																													<span
																														class="remoteLookupCode">
		SUSR_0063</span>
																													<span
																														class="fieldId">
		ServiceID</span>
																												</span>
																												<div
																													class="tableFilter">
		Zadajte text: <input class="tableFilterText ui-corner-all" type="text" />
<input
																														class="FilterButton ui-button ui-widget ui-state-default ui-corner-all"
																														type="button"
																														value="Hľadať"
																														alt="Hľadať" />
		Ignorovať diakritiku a veľké písmená <input
																														class="tableFilterIgnoreCaseSensitive"
																														type="checkbox"
																														title="Ignorovať diakritiku a veľké písmená" />
																												</div>
																												<table
																													cellpadding="0"
																													cellspacing="0"
																													border="0"
																													class="display LookupTable">
																													<thead>
																														<tr>
																															<th>
		Kód</th>
																															<th>
		Hodnota</th>
																														</tr>
																													</thead>
																													<tbody>
																														<tr>
																															<th></th>
																															<th></th>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																										</div>

																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7549"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientAfixPostfixItemCode"
																											style="display: none">Titul
		za ItemCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientAfixPostfixItemCode"
																												name="RecipientAfixPostfixItemCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="256"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientAfixPostfixItemCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientAfixPostfixItemCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientAfixPostfixItemCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																				<div
																					id="layoutCell7530"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientAdressStreetAndNumberFO">
																						<div
																							id="layoutRow5027"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientAdressStreetAndNumberFO" />
																							<div
																								id="layoutRowContentlayoutRow5027"
																								class="columns">

																								<div
																									id="layoutColumn5477"
																									class="column first"
																									style="width:440px;">

																									<div
																										id="layoutCell7531"
																										class="cell  TextArea320x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientStreetName">
																											<xsl:text
																												disable-output-escaping="yes">Ulica </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientStreetName"
																												name="RecipientStreetName"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientStreetName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientStreetName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientStreetName']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		názov ulice, kde má adresát trvalý/prechodný pobyt. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5478"
																									class="column "
																									style="width:220px;">

																									<div
																										id="layoutCell7532"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPropertyRegistrationNumber">
																											<xsl:text
																												disable-output-escaping="yes">Súpisné číslo </xsl:text>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientPropertyRegistrationNumber"
																												name="RecipientPropertyRegistrationNumber"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="10"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPropertyRegistrationNumber']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPropertyRegistrationNumber']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPropertyRegistrationNumber']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; }
																															.s_489786FB
		{
																															font-family:
		'Times New Roman';font-size: 16px; }
																															.s_D3FCB7B8
		{ font-family: 'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A0B393FA">Môžete
		uviesť</span>
																															<span
																																class="s_489786FB"> </span>
																															<span
																																class="s_A0B393FA">unikátne
		číslo pridelené budove v rámci katastrálneho územia. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5479"
																									class="column "
																									style="width:190px;">

																									<div
																										id="layoutCell7533"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientBuildingNumber">
																											<xsl:text
																												disable-output-escaping="yes">Orientačné číslo </xsl:text>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientBuildingNumber"
																												name="RecipientBuildingNumber"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="20"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientBuildingNumber']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientBuildingNumber']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientBuildingNumber']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A8B3B40B
		{ font-family: 'Arial';font-size: 14.67px; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">
		Uveďte</span>
																															<span
																																class="s_A8B3B40B"> </span>
																															<span
																																class="s_A4F101E">unikátne
		číslo pridelené budove v rámci ulice. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																				<div
																					id="layoutCell7534"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientPostalCodeMunicipalityCountryFO">
																						<div
																							id="layoutRow5028"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientPostalCodeMunicipalityCountryFO" />
																							<div
																								id="layoutRowContentlayoutRow5028"
																								class="columns">

																								<div
																									id="layoutColumn5481"
																									class="column first"
																									style="width:220px;">

																									<div
																										id="layoutCell7539"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCode">
																											<xsl:text
																												disable-output-escaping="yes">PSČ </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientPostalCode"
																												name="RecipientPostalCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="12"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCode']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		poštové smerovacie číslo obce/mesta bez medzier. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5480"
																									class="column "
																									style="width:360px;">

																									<div
																										id="layoutCell7535"
																										class="cell  TextArea300x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityNonCodelistData">
																											<xsl:text
																												disable-output-escaping="yes">Mesto </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientMunicipalityNonCodelistData"
																												name="RecipientMunicipalityNonCodelistData"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityNonCodelistData']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityNonCodelistData']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityNonCodelistData']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		názov obce/mesta. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7538"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityCodelistCode"
																											style="display: none">
		RecipientMunicipalityCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityCodelistCode"
																												name="RecipientMunicipalityCodelistCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="CL000025">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityCodelistCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityCodelistCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityCodelistCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7536"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityItemCode"
																											style="display: none">
		RecipientMunicipalityItemCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityItemCode"
																												name="RecipientMunicipalityItemCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityItemCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityItemCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityItemCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7537"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityItemName"
																											style="display: none">
		RecipientMunicipalityItemName </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityItemName"
																												name="RecipientMunicipalityItemName"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityItemName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityItemName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityItemName']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5482"
																									class="column "
																									style="width:270px;">

																									<div
																										id="layoutCell7540"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryItemName">
																											<xsl:text
																												disable-output-escaping="yes">Štát </xsl:text>
																											<em>
		*</em>
																										</label>
																										<div
																											class="fieldContent">
																											<input
																												id="RecipientPostalCountryItemName"
																												type="text"
																												disabled="disabled"
																												value=""
																												alt=""
																												name="RecipientPostalCountryItemName"
																												class="xsd_string remoteLookup RecipientPostalCountryItemName_internal textBox turned"
																												title="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryItemName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryItemName']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryItemName']" /></xsl:attribute></xsl:if>
																											</input>
																											<span
																												class="lookupConfiguration"
																												style="display: none;">
																												<span
																													class="lookupComponentId">
		RecipientPostalCountryItemName</span>
																												<span
																													class="fieldId">
		RecipientPostalCountryItemCode</span>
																												<span
																													class="remoteSourceIdentifier"></span>
																												<span
																													class="remoteLookupCode">
		SUSR_0086</span>
																												<span
																													class="fieldId">
		ServiceID</span>
																											</span>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Zvoľte
		„Vybrať“, vpíšte presný názov štátu (príklad: Slovenská republika),
																																kliknite
		na „Hľadať“,
																																vyberte
		hodnotu z číselníka a prejdite na „OK“. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																											<input
																												class="LookupDetailInfo"
																												type="hidden" />
																											<div
																												title="Vyberte hodnotu"
																												class="LookupForm"
																												style="display: none;">
																												<span
																													class="lookupConfiguration"
																													style="display: none;">
																													<span
																														class="lookupComponentId">
		RecipientPostalCountryItemName</span>
																													<span
																														class="fieldId">
		RecipientPostalCountryItemCode</span>
																													<span
																														class="remoteSourceIdentifier"></span>
																													<span
																														class="remoteLookupCode">
		SUSR_0086</span>
																													<span
																														class="fieldId">
		ServiceID</span>
																												</span>
																												<div
																													class="tableFilter">
		Zadajte text: <input class="tableFilterText ui-corner-all" type="text" />
<input
																														class="FilterButton ui-button ui-widget ui-state-default ui-corner-all"
																														type="button"
																														value="Hľadať"
																														alt="Hľadať" />
		Ignorovať diakritiku a veľké písmená <input
																														class="tableFilterIgnoreCaseSensitive"
																														type="checkbox"
																														title="Ignorovať diakritiku a veľké písmená" />
																												</div>
																												<table
																													cellpadding="0"
																													cellspacing="0"
																													border="0"
																													class="display LookupTable">
																													<thead>
																														<tr>
																															<th>
		Kód</th>
																															<th>
		Hodnota</th>
																														</tr>
																													</thead>
																													<tbody>
																														<tr>
																															<th></th>
																															<th></th>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																										</div>

																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7541"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryItemCode"
																											style="display: none">Štát
		ItemCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientPostalCountryItemCode"
																												name="RecipientPostalCountryItemCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="255"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryItemCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryItemCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryItemCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7542"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryCodelistCode"
																											style="display: none">
		RecipientPostalCountryCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientPostalCountryCodelistCode"
																												name="RecipientPostalCountryCodelistCode"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="CL000086">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryCodelistCode']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryCodelistCode']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryCodelistCode']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																			</div>

																			<div class="clear"> </div>
																		</div>
																	</div>
																</xsl:for-each>

																<div class="clear"> </div>
															</div>

															<div id="layoutCell7552" class="cell ">

																<xsl:for-each
																	select="./egonp:RecipientPO">
																	<div id="layoutRow5030"
																		class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																		title="">
																		<input type="hidden"
																			name="RecipientPO" />
																		<div
																			id="layoutRowContentlayoutRow5030"
																			class="columns">

																			<div
																				id="layoutColumn5487"
																				class="column first">

																				<div
																					id="layoutCell7553"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientCorporateBodyFullNamePO">
																						<div
																							id="layoutRow5031"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientCorporateBodyFullNamePO" />
																							<div
																								id="layoutRowContentlayoutRow5031"
																								class="columns">

																								<div
																									id="layoutColumn5488"
																									class="column first">

																									<div
																										id="layoutCell7554"
																										class="cell  TextArea810x38px">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientCorporateBodyFullName">
																											<xsl:text
																												disable-output-escaping="yes">Názov </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<textarea
																												id="RecipientCorporateBodyFullName"
																												name="RecipientCorporateBodyFullName"
																												title=""
																												class="xsd_string textArea "
																												maxlength="255"
																												cols="100"
																												rows="5"
																												disabled="disabled">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientCorporateBodyFullName']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:choose>
																													<xsl:when
																														test="./*[name() = 'RecipientCorporateBodyFullName']"><xsl:value-of
																															select="./*[name() = 'RecipientCorporateBodyFullName']" /></xsl:when>
																													<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
																												</xsl:choose>
																											</textarea>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		úplný a presný názov právnickej osoby tak, ako je uvedený v Obchodnom
																																registri
		SR, prípadne
																																v inej
		evidencii, ak sa právnická osoba nezapisuje do Obchodného registra SR. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7691"
																										class="cell  TextArea810x38px">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientOrganizationUnit">
																											<xsl:text
																												disable-output-escaping="yes">Organizačná zložka </xsl:text>
																										</label>
																										<span
																											class="fieldContent">
																											<textarea
																												id="RecipientOrganizationUnit"
																												name="RecipientOrganizationUnit"
																												title=""
																												class="xsd_string textArea "
																												maxlength="255"
																												cols="100"
																												rows="5"
																												disabled="disabled">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientOrganizationUnit']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:choose>
																													<xsl:when
																														test="./*[name() = 'RecipientOrganizationUnit']"><xsl:value-of
																															select="./*[name() = 'RecipientOrganizationUnit']" /></xsl:when>
																													<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
																												</xsl:choose>
																											</textarea>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_C1A2E899
		{ font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																															.s_D3FCB7B8
		{
																															font-family:
		'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_C1A2E899">V prípade,
		že rozhodnutie vydáva konkrétna organizačná zložka, môžete uviesť jej
																																úplný
		a presný názov. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																				<div
																					id="layoutCell7555"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientAdressStreetAndNumberPO">
																						<div
																							id="layoutRow5032"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientAdressStreetAndNumberPO" />
																							<div
																								id="layoutRowContentlayoutRow5032"
																								class="columns">

																								<div
																									id="layoutColumn5489"
																									class="column first"
																									style="width:440px;">

																									<div
																										id="layoutCell7556"
																										class="cell  TextArea320x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientStreetNamePO">
																											<xsl:text
																												disable-output-escaping="yes">Ulica </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientStreetNamePO"
																												name="RecipientStreetNamePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientStreetNamePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientStreetNamePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientStreetNamePO']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_C1A2E899
		{ font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																															.s_D3FCB7B8
		{
																															font-family:
		'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_C1A2E899">Uveďte
		názov ulice, kde má právnická osoba sídlo. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5490"
																									class="column "
																									style="width:220px;">

																									<div
																										id="layoutCell7557"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPropertyRegistrationNumberPO">
																											<xsl:text
																												disable-output-escaping="yes">Súpisné číslo </xsl:text>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientPropertyRegistrationNumberPO"
																												name="RecipientPropertyRegistrationNumberPO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="10"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPropertyRegistrationNumberPO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPropertyRegistrationNumberPO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPropertyRegistrationNumberPO']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_C1A2E899
		{ font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																															.s_D3FCB7B8
		{
																															font-family:
		'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_C1A2E899">Môžete
		uviesť unikátne číslo pridelené budove v rámci katastrálneho územia. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5491"
																									class="column "
																									style="width:190px;">

																									<div
																										id="layoutCell7558"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientBuildingNumberPO">
																											<xsl:text
																												disable-output-escaping="yes">Orientačné číslo </xsl:text>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientBuildingNumberPO"
																												name="RecipientBuildingNumberPO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="20"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientBuildingNumberPO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientBuildingNumberPO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientBuildingNumberPO']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A8B3B40B
		{ font-family: 'Arial';font-size: 14.67px; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">
		Uveďte</span>
																															<span
																																class="s_A8B3B40B"> </span>
																															<span
																																class="s_A4F101E">unikátne
		číslo pridelené budove v rámci ulice. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																				<div
																					id="layoutCell7559"
																					class="cell ">

																					<xsl:for-each
																						select="./egonp:SecRecipientPostalCodeMunicipalityCountryPO">
																						<div
																							id="layoutRow5033"
																							class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky dolava8px nocaption "
																							title="">
																							<input
																								type="hidden"
																								name="SecRecipientPostalCodeMunicipalityCountryPO" />
																							<div
																								id="layoutRowContentlayoutRow5033"
																								class="columns">

																								<div
																									id="layoutColumn5493"
																									class="column first"
																									style="width:220px;">

																									<div
																										id="layoutCell7564"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCodePO">
																											<xsl:text
																												disable-output-escaping="yes">PSČ </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientPostalCodePO"
																												name="RecipientPostalCodePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="12"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCodePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCodePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCodePO']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_A4F101E
		{ font-family: 'Arial';font-size: 14.67px;color: #00B050; }
																															.s_A0B393FA
		{ font-family: 'Times New Roman';font-size: 16px;color: #00B050; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_A4F101E">Uveďte
		poštové smerovacie číslo obce/mesta bez medzier. </span>
																															<span
																																class="s_A0B393FA"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5492"
																									class="column "
																									style="width:360px;">

																									<div
																										id="layoutCell7560"
																										class="cell  TextArea300x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityNonCodelistDataPO">
																											<xsl:text
																												disable-output-escaping="yes">Mesto </xsl:text>
																											<em>
		*</em>
																										</label>
																										<span
																											class="fieldContent">
																											<input
																												id="RecipientMunicipalityNonCodelistDataPO"
																												name="RecipientMunicipalityNonCodelistDataPO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityNonCodelistDataPO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityNonCodelistDataPO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityNonCodelistDataPO']" /></xsl:attribute></xsl:if>
																											</input>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_C1A2E899
		{ font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																															.s_D3FCB7B8
		{
																															font-family:
		'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_C1A2E899">Uveďte
		názov obce/mesta. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7563"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityCodelistCodePO"
																											style="display: none">
		RecipientMunicipalityCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityCodelistCodePO"
																												name="RecipientMunicipalityCodelistCodePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="CL000025">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityCodelistCodePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityCodelistCodePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityCodelistCodePO']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7561"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityItemCodePO"
																											style="display: none">
		RecipientMunicipalityItemCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityItemCodePO"
																												name="RecipientMunicipalityItemCodePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityItemCodePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityItemCodePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityItemCodePO']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7562"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientMunicipalityItemNamePO"
																											style="display: none">
		RecipientMunicipalityItemName </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientMunicipalityItemNamePO"
																												name="RecipientMunicipalityItemNamePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="128"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientMunicipalityItemNamePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientMunicipalityItemNamePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientMunicipalityItemNamePO']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									id="layoutColumn5494"
																									class="column "
																									style="width:270px;">

																									<div
																										id="layoutCell7565"
																										class="cell  TextArea150x24pxNEW">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryItemNamePO">
																											<xsl:text
																												disable-output-escaping="yes">Štát </xsl:text>
																											<em>
		*</em>
																										</label>
																										<div
																											class="fieldContent">
																											<input
																												id="RecipientPostalCountryItemNamePO"
																												type="text"
																												disabled="disabled"
																												value=""
																												alt=""
																												name="RecipientPostalCountryItemNamePO"
																												class="xsd_string remoteLookup RecipientPostalCountryItemNamePO_internal textBox turned"
																												title="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryItemNamePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryItemNamePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryItemNamePO']" /></xsl:attribute></xsl:if>
																											</input>
																											<span
																												class="lookupConfiguration"
																												style="display: none;">
																												<span
																													class="lookupComponentId">
		RecipientPostalCountryItemNamePO</span>
																												<span
																													class="fieldId">
		RecipientPostalCountryItemCodePO</span>
																												<span
																													class="remoteSourceIdentifier"></span>
																												<span
																													class="remoteLookupCode">
		SUSR_0086</span>
																												<span
																													class="fieldId">
		ServiceID</span>
																											</span>
																											<div
																												class="info">
																												<div
																													class="dialog-modal"
																													title="Nápoveda">
																													<p>
																														<style
																															type="text/css">
		p { margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															body
		{ font-family: 'Verdana';font-size: 16px; }
																															.p_6AAD5060
		{ margin-top: 0px;margin-bottom: 12px;line-height: 1.15; }
																															.s_C1A2E899
		{ font-family: 'Arial';font-size: 14.6666666666667px;color: #00B050; }
																															.s_D3FCB7B8
		{
																															font-family:
		'Verdana';font-size: 16px; } </style>
																														<p
																															class="p_6AAD5060">
																															<span
																																class="s_C1A2E899">Zvoľte
		„Vybrať“, vpíšte presný názov štátu (príklad: Slovenská republika),
																																kliknite
		na „Hľadať“,
																																vyberte
		hodnotu z číselníka a prejdite na „OK“. </span>
																															<span
																																class="s_D3FCB7B8"></span>
																														</p>
																													</p>
																												</div>
																											</div>
																											<input
																												class="LookupDetailInfo"
																												type="hidden" />
																											<div
																												title="Vyberte hodnotu"
																												class="LookupForm"
																												style="display: none;">
																												<span
																													class="lookupConfiguration"
																													style="display: none;">
																													<span
																														class="lookupComponentId">
		RecipientPostalCountryItemNamePO</span>
																													<span
																														class="fieldId">
		RecipientPostalCountryItemCodePO</span>
																													<span
																														class="remoteSourceIdentifier"></span>
																													<span
																														class="remoteLookupCode">
		SUSR_0086</span>
																													<span
																														class="fieldId">
		ServiceID</span>
																												</span>
																												<div
																													class="tableFilter">
		Zadajte text: <input class="tableFilterText ui-corner-all" type="text" />
<input
																														class="FilterButton ui-button ui-widget ui-state-default ui-corner-all"
																														type="button"
																														value="Hľadať"
																														alt="Hľadať" />
		Ignorovať diakritiku a veľké písmená <input
																														class="tableFilterIgnoreCaseSensitive"
																														type="checkbox"
																														title="Ignorovať diakritiku a veľké písmená" />
																												</div>
																												<table
																													cellpadding="0"
																													cellspacing="0"
																													border="0"
																													class="display LookupTable">
																													<thead>
																														<tr>
																															<th>
		Kód</th>
																															<th>
		Hodnota</th>
																														</tr>
																													</thead>
																													<tbody>
																														<tr>
																															<th></th>
																															<th></th>
																														</tr>
																													</tbody>
																												</table>
																											</div>
																										</div>

																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7566"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryItemCodePO"
																											style="display: none">Štát
		ItemCode PO </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientPostalCountryItemCodePO"
																												name="RecipientPostalCountryItemCodePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="256"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryItemCodePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryItemCodePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryItemCodePO']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																									<div
																										id="layoutCell7567"
																										class="cell ">

																										<label
																											class="fieldLabel"
																											title=""
																											for="RecipientPostalCountryCodelistCodePO"
																											style="display: none">
		RecipientPostalCountryCodelistCode </label>
																										<span
																											class="fieldContent"
																											style="display: none">
																											<input
																												id="RecipientPostalCountryCodelistCodePO"
																												name="RecipientPostalCountryCodelistCodePO"
																												title=""
																												type="text"
																												class="xsd_string textBox "
																												maxlength="100"
																												size="190"
																												disabled="disabled"
																												alt=""
																												value="CL000086">
																												<xsl:if
																													test="boolean(./*[name() = 'RecipientPostalCountryCodelistCodePO']/@isReadOnly = 'true')"><xsl:attribute
																														name="readonly">
		readonly</xsl:attribute><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if>
																												<xsl:if
																													test="./*[name() = 'RecipientPostalCountryCodelistCodePO']"><xsl:attribute
																														name="value"><xsl:value-of
																															select="./*[name() = 'RecipientPostalCountryCodelistCodePO']" /></xsl:attribute></xsl:if>
																											</input>
																										</span>
																										<div
																											class="clear"> </div>
																									</div>

																								</div>

																								<div
																									class="clear"> </div>
																							</div>
																						</div>
																					</xsl:for-each>

																					<div
																						class="clear"> </div>
																				</div>

																			</div>

																			<div class="clear"> </div>
																		</div>
																	</div>
																</xsl:for-each>

																<div class="clear"> </div>
															</div>

														</div>

														<div class="clear"> </div>
													</div>
													<div id="repetitionCommandslayoutRow5025"
														class="sectionPager">
														<xsl:if test="position() != last()"><xsl:attribute
																name="style"><xsl:text>display:none;</xsl:text></xsl:attribute></xsl:if>
													</div>
												</div>
											</xsl:for-each>

											<xsl:if test="normalize-space(./egonp:Recipient) = ''">
												<xsl:if test="./egonp:Recipient/@notInFormData">
													<script type="text/javascript">$(document).ready(function
		() { initRepetitionSection(1, 9999, 'layoutRow5025') })</script>
												</xsl:if>
											</xsl:if>

											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection6">
							<div id="layoutRow5047"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection6" />
								<div id="layoutRowContentlayoutRow5047" class="columns">

									<div id="layoutColumn5517" class="column first">

										<div id="layoutCell7618" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>
						<xsl:for-each select="/egonp:Dokument/egonp:SecForInformation">
							<div id="layoutRow5040"
								class="layoutRow ui-tabs ui-widget-content   bezHlavicky PozadieLightBlue "
								title="">
								<input type="hidden" name="SecForInformation" />
								<div class="caption ui-widget-header">
									<div class="headercorrection" title="Na vedomie">Na vedomie </div>
									<span class="arrow ui-icon ui-icon-carat-1-n"></span>
								</div>
								<div id="layoutRowContentlayoutRow5040" class="columns">

									<div id="layoutColumn5505" class="column first">

										<div id="layoutCell7589" class="cell  TextArea812x52px">

											<label class="fieldLabel" title=""
												for="ForInformationRecipient">
												<xsl:text disable-output-escaping="yes">Adresáti </xsl:text>
											</label>
											<span class="fieldContent">
												<textarea id="ForInformationRecipient"
													name="ForInformationRecipient" title=""
													class="xsd_string textArea " cols="100" rows="5"
													disabled="disabled">
													<xsl:if
														test="boolean(./*[name() = 'ForInformationRecipient']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:choose>
														<xsl:when
															test="./*[name() = 'ForInformationRecipient']"><xsl:value-of
																select="./*[name() = 'ForInformationRecipient']" /></xsl:when>
														<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
													</xsl:choose>
												</textarea>
												<div class="info">
													<div class="dialog-modal" title="Nápoveda">
														<p>
															<style type="text/css">
																p { margin-top: 0px;margin-bottom:
		12px;line-height: 1.15; }
																body { font-family:
		'Verdana';font-size: 16px; }
																.p_6AAD5060 { margin-top:
		0px;margin-bottom: 12px;line-height: 1.15; }
																.s_A4F101E { font-family:
		'Arial';font-size: 14.67px;color: #00B050; }
																.s_A0B393FA { font-family: 'Times
																New Roman';font-size: 16px;color:
		#00B050; } </style>
															<p class="p_6AAD5060">
																<span class="s_A4F101E">Ak chcete
		adresáta informovať o doručení rozhodnutia ďalším osobám na vedomie,
																	môžete zadať ich úplné
																	a presné mená a priezviská/názvy
		a adresy. </span>
																<span class="s_A0B393FA"></span>
															</p>
														</p>
													</div>
												</div>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
								<div id="repetitionCommandslayoutRow5040" class="sectionPager">
									<xsl:if test="position() != last()"><xsl:attribute name="style"><xsl:text>display:none;</xsl:text></xsl:attribute></xsl:if>
								</div>
							</div>
						</xsl:for-each>

						<xsl:if test="normalize-space(/egonp:Dokument/egonp:SecForInformation) = ''">
							<xsl:if test="/egonp:Dokument/egonp:SecForInformation/@notInFormData">
								<script type="text/javascript">$(document).ready(function () {
		initRepetitionSection(0, 1, 'layoutRow5040') })</script>
							</xsl:if>
						</xsl:if>
						<xsl:for-each select="/egonp:Dokument/egonp:SecEmptySection11">
							<div id="layoutRow5065"
								class="layoutRow ui-tabs ui-widget-content   bezOkrajaBezPozadiaHlavicky nocaption "
								title="">
								<input type="hidden" name="SecEmptySection11" />
								<div id="layoutRowContentlayoutRow5065" class="columns">

									<div id="layoutColumn5541" class="column first">

										<div id="layoutCell7670" class="cell ">

											<span class="fieldLabel" title="">
												<xsl:text disable-output-escaping="yes">&#160; </xsl:text>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7671" class="cell ">

											<label class="fieldLabel" title="" for="AdjudgementType"
												style="display: none">AdjudgementType </label>
											<span class="fieldContent" style="display: none">
												<input id="AdjudgementType" name="AdjudgementType"
													title="" type="text" class="xsd_string textBox "
													maxlength="127" size="190" disabled="disabled"
													readonly="readonly" alt="" value="">
													<xsl:if
														test="boolean(./*[name() = 'AdjudgementType']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'AdjudgementType']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'AdjudgementType']" /></xsl:attribute></xsl:if>
												</input>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7672" class="cell ">

											<label class="fieldLabel" title="" for="AdjudgementLogo"
												style="display: none">AdjudgementLogo </label>
											<span class="fieldContent" style="display: none">
												<input id="AdjudgementLogo" name="AdjudgementLogo"
													title="" type="text" class="xsd_string textBox "
													maxlength="400" size="190" disabled="disabled"
													readonly="readonly" alt="" value="">
													<xsl:if
														test="boolean(./*[name() = 'AdjudgementLogo']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if test="./*[name() = 'AdjudgementLogo']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'AdjudgementLogo']" /></xsl:attribute></xsl:if>
												</input>
											</span>
											<div class="clear"> </div>
										</div>

										<div id="layoutCell7673" class="cell ">

											<label class="fieldLabel" title=""
												for="ReferenceIdentifier" style="display: none">
		ReferenceIdentifier </label>
											<span class="fieldContent" style="display: none">
												<input id="ReferenceIdentifier"
													name="ReferenceIdentifier" title="" type="text"
													class="xsd_string textBox " maxlength="2048"
													size="190" disabled="disabled"
													readonly="readonly" alt="" value="">
													<xsl:if
														test="boolean(./*[name() = 'ReferenceIdentifier']/@isReadOnly = 'true')"><xsl:attribute
															name="readonly">readonly</xsl:attribute><xsl:attribute
															name="disabled">disabled</xsl:attribute></xsl:if>
													<xsl:if
														test="./*[name() = 'ReferenceIdentifier']"><xsl:attribute
															name="value"><xsl:value-of
																select="./*[name() = 'ReferenceIdentifier']" /></xsl:attribute></xsl:if>
												</input>
											</span>
											<div class="clear"> </div>
										</div>

									</div>

									<div class="clear"> </div>
								</div>
							</div>
						</xsl:for-each>

						<div id="buttonsPlaceholder">
							<input id="cancelForm" type="button"
								class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
								value="Zrušiť" alt="Zrušiť" accesskey="Z" />
						</div>
					</div>
					<div id="statusDialog" title="Status">
						<img id="statusLoader"
							src="https://www.slovensko.sk/static/eForm/Designer/2.0.1.18/Images/ajax-loader.png"
							alt="Čakajte prosím" />
						<p id="statusMessage" class="statusMessage"></p>
					</div>
					<div id="savedFormsContainer" class="layoutMain ui-widget-content"
						style="display:none">
						<div id="savedFormsContainerRow" class="layoutRow ui-tabs ui-widget-content"
							title="">
							<input type="hidden" name="Basic" />
							<div class="caption ui-widget-header">
								<div class="headercorrection" title="Uložené formuláre">Uložené
		formuláre</div>
								<span class="arrow ui-icon ui-icon-carat-1-n"></span>
							</div>
							<div id="layoutRowSavedForms" class="columns">
								<div id="lcolumnSavedForms" class="column first">
									<div id="lcellSavedForms" class="cell">
									</div>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</div>
					<div id="mtd_formMetaData" style="display:none">
						<span id="mtd_version">1.4</span>
						<span id="mtd_idp">18706</span>
						<span id="mtd_namespace">
		http://schemas.gov.sk/form/00603481.OpakovaneListinneDorucenie.sk/1.4</span>
					</div>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>