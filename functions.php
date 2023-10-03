<?php 

function koneksi(){
    $conn = mysqli_connect('localhost','root','','prakweb2023b_213040126') or die('Koneksi ke DB GAGAL!');

    return $conn;
}

function query($query){
    $conn = koneksi();
    $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
    

    // Siapkan data $mahasiswa
    $rows = [];
    while($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
    }

    return $rows;

}

function tambah($data){


    // cek apakah gambar diupload

    if($_FILES["gambar"]["error"] === 4){
        //jika user tidak memilih gambar beri gambar default
        $gambar='nophoto.jpg';

    } else {
        // jika user memilih gambar jalankan fungsi upload
        $gambar=upload();

        if(!$gambar){
            return false;
        }

        // CEK APAKAH UPLOAD BERHASIL
    }

    $conn = koneksi();
    $nama_buku = htmlspecialchars($data["nama_buku"]) ;
    $pengarang = htmlspecialchars($data["pengarang"]) ;
    $penerbit = htmlspecialchars($data["penerbit"]) ;
    $jumlah_halaman = htmlspecialchars($data["jumlah_halaman"]);
    // $gambar = $data["gambar"];

    
    $query = "INSERT INTO mahasiswa VALUES (null, '$nama_buku','$pengarang','$penerbit','$jumlah_halaman','$gambar')";
    
    mysqli_query($conn, $query) or die(mysqli_error($conn));

    return mysqli_affected_rows($conn);
}

function hapus($id){
    $conn = koneksi();

    // ambl data mahasiswa
    $mhs = query("SELECT * FROM mahasiswa WHERE id = $id")[0];

    // hapus daata gambar
    if($mhs["gambar"] !== 'nophoto.jpg'){
        unlink('img/'. $mhs["gambar"]);
    }

    mysqli_query($conn, "DELETE FROM mahasiswa WHERE id = $id") or die(mysqli_error($conn));
    return mysqli_affected_rows($conn);

}

function ubah($data){

    $id = $data["id"];

    $nama_buku = htmlspecialchars($data["nama_buku"]) ;
    $pengarang = htmlspecialchars($data["pengarang"]) ;
    $penerbit = htmlspecialchars($data["penerbit"]) ;
    $jumlah_halaman = htmlspecialchars($data["jumlah_halaman"]);
    $gambar = $data["gambar"];

    $conn = koneksi();
    $query = "UPDATE mahasiswa SET  
        nama_buku ='$nama_buku',
        pengarang='$pengarang',
        penerbit='$penerbit',
        jumlah_halaman='$jumlah_halaman',
        gambar='$gambar'
        WHERE id = $id";
    
    mysqli_query($conn, $query) or die(mysqli_error($conn));

    return mysqli_affected_rows($conn);

}

function upload(){
    //siiapkan data gambar

    $filename = $_FILES["gambar"]["name"];
    $filesize = $_FILES["gambar"]["size"];
    $filetmpname = $_FILES["gambar"]["tmp_name"];

    $filetype=pathinfo($filename,PATHINFO_EXTENSION);
    $allowedtype=["jpg","jpeg","png"];

    //cek apakah file bukan gamabar

    if(!in_array($filetype,$allowedtype)){
        echo "<script>
            alert('yang anda upload bukan gambar');
        
            </script>";

        return false;
    
    }

    // cek jika ukuran lebih besar daari satu mega

    if($filesize>1000000){
        echo "<script>
            alert('ukuran gambar terlalu besar');
        
            </script>";

        return false;

    }

    // lolos pengecekan gambar
    // buat nama file baru
    $newfilename = uniqid(). $filename;


    // upload gambar 
    move_uploaded_file($filetmpname, 'img/' . $newfilename);

    

    return $newfilename;

}






?>