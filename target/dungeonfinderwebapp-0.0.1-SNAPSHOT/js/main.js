document.addEventListener('DOMContentLoaded', () => {
  let Checkboxes = document.querySelectorAll('input[type="checkbox"]');

  for (let i = 0; i < Checkboxes.length; i++)
    Checkboxes[i].addEventListener('click', (event) => {
      checkboxLimiter();
    });
});

function checkboxLimiter() {
  let markedBoxCount = document.querySelectorAll('input[type="checkbox"]:checked').length;
  if (markedBoxCount == 5) {
    disable();
  } else
    enable();
}

function disable() {
  let unmarkedBox = document.querySelectorAll('input[type="checkbox"]:not(:checked)');
  for (let i = 0; i < unmarkedBox.length; i++)
    unmarkedBox[i].disabled = true;
}

function enable() {
  let disabledBox = document.querySelectorAll('input[type="checkbox"]:not(:checked)');
  for (let i = 0; i < disabledBox.length; i++)
    disabledBox[i].disabled = false;
}
