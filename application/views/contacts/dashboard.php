<div class="container">
  <div class="alert alert-info" id="message" style="display:none;">

  </div>
  <div class="card-block">
      <button type="button" class="btn btn-primary btn-sm" id="addContacts" data-toggle="modal" data-target="#addModal">Add Contact</button>
      <table class="table table-hover demo-table-search table-responsive-block" id="contactsTable">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Company</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Contacts</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form class="" id="addForm">
          <div class="modal-body">
            <div class="form-group">
              <label for="exampleInputPassword1">Name</label>
              <input type="text" class="form-control"  name="name" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Email</label>
              <input type="email" class="form-control"  name="email" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Phone</label>
              <input type="text" class="form-control" name="phone" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Company</label>
              <input type="text" class="form-control" name="company" placeholder="">
            </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save</button>
          </div>
      </form>

    </div>
  </div>
</div>



<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Contacts</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form class="" id="editForm">
          <div class="modal-body">
            <input type="hidden" name="contactId" value="" id="contactId">
            <div class="form-group">
              <label for="exampleInputPassword1">Name</label>
              <input type="text" class="form-control"  name="name" id="name" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Email</label>
              <input type="email" class="form-control"  name="email" id="email" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Phone</label>
              <input type="text" class="form-control" name="phone" id="phone" placeholder="">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Company</label>
              <input type="text" class="form-control" name="company" id="company" placeholder="">
            </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save</button>
          </div>
      </form>

    </div>
  </div>
</div>
