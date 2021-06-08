function choose() {
    if (document.getElementById('helper').checked) {
        document.getElementById('helper1').style.display = 'block';
        document.getElementById('user1').style.display = 'none';
    } else {
        document.getElementById('user1').style.display = 'block';
        document.getElementById('helper1').style.display = 'none';
    }
}