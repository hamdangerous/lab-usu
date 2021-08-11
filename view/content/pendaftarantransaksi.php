<?php
require_once 'config/koneksi.php';
$q = "select * from transaksi";
$sql = mysqli_query($con, $q);
$q_membeli = "SELECT id_transaksi,id_spp,jmlh_bayar,tunggakan,tgl_transaksi FROM transaksi";
$sql_membeli = mysqli_query($con, $q_membeli);
?>
<div class="container-fluid">

    <!-- Exportable Table -->
    <div class="row clearfix">
        <div class="col-lg-12">
            <div class="card">
                <div class="header">
                    <h2><strong>Daftar</strong> Logbook </h2>
                    <ul class="header-dropdown">
                        <li>
                            <button type="button" class="btn btn-primary waves-effect btn-sm" id="btn-tambah">Tambah
                            Logbook</button>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>Id Transaksi</th>
                                    <th>Id SPP</th>
                                    <th>Jumlah Bayar</th>
                                    <th>Tunggakan</th>
                                    <th>Tanggal Transaksi</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($d = mysqli_fetch_object($sql)) {
                                    echo "<tr>
                                                <td>$d->id_transaksi</td>
                                                <td>$d->id_spp</td>
                                                <td>$d->jmlh_bayar</td>
                                                <td>$d->tunggakan</td>
                                                <td>$d->tgl_transaksi</td>
                                                <td>
                                                    <button class=\"btn btn-primary btn-sm btn-icon\"  onclick=\"edit('$d->id_transaksi','pendaftarantransaksi')\"><i class=\"zmdi zmdi-edit\"></i></button>
                                                    <button class=\"btn btn-primary btn-sm btn-icon\"  onclick=\"hapus('$d->id_transaksi','pendaftarantransaksi')\"><i class=\"zmdi zmdi-close-circle-o\"></i></button>
                                                </td>
                                            </tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-form" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-submit" data-modul="pendaftarantransaksi">
                    <div class="modal-header">
                        <h4 class="title" id="defaultModalLabel"><?= $form ?></h4>
                    </div>
                    <div class="modal-body">
                        <!-- Input -->
                        <div class="row clearfix">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="card">
                                    <div class="body">
                                        <div class="row clearfix">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <input type="hidden" name="id">
                                                    <input type="number" class="form-control" placeholder="Id Transaksi" name="id_transaksi" required />
                                                </div>
                                                <div class="form-group">
                                                    <input type="number" class="form-control" placeholder="Id SPP" name="id_spp" required />
                                                </div>
                                                <div class="form-group">
                                                    <input type="number" class="form-control" placeholder="Jumlah Bayar" name="jmlh_bayar" required />
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Sisa Tunggakan" name="tunggakan" required />
                                                </div>
                                                <div class="form-group">
                                                    <input type="date" class="form-control" placeholder="Tanggal Transaksi" name="tgl_transaksi" required />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default btn-round waves-effect">Simpan</button>
                        <button type="button" class="btn btn-danger waves-effect" onclick="formreset()">Reset</button>
                        <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Tutup</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Jquery DataTable Plugin Js -->
<script src="assets/bundles/datatablescripts.bundle.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="assets/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>
<script src="assets/js/pages/tables/jquery-datatable.js"></script>
<script src="assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
<script src="assets/plugins/momentjs/moment.js"></script> <!-- Moment Plugin Js -->
<!-- Bootstrap Material Datetime Picker Plugin Js -->
<script src="assets/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
<script src="assets/plugins/sweetalert/sweetalert.min.js"></script> <!-- SweetAlert Plugin Js -->
<script>
    $(document).ready((e) => {
        $('#tbl-transaksi').DataTable();

        $('#btn-tambah').click((e) => {
            var modal = $('#modal-form')
            modal.find('.modal-header').text('Tambah Data Transaksi')
            modal.find('input').val('');
            modal.modal('show');
        })


        $('#form-submit').submit((e) => {
            var fdata = new FormData(e.target)
            var src = e.target.dataset.modul;
            var id = $('[name="id"]').val();
            var pesan = '';
            console.log(id)
            if (id == '') {
                // alert('tambah')
                fdata.append("aksi", "input")
                pesan = "Tambah"
            } else {
                // alert('update')
                fdata.append("aksi", "update")
                pesan = "Edit"
            }
            $.ajax({
                url: "modul/" + src + ".php",
                data: fdata,
                method: "post",
                contentType: false,
                processData: false,
                success: (data) => {
                    swal("data berhasil di " + pesan + "!", {
                        icon: "success",
                    });
                    setTimeout(() => {
                        location.reload();
                    }, 100)
                },
                error: (data) => {
                    swal("data gagal di Tambah!", {
                        icon: "error",
                    });
                }
            })
        })
    })

    function edit(id, src) {
        var modal = $('#modal-form')
        modal.find('.modal-header').text('Edit Data Transaksi')
        $.ajax({
            url: "modul/" + src + ".php",
            method: "post",
            dataType: "json",
            data: {
                aksi: "get",
                id: id
            },
            success: (data) => {
                console.log(data.data)
                if (data.error == 0) {
                    var data = data.data;
                    modal.find('[name="id_transaksi"]').val(data.id_transaksi);
                    modal.find('[name="id_spp"]').val(data.id_spp);
                    modal.find('[name="jmlh_bayar"]').val(data.jmlh_bayar);
                    modal.find('[name="tunggakan"]').val(data.tunggakan);
                    modal.find('[name="tgl_transaksi"]').val(data.tgl_transaksi);
                    modal.find('[name="id"]').val(data.id_transaksi);
                }
            }

        })
        modal.find('input').val('');
        modal.modal('show');
        // setTimeout(() => {
        //     location.reload();
        // }, 100)
    }

    function hapus(id, src) {
        swal({
                title: "Apakah anda yakin?",
                text: "Jika dihapus, data tidak bisa di kembalikan lagi!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "modul/" + src + ".php",
                        method: "post",
                        data: {
                            aksi: "delete",
                            id: id
                        },
                        success: (data) => {
                            swal("data berhasil di hapus!", {
                                icon: "success",
                            });
                            setTimeout(() => {
                                location.reload();
                            }, 100)
                        },
                        error: (err) => {
                            swal("data gagal di hapus!", {
                                icon: "error",
                            });
                        }
                    })
                } else {
                    swal("Data tidak jadi di hapus!");
                }
            });
    }

    function formreset() {
        $('input').val('');
    }
</script>