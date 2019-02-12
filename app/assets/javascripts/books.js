jQuery(function() {
  var genres;
  genres = $('#book_genre_id').html();
  console.log(genres);
  return $('#book_category_id').change(function() {
    var category, options;
    category = $('#book_category_id :selected').text();
    options = $(genres).filter("optgroup[label=" + category + "]").html();
    //console.log(options);
    if (options) {
      return $('#book_genre_id').html(options);
    } else {
      return $('#book_genre_id').empty();
    }
  });
/*jQuery(function() {
  var genres;
  $('#book_genre_id').parent().hide();
  genres = $('#book_genre_id').html();
  console.log(genres);
  return $('#book_category_id').change(function() {
    var category, escaped_category, options;
    category = $('#book_category_id :selected').text();
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(genres).filter("optgroup[label=" + escaped_category + "]").html();
    console.log(options);
    if (options) {
      $('#book_genre_id').html(options);
      return $('#book_genre_id').parent().show();
    } else {
      $('#book_genre_id').empty();
      return $('#book_genre_id').parent().hide();
    }
  });
});*/