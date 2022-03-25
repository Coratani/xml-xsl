function myFunction(mytable,miid) {
    var input, filter, table, tr, td, i,alltables;
    alltables = document.querySelectorAll(mytable);
    input = document.getElementById(miid);
    filter = input.value.toUpperCase();
    alltables.forEach(function(table){
        //Array de tds
        tr = table.getElementsByTagName("tr");
        //Recorre la array de tds
        for (i = 0; i < tr.length; i++) {
          td = tr[i].getElementsByTagName("td")[0];
          //xml no acepta &nbsp; asi que utilizo &#160; y html lo lee como nbsp asi que en dom los nombres aparecen como nombre&nbspapellido
          //entonces la funcion no encuentra a nadie de esa manera asi que sustituyo el nbsp por un espacio normal, redundante pero efectivo
          if (td) {
            if (td.innerHTML.replace(/&nbsp;/g, " ").toUpperCase().indexOf(filter) > -1) {
              tr[i].style.display = "";
            } else {
              tr[i].style.display = "none";
            }
          }       
        }
    });
    console.log(td.innerHTML)
  }