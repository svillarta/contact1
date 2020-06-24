$(document).ready(function(){
  $('#regForm').on('submit',function(e){
    e.preventDefault();
    $.ajax({
      url: base_url+'auth/create_user',
      method: 'POST',
      data: new FormData(this),
      contentType: false,
      processData:false,
      success:function(res){
        $('#message').html(res);
        $('#message').css("display","block");
        $('#regForm')[0].reset();
      }
    });
  });


  var contactsTable = $('#contactsTable').DataTable({
    "responsive" : true,
    "processing" : true,
    "serverSide" : true,



    "order": [[0,'desc']],

    "columns" : [
      {
        "data": "id"
      },
      {
        "data": "name"
      },
      {
        "data": "email"
      },
      {
        "data": "phone"
      },
      {
        "data": "company"
      },
      {
        "data": "id","render":function(data,type,row,meta){
          return '<button class="btn btn-info btn-sm edit" data-id="'+data+'">EDIT</button> <button class="btn btn-danger btn-sm delete" data-id="'+data+'">DELETE</button>';
        }
      }

    ],
    "ajax" : {
      "url" : base_url + "contacts/getContacts",
      "type" : "POST"
    },
    "columnDefs": [
            {
                 "targets": [ ], //first column / numbering column
                 "orderable": false, //set not orderable

            },
        ],

  });



$('#addForm').on('submit',function(e){
  e.preventDefault();
  $.ajax({
    url: base_url+'contacts/addContacts',
    method: 'POST',
    data: new FormData(this),
    contentType: false,
    processData:false,
    success:function(res){
      var result = JSON.parse(res);
      $('#message').html(result.message);
      $('#message').css("display","block");
      $('#addModal').modal('hide');
      contactsTable.ajax.reload();

    }
  });
})

$(document).on('click','.edit',function(){
  var id = $(this).data('id');

  $.ajax({
    url: base_url+'contacts/getDetails',
    method: 'POST',
    data:{id:id},
    success:function(res){
      var result = JSON.parse(res);
      $('#name').val(result.name);
      $('#email').val(result.email);
      $('#phone').val(result.phone);
      $('#company').val(result.company);
      $('#contactId').val(result.id);
      $('#editModal').modal('show');
    }
  });
});


$(document).on('submit','#editForm',function(e){
  e.preventDefault();
  $.ajax({
    url: base_url+'contacts/update',
    method: 'POST',
    data: new FormData(this),
    contentType: false,
    processData:false,
    success:function(res){
      var result = JSON.parse(res);
      $('#message').html(result.message);
      $('#message').css("display","block");
      $('#editModal').modal('hide');
      contactsTable.ajax.reload();
    }
  });
});


$(document).on('click','.delete',function(){
  var id = $(this).data('id');
  Swal.fire({
    title: 'Are you sure?',
    text: "You won't be able to revert this!",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
      if (result.value) {
        $.ajax({
          url: base_url+'contacts/delete',
          method: 'POST',
          data: {id:id},
          success:function(res){
            var result = JSON.parse(res);
            contactsTable.ajax.reload();
            Swal.fire(
              'Deleted!',
                result.message,
              'success'
            )
          }
        });
      }
})

});


})
