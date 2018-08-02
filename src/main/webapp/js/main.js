document.addEventListener('DOMContentLoaded', () => {   
    let Checkboxes=document.querySelectorAll('input[type="checkbox"]')
    let MarkedBoxCount=document.querySelectorAll('input[type="checkbox"]:checked').length;
    let Unchecked=document.querySelectorAll('input[type="checkbox"]:unchecked');

    let stategicTBoxes=document.querySelectorAll('div#stJar'+ Checkboxes);
    let executingBoxes=document.querySelectorAll('div#eJar'+ Checkboxes);
    let relationBBoxes=document.querySelectorAll('div#rbJar'+ Checkboxes);
    let influenceBoxes=document.querySelectorAll('div#iJar'+ Checkboxes);
    
    Checkboxes.forEach((box) =>{
        box.addEventListener('click', (event)=>{
            event.preventDefault();
        if(MarkedBoxCount === 5){
            Unchecked.prop('disabled', true);
        }

   
    



  });