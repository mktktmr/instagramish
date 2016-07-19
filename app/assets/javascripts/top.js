function openEditModal(title, comment, action) {
  var $modal = $('#modal-edit-article');
  
  $modal.find('#edit-title').val(title);
  $modal.find('#edit-content').val(comment);
  $modal.find('form').attr('action', action + '.json')

  $modal.modal('show');
}
