jQuery(function() {
  var deliveryChosen;
  deliveryChosen = $('#deliveryChosen').html();
  return $('#order_delivery_cost').change(function() {
    var optionChose, booksSubtotal;
    optionChose = parseFloat($('#order_delivery_cost :selected').val());
    booksSubtotal = Number($('#booksSubtotal').text().replace(/[^0-9.-]+/g,""));
    if (optionChose) {
      $('#deliveryChosen').html("£" + optionChose.toFixed(2));
      $('#finalValue').html("£" + (optionChose + booksSubtotal).toFixed(2));
    }
    else{
      var delivery = 0;
      $('#deliveryChosen').html("£" + delivery.toFixed(2));
      $('#finalValue').html("£" + booksSubtotal.toFixed(2));
    }
  });
});