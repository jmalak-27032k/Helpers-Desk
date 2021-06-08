function choose() {
    if (document.getElementById('admin').checked) {
        document.getElementById('admin1').style.display = 'block';
        document.getElementById('helper1').style.display = 'none';
        document.getElementById('user1').style.display = 'none';
    }if (document.getElementById('helper').checked) {
        document.getElementById('admin1').style.display = 'none';
        document.getElementById('helper1').style.display = 'block';
        document.getElementById('user1').style.display = 'none';
    }
if (document.getElementById('user').checked) {
        document.getElementById('admin1').style.display = 'none';
        document.getElementById('helper1').style.display = 'none';
        document.getElementById('user1').style.display = 'block';
    }
}