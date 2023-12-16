document.addEventListener('DOMContentLoaded', function() {
    var table = document.getElementById('comparisonTable');

    for (var i = 1; i < table.rows.length; i++) {
      highlightBestValue(table, i);
    }
  });

  function highlightBestValue(table, rowIndex) {
    var cells = table.rows[rowIndex].cells;
    var minIndex = 1; // Start from the second cell

    for (var i = 2; i < cells.length; i++) {
      var currentValue = parseFloat(cells[i].textContent.replace('$', '').replace(' inches', '').replace('GB SSD', ''));
      var minValue = parseFloat(cells[minIndex].textContent.replace('$', '').replace(' inches', '').replace('GB SSD', ''));

      if (currentValue < minValue) {
        cells[minIndex].classList.remove('best-value');
        minIndex = i;
      } else {
        cells[i].classList.remove('best-value');
      }
    }

    cells[minIndex].classList.add('best-value');
  }