<html>
<head>
    <link type="text/css" rel="stylesheet" href="development-bundle/themes/ui-lightness/ui.all.css" />
    
    <script src="development-bundle/jquery-1.8.0.min.js"></script>
    <script src="development-bundle/ui/ui.core.js"></script>
    <script src="development-bundle/ui/ui.datepicker.js"></script>
    <script src="development-bundle/ui/i18n/ui.datepicker-id.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#tglterbit").datepicker({
                dateFormat : "dd/mm/yy",
                changeMonth : true,
                changeYear : true
            });
        });
    </script>
</head>
<body style="font-size:85%;">
    <h3>Entry Data Buku</h3>
    <form method="POST" action="simpan_buku.php">
        <table>
        <tr><td>Judul</td> <td>: <input name="judul" type="text" size=45 /></td></tr>
        <tr><td>Pengarang</td> <td>: <input name="pengarang" type="text" size=35 /></td></tr>
        <tr><td>Tgl. Terbit</td> <td>: <input name="tglterbit" id="tglterbit" type="text" /></td></tr>
        <tr><td colspan="2"><input type="submit" name="submit" value="Simpan" /></td></tr>
    </form>
</body>
</html>