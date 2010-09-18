Event.observe(window, 'load', function() {
  new Form.Element.Observer('source_text', 0.3, function() {
    $('submit-button').click();
  });
});

