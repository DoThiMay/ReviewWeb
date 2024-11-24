/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function(config) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	//config.filebrowswerUploadUrl = '/review/dangreview';
	//config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
	//config.filebrowserImageUploadUrl = '/review/dangreview';
	//config.filebrowserImageBrowseUrl = '/review/filebrowse';  // Adjust URL to match your file browsing endpoint

	//config.filebrowserUploadMethod = 'form';
	//console.log("change config")
	config.filebrowserImageBrowseUrl = '/review/filebrowse'; // Point to your file browsing endpoint
	config.filebrowserImageUploadUrl = '/review/upload/image'; // Point to your upload endpoint
	config.filebrowserUploadMethod = 'form';
	console.log("CKEditor configuration updated to use correct URLs");
};
