$(document).on("ajax:error", function(event, xhr, status, error) {
  var e, errExp, errorCount, errors, i, len, list;
  errors = jQuery.parseJSON(xhr.responseText);
  errorCount = errors.length;
  errExp = $('#m_edit_error_explanation');
  errExp.empty();
  errExp.append('<h2>' + errorCount + '件のエラーがあります。</h2>');
  list = "";
  for (i = 0, len = errors.length; i < len; i++) {
    e = errors[i];
    list += '<li>' + e + '</li>';
  }
  errExp.append('<ul>' + list + '</ul>');
  return errExp.show();
});

function openEditModal(title, comment, action) {
  var $modal = $('#modal-edit-article');

  $modal.find('#m_edit_error_explanation').empty();
  
  $modal.find('#edit-title').val(title);
  $modal.find('#edit-content').val(comment);
  $modal.find('form').attr('action', action + '.json')

  $modal.modal('show');
}
