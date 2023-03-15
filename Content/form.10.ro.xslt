<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#xa0;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:egonp="http://schemas.gov.sk/form/00603481.OpakovaneListinneDorucenie.sk/1.3"
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
		má subjekt pre jeden identifikátor osoby (IČO) zriadených
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
										style="width:390px;">

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
													src="data:image/jpeg;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAY+0lEQVR42u1dCXhUVZYOrW339LQ9n35uQ2MMoVJvrUAIkKr3qiqVvRJRFkV22UGUTXawEVni2jraLq0ztOO0tk5r2y5tj9iOiuIyitq2+9YKIqgo2IoQFvHO+d9SdauSAGpeLcm933e/qlQqleSec8/5z3/OPbegQIzDGrIvVKkpxkZNi7zv9w/oLVakCw1Jqhij6+Eduh5lgUAlUxXzYXr5CLEyXWAoSmgO7fq9gUCU6XqEQQlUxdhSVBT7sVidzm72ZWMeCf1rCN0VPj0ekOXQYvp2N7FCnXhoijmZhL3fFnyEwQKQJWjxy6EZYnU6u9kvqagjYe90d75t/o1dilIxQqxOpzf7fYo0PfJe0udHmKZE9wAIitXp9CN2pKwa9wHpu8Kn+Y0mzH7XGKoanaZzOx+KoKnmtWJlusDoXlxeSH5/K+/3NdV41ufz/UysThcYumreyJt+TY18pSh9g2JlusDwqf3KSOhf8aZfUoxLxcp0Gd9v3Jbc/Yj3jfd7nWicIFamC4xevQxdVRHzc4SPQP1dZyhK+OqU3a8a7xYWFh4jVqYLjB49tGMJ7G3mkb8iGQvb/4nyH4IoIkYw6FeDjbIcHqlL5iRNNqaoyBjK4YH4Xg9/75+L1c2L3R8ZkUz0RJiqhrdrWnmh+/2ioqIfU2g4gOoAziVccIemRF7WNPMjep+VHYTlSJ1RfMZeS6kUY52mhJbJ8oAQFEesdu6Nbqoauss1/3ikHX0jvkHZPoNcw2Uk+JdJ6Htc4dr0cJRnCduc7nttIim8j6jlp1U5Os13UuR4sew5Mkp9FT3sIg8n7tfCBxAN0A5/DEJzhc4LVpNNpvoMe5YY1tfWVJxHv2m9rhYb1vN0hSCw+Q6yiZIkHS0kkOURkEOj0ndzcpc7r6kRW6AkcDLrrF9DPYtNHcKaVo5hZ948jY3+02w2ft18NnH9QjbukXls1D2z2JBfT2Z1i0aw4JC4/fP4WcVM+/zwM35/qEZIwYNxilL+rwBiVMkzhHb0LJq/JDN+C5nzB8jnP07C+D9VM17U1fDH7ZlwayeT4AJ9KllkzOns9CsnWAI+59VlbNaHq9mcTy5msz9qtudWbuLrjzEvZue+vZyd/dBcVr9kBOsTillWAQrB1xaoqtl84oml/yyk9h2HpmlHyXJFuaYFx1H4dhMJeQMAWNJvJ8FZ+mzLl1tmnYRfMTDOTvvleDbhyYVsxsaVtsBJwLO2rGYzN69iMz849ISiuAoy6dnFrGHZKNa7T9T6HW7I6eQb1mrFSeApxiFGcXH5vyAEQ/yuK+bfQOGmC/pQIK1N4FYaZdFxg9iI/z6PTX9zubWLZ209fIEfVBm2kPKQIpz98FxmjhhoWZekNSCgqJmv+pRgXyHd9scRkhQ0qUbvGhA17sK1JWyFFrZEibBiyZ54LtFrsmp/T1PbUAB6T1moik16bjE7/9NLrN37fYXe1oRFgGsAhqA0M4cNqNJYC2/y+8vDQtTcKCwMHEOh2kRVM9cTSt/bltAhWAjap9jPI32jbHSkks2Px9gVQ6vZrWNr2ANTatnjM+rY83Ma2Ovz69nK06tYsdLa/NfMGcZmbiJhfbjKEwWwrcFqyy0M+6/prHd5pRU9JC1BeIvNG3TxQfz8CYpkLtCU8FttmXXJEToEXj8gyuaSsNeMqmHPzGxgG5fE2WcXNrI9q5vY182nsn3NTWwfPd/rzJZVTWxeY5WlMG1hgMHXTbJ2qlcKYE1yKwCLo++fzcqMqkTIaCtB5H1FMfQuKfhjj/X9TNHDsykOfzdd8DDfxc4uHxSMskuGVLHHz6tjH17QaAl1f3NSwLtpfrWy9dxFr28n5Ti1Imp9joX4dc4tKDYWGHnPTEtAnioBXALhjLFrz7eVQE6GisA2iGa6lPD9SmiwpoefTzfzrokPEYJeRDv3kXPr2CfLGhO7GgLftbJtgadPvPfdRXFW0dvBA/T5/em5+7VL9kAg4x6dnxElmENKMOaBOay0fywFE1BEcy+o6M4fyvXq61Pk8O1g4loJnnZkHZn4a8+qZm8tjFsChODb2+GHmlCYp8lNBAK28CX6/Gk1MXbnhJoUS6D6DVZeXcfGP7EgQ5agmQ2/4zym4+9SOWCoBpd3auFLkjGBkixbWpl62vG1/aLsppHVbPPSuOXHW1Yf/k5vb8JN3DepNuH/8XsACPH51w2vZj7JVgwXD5TXkBI8Nt8y1Z5jAsIdp181geMJIvZBlM7IGBYV9T8J7Fzy0IX9D0Mw/ckHX3lmtQXmILCWVd9P6OkKcDOBxUIHdBWRwP+DlOxren3niia2wokOeCUoM6ssitcChh6Fh9akyAOkU/XMM22ewGUMKQOJaKgTsXf9BtCu/ytfgCk7sfuM+hh7aW59wrd3lOATGIA+97Ih1aynlFS4P06stRQAv+/zi+JscVOVZRk0jhYO9I6yQVdPtASEEM4zV0BKds5ry9iApoaU8LDT1CdSmnUU+frt6bs+SrH778fXsC9X2H66owVvRQA0d9Jc5ISArs9/jEAlXICrIJ8vb2QXDExTAsXO8lVOGszGP77AEpRFC3ckN/CxTRKdddt0Vl5bl1AAi7JWwzsoVe3PZ9l3U3Rzga6b+13ha44Pnlods8gZmOfdq7wRvqsAX5CC4feVOApQRqDrBSKH9qxOjRTwPpBIAIkKxxzCNJf2i7HGVWPYlBeWJpJA35ouhs/faieO8HzSc0vYkBsms+CguJ2PUMxWHIXf3zeSl5KP0XErqoy5PB3hY2GvIl+PHefVrk9XgM8vamJnhSstIskKAUsj7E0nuuDfu9vhEm4fV0NhYtRSGJ23BpTZK4tUkyKMttLBM95fafH9AIuudeCnnSVMfu/cdy6in1vAhtw4hUUnDk5kC/kagmT6GDSx+T8+X0X+HVChUzU/wtEqXvjYVUFa1HsJje9Z7e2ub0UCkbI1DbBJIJj/UFmUbVoSbxNvQGEQcj43q4ENJ2q5OM0a2IoQopRxlIXOaGTx5aMt8w1iZ8JTC61djYnnSAKNuGsGG3ztJItuho/v3ZcE2zPU5o53STDiRd7AcbXu3ct/ko97/8h04WMnIbx7imJxmPxdHu309hRgG7GAleVRS5CYJinAx79oPKgS7m22f+5Xw6q/rigNH+jpUNB80YhVP1BsWAqBWL5PRcwikzDxHCAS7kOGwH12JZGutp+ZVPXwK+hMks/ov1u62QfwGkgU7ivz7PDOC8HDouxc2TYdjK+3krCRLHIVoJqUAcJtTwHweos1G7850Bzf9uaChv2XEzaI0c/h//FxIWOKQihmymxP2C7ZpaR8P/yNogw4P6/Rvi6b8/mCCyzUUKOSvbkgnkDcHQ7wyL/fMqaGjY1WsquHVbN/UEjHCxbPkTcwOQVAIunTdhQAgsdnXEOfNTocPbBmZPUevI6/f9PiOPvd2bUWoKxwMEJPJ/WcSDvryYnX4PqKnfcBgwTo9Tj9/tkU+kIRJT45FYj8g/ISp+al8NFFg/6JfbzZH0jJF6+E7wpl7dRaVkSmGMoGggcAE4J1ASYEunlpo2X2Fac+AAL4LE0BdjmfB+FfOrjKEpj9mSZ7kH6HS07hEWHr2wQi755Qyy4iEmliVaWVaDLLqH6QAGY5TYN+HxRtJOGI2Q0xdiklsf5A739pbtyySPgsuES8T04tGfuopKR/nzyL81GeFfnUNf0l9A/V9LPN/j4PkT6InDtpUU92ULS760DqvDbftgRfX9xkJZF4BYBgdiAKabaFjvkFCf5Jqh3gw0V8Jj779+Nt0ohXFj4TiSgDmOIDUrSNS+yJ51vJ8kDR3L8V79/DJbLw9V+m1bM+gaQ7sKqIlcgL/vLYcfmRzaM/1Gb4ogn/BvP4pAP4vET4WMhNtNiDQ5UWt+AqAbh9ZPrm0M7DrgPpY5QlXQB8+XtkzpFoWkep5ZtG1rAx0cqE5XKtGD5ziFlp/Y6DMZRu+NjSxtx9iKwlNgjCTllNKp2dEDJuK8iDnoTdVNm42aV3NWeBQbN6LXw+0/cy0cinEdDsybF4+Dt8ju/FDgukhFu2hXKVAq5D4nY9HvFzZ5DwYUm85Ctca3IpUdV8tZJlCUpC03Ib9PmNsTzowz9wJaHljsjgfVslQBJpCVG5mpNV5FG61g4SV9TU77kZSSjMikFVVkYyE2RVi8NVTKmuTGQsHTzwmRwIBXIU9JWdwqd0Ifwp5D/hW1tWZU74/CJC6daTSYfpT0fp6QgdX0uclZCd8HA5gTrQxK4Jz6QSv07WprJvOigMP4gy+FyT/w+obeqtrulXnKLMV+fVZ2THHMyc7nWsD/z7HeRbkeBBiAjgF+xto3Q8QthDzSg7t9YuIn1war0VLcB67cmwBePT1nCfUgoewNGyHHMFiFX5bprYRQAymfL7h+tXXdS9Y3kT+4hQOgQMdI7HLYTQQQahHmC/Ewl8mzIzL6YLGBc0xhJ4wD5EEtmcM0fPjz9e+ynV6D/nmn4IH7voizQCJlfmrnZQ+u7DQOjZmFBYWC9Q1zJ3iESRQ1flRjmXEpnOm36QHi+Sz8ym6e9sExYJ7KYb2lodTJTwF1kHhEhSuDX7bpx8OYUve1fn3k7K59niJLCQwi5ROG5AN36TVQXAqVue8HEJlRax+z2xAn+eXMvlCqw+AzuzdmsJmhtQgcKr/O6/nipq9zULYXkFCFGreHYslmIFKF18XXZ2v2SOdkkfK2YmJg3ki9j93k1srj9PSVoBOyIIfyLLwaIMi3/YEUT6PMrvfmTdxO733gogbT3MtMvZEqeH5ODczJZ0F/fvTwULuy00qtuJFrBWYvdnBgv8lk468xQxyeL5Hj1C/5Q58y+bV7ihHwgKnMrNxRi6s0YEfyegjRJ6JVk9tA/X2WWS+HndNf/wRw9RDluY/8wRWSCHrDMLfEioGVdmCP0b1S7tC/DXRJUvWy7ITsKnK4PBh6fXcdGA1WPo9Yw0mqKmBZclzD+BP5yj2yd8f8bdADZdI9ffgDiBvZIUMb0FfwXaUTzvDw38X9JEoQDZyXIudY6uJbuKGIu8VQBfRFWJgwb6d/PlG5cI858tN3APHarh3YBzla2X1G/wLNf8IwyZUSvQfzazhKiwRmcTLYEDzA969qw40cNq3+A1fPh3A1G/+wX6zxophArjkZGUM4v7Vb8Z8dACmOt5/4/mTCLtm0U3QGv/i9NScQDOEHp1wPN43KFjXaZAvyxEpucdKlTYIxQgy6xgbVrhqHGDNwqghso0ujfXJX+Qm962rDEnq366yoT1XT+jISU5pCvhdR4RQOE4H/+jjYtA/7lRLobCVlRjOXmBNzwhhOg+nKm8AqwaJABgLhBCOKuQJITss4SepIc1JbiKDwF/Q122BP+f/UhgO1U4j45WcpGAsavUi47juh76NR8B3E316oIBzD4jiMfpNcmycTo4Qn0FjGjHK4AavpNXACQjRAiYG4zgPErH9+RCQU96CuBGCz4F/PRMoQC5MHHMfFkaF6D4o8M7XgG4EjAowIbZovY/V7iAlYNSFUD3h8d6YAHMJ3kF+Ov59UIBckQBLsFRck4BJLrFtONpYMV4gleAF8Tpn5xRgObBqRZALjHGe6AA5sO8Ajw7W2CAXFGAi9IwAO4y9oAHMP7ERwFPiERQzijA4qZYmgIEh3pRCvZbXgEemCx4gFw59j6zPsa1k6FkXUlFXccrAB1H5pnA28fVCiYwB5hA9EVEWzo3I4j7jnFjqhdh4CK+GASNE0UuIPu5ALSjQ2cTyc0F6JHPqaG06oELCA7nk0HwO0IBsqwA5ILfsw6JJLOBdD7g/ZN8HlxPj1Ij8MwuBoDZ+XJFXNQDZLkeAHxMSv8guhDbk36CihItoY6Vn7kVwY3UZOmDpXFRE5DlPMB9k1Mrg6kp9d2eFITg8CFxAYl+AGi0+Le5gg3MdgiIU9mpNYFh766Yo4TQfXwzKLQwE5FAlkJAWN4VSAWnNpOkPs1neFgWHlqcfixMAMHsRQBwwXX9ktVARNd/Qfcte3ffsOIP1vJAEK3Pt18oCkOzBQDRzVxO6SpuvurpNbMnn1zWnSqDP7TvsbF76L5M3UBFaXh2/P81Z6X5f9242fvuIFxOAIQQulUIN5CthlHp/t+DJFBrRjA0g6eEp1FH650uKBHCyVg5OG5W7eNcfh2wqoGN7T5feS/vFYBoRgIbX7r9gVCTjv5Awg1k1vzfMKKGM/9Wg4i1JJ5uGekQRg0iH+HdwI0jhBvI9KHQYegaqqb0BpiawQ6hoWmuG0ASAjdpfCqigYwdCMWVN2no/1NJKu2ZMQX4ua+iB06gJCqE6I9ZO7VWWIEM5P+xyeZT+3gf3yBKDf0u451CKRr4dx4MnkOMFHrtCzDoNfiLWx3ZE/cZaZEDsjygIQuNossr7GaRzh9DVmD9jDpBDXtZ/UMKAPaVB390vewznpI/Bxk/kDlOAFeznUctY0RI6B3zh9vQ+pemXh8jyx5UAB82NRwI1ro9AzXnmrhHpgsr4FXt39KU5pAAf+FXqHFHVq+TPyK9WniMyA94gvyfpEYQAT1190tqeGJBtoffHw4TEGnhL4wS9HDHxv24em98rDK98OP5jHQGPbyIwFyTfmXcG/Pjolikg6p+/hP3BXG3iAL5a5p5ekGuDHDQPC+APxaXNSIsFK7gewC/Zhv4tbpRXDb/CEa2IJeGpoTOcxXAxQO3ClfwvQo+YPonViVJH/uGFnNbSUlQKci1QWj0RwQIH+JdAa5r3TBbRAXfBfWD9Ll6WPoF0tYdQXMKcnWovv4adRL5OKAno4KhlCdA6ZLIFn67bB+O3ml66hXytMEewEYryOUBYoLwwDeJG8QlGw+ggEGUkB8e6MPRezPN79PjZq1XX19BHoxumhS+3nUFrhJcTGfYd60SoPBQ8f67i+JsYJDv+mVfCeNXQoML8mUcd5x0NIUpj7mgUHPcAe4VtO7pFcJuk+qFqwSR5kvx+0T4KKFlBfk2JGlAT3StTCiBal8xs4b6CwIPCEuQKnzcAILjdumgT1Mit5SXl/+wIB9HcfGAflRGvoVXAkQHN42sSdzYLcx+k3WFfWvhg+0zHpLImhbk8yj1h2oIFH7GKwEKSHC8HERRVwaGED46ro8ms5+8GTyB+J/qdaJxQkFnGOT/TyV3sIPHBPBz6G+HUrKuRhnvckK95wntD6Q+v750s69GnkPVVUFnGug2Tv5sG88WQusnVcfY27QLsCC7ugjDBwx0P8X5oHhL0oRPF3Kv73TC584WVmpKeGNKiEgLUE9HzXH7GBamM7sEWDpU9P4bnejVnHsXU3e+sbZXr14nFHTmgcOLGt11yysBMAFy3TjqjEso9nUyawCwCwv3EjVzGB+zO3ppepLft0u7jJuPy3fAd7gDN1sRMPyD7Q6SuAALgwOnqC20rMHqzuHrt1NSB+FvsHe0VYyvKdE9kmJcUFAQO7KgKw1w2qocXI5ikvQsYu8ALqSoYn9fZGODfHML7sWO2PnrqIZ/bNRG+YqaKnxq5rAprxg+T3CBFmogJXiddwmuNYjRxZRriDPYQnFyPiiCK3j8nejds7CxKqHUeprJp6jonoyc5cuHUVTU/yRdNW8k0mgvbw0AkqAIuKAaVTGblsSt2BnuYVeO+XgXtyC0Q3iL2n0A3KSvd4Fe+BO6gHOmpmlHCcmn1xeqwUb7buJK1pYi1FI3jCsJKOJk7E7Hv7ZkSRl2O+Ec/gYA179Mq2WzKeuJE7sWyEsz9/T4NZ3fu4M6eUtC0gflC6SjFcU8nxbwA9sttFaEMlrk6XQG4a4Jtexd4hBcsLXXwzDSLc3e6wgd1TobaLf/ihjNIaFKK5LxtdrxCZD7tC6HBwrpfosBMkRSzJW0a7akWwSXSYQyoAAVB1JuIRfxIvndrRfYl1nvcxTCVYrDuePYPXvnkjX42X2OwL9cYTdlfJRA3RVDq9lIOp0bcLCKlOLjbcG7Pfs0f3Bc9+7dfyIk+h2HppUX0rGzpUQgveUuLL/YippUBgjktGCUzabmydcPr2EPTq233AVy7J+QmUZfXbgMKEerudo+0bSDbuH6kJQIFzM/O6vBsjK4kGECJWsASgHo4NtL2tjt9jHt8AFdMdaRqR9Nfv6nQoIdNHr00I5VpYoxtMAP0v24O9OtgmsZXFPsTrwOweEI+zgiYXDDFi5ZWkKnbC4ksAbAtripis0hpZlCtDSuYBtIShQqs3e2zxE4Hvkwjkf0zimdLVQDsYYEXxXrajF95nFCRSn1w1lMuYWnVDWy0xVCukK4SgHBSc6uda1FsdJ6+pz3yGpbwk4VuH1Pb2SrokTu1bTgOK24vFBIJvPjiEBxKEC3mk4hUuUuSqS8RruwhRdSe4px8Nn6523ixthONPYGXNDsVyKD6Q6FU4QIcotd/BkuuaZdOULVzYsp5r6f8uobSKjv0fwcvfTbEmyqkhi76aTTNrqE+U3a4U+peuQ2RTMW+pWKJrk47C8Q5j3fRuxI5B78/pCsU4USuY8q0K/UVGEUbteiNPUEaoA5HALWpIhZUmL0AUNXWBg4piut0v8D1HLTMIZOOhsAAAAASUVORK5CYII="
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
						<span id="mtd_version">1.3</span>
						<span id="mtd_idp">18706</span>
						<span id="mtd_namespace">
		http://schemas.gov.sk/form/00603481.OpakovaneListinneDorucenie.sk/1.3</span>
					</div>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>