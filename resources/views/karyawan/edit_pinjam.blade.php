@extends('layouts.app')

@section('content')
@section('menuKaryawan','active')
<div class="container-fluid p-0">
    <div class="col-12 col-md-8 offset-md-2">
        <h1 class="text-center"><strong>Edit Peminjaman</strong></h1>
        @method('put')
        @csrf
        <form action="/karyawan/{{$edit->id_peminjaman}}" method="POST">
          @method('put')
          @csrf
            <div class="mb-3">
              <label for="exampleInputAlamat" class="form-label">Tanggal</label>
              <input type="date" name="tanggal" value="{{$edit->tanggal}}" class="form-control" id="exampleInputAlamat">
            </div>
            <div class="mb-3">
              <label for="exampleInputJumlah" class="form-label">Jumlah</label>
              <input type="text" name="jumlah" value="{{currency_IDR($edit->jumlah)}}" class="form-control input-currency" type-currency="IDR" placeholder="Rp" id="exampleInputJumlah">
            </div>
            <div class="form-floating mb-3">
                <textarea class="form-control" name="ket" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                <label for="floatingTextarea">Keterangan</label>
              </div>
            <div class="col-3">
                <button type="submit" class="btn btn-primary edit">Edit</button>
            </div>

          </form>
    </div>
   <script>
 $('.edit').click(function(){
  swal({
  title: "Berhasil Edit Data!",
  text: "Data Kamu berhasil di edit!",
  icon: "success",
  button: "Aww yiss!",
});
 });




    document.querySelectorAll('input[type-currency="IDR"]').forEach((element) => {
  element.addEventListener('keyup', function(e) {
  let cursorPostion = this.selectionStart;
    let value = parseInt(this.value.replace(/[^,\d]/g, ''));
    let originalLenght = this.value.length;
    if (isNaN(value)) {
      this.value = "";
    } else {    
      this.value = value.toLocaleString('id-ID', {
        currency: 'IDR',
        style: 'currency',
        minimumFractionDigits: 0
      });
      cursorPostion = this.value.length - originalLenght + cursorPostion;
      this.setSelectionRange(cursorPostion, cursorPostion);
    }
  });
});
   </script>
  
</div>
@endsection
