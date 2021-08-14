<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="images/spinning-circles.svg" width="50" height="50" alt="Aero">
        </div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        <a href="index.php"><img src="images/laboratory.png" width="25" alt="Aero"><span class="m-l-10">Lab. USU</span></a>
    </div>
    <div class="menu" id="menu-kiri">
        <ul class="list">
            <li>
                <div class="user-info">
                    <a class="image" href="javascript:void(0);"><i class="zmdi zmdi-account"></i></a>
                    <div class="detail">
                        <h4><?= $_SESSION[username] ?></h4>
                        <small><?= $_SESSION[nama] ?></small>
                    </div>
                </div>
            </li>

            <li><a href="index.php"><i class="zmdi zmdi-home"></i><span>Menu Utama</span></a></li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-accounts-list"></i><span>Data
                        Lab</span></a>
                <ul class="ml-menu">
                    <li><a href="?page=pendaftaran&form=pasien">Data Pasien</a></li>
                    <li><a href="?page=pendaftaran&form=faskes">Data Faskes</a></li>
                    <li><a href="?page=pendaftaran&form=wali">Data Ekstraksi</a></li>
                    <li><a href="?page=pendaftaran&form=spp">Data Preparasi</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-assignment"></i><span>Master Data</span></a>
                <ul class="ml-menu">
                    <li><a href="?page=pendaftaran&form=spp">Data Internal</a></li>
                    <li><a href="?page=pendaftaran&form=transaksi">Logbook</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-accounts"></i><span>Data Faskes</span></a>
                <ul class="ml-menu">
                    <li><a href="?page=pendaftaran&form=faskes">Data Faskes</a></li>
                    <li><a href="?page=pendaftaran&form=faskesupload">Data Faskes Upload</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-account"></i><span>Admin</span></a>
                <ul class="ml-menu">
                    <li><a href="?page=pendaftaran&form=admin">Data Admin</a></li>
                </ul>
            </li>
        </ul>
    </div>
</aside>

<!-- Main Content -->
<section class="content">
    <div class="">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2><?= $title ?></h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php"><i class="zmdi zmdi-home"></i> Lab. USU</a>
                        </li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <a href="modul/keluar.php"><button class="btn btn-danger btn-sm  float-right" type="button"><i class="zmdi zmdi-close-circle-o"> </i> Keluar</button></a>
                </div>
            </div>
        </div>
        <?php
        $content = 'content/' . $content . '.php';
        include $content;
        ?>

    </div>
</section>
<script>
    var uri_now = window.location.search
    var menu = $('#menu-kiri')
    menu = menu[0].children[0].children
    for (var i = 1; i < menu.length; i++) {
        console.log(menu)
        try {
            for (var u = 0; u < menu[i].children[0].children.length; u++) {
                if (menu[i].children[1].children[u].children[0].search == uri_now) {
                    menu[1].classList.remove('active')
                    menu[i].classList.add('active')
                    // menu[i].classList.add('open')
                    console.log('aktive', menu[i], uri_now)
                }
            }
        } catch (err) {
            menu[i].classList.add('active')
        }
    }
</script>