function load_editors() {
	var cmb = CodeMirror.fromTextArea(document.getElementById('body'), { mode: 'markdown', lineWrapping: true, theme: 'henry' });
	var cmf = CodeMirror.fromTextArea(document.getElementById('frontmatter'), { mode: 'yaml', lineWrapping: true, theme: 'henry' });

	setTimeout(function(){
		cmb.refresh();
		cmf.refresh();
	}, 100);
}