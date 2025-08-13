looker.plugins.visualizations.add({
  id: "pictograma_genero_debug",
  label: "Pictograma Género",
  options: {
    // ... (tus opciones permanecen igual)
    genero_dimension: {
      type: "dimension",
      label: "Género",
      required: true,
      order: 1,
    },
    conteo_medida: {
      type: "measure",
      label: "Conteo",
      required: true,
      order: 2,
    },
  },
  
  create: function (element, config) {
    element.innerHTML = `
      <style>
        /* PASO 1: Importar la librería de iconos Font Awesome */
        @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css");

        .pictograma-container {
          display: flex;
          align-items: flex-end;
          justify-content: center;
          height: 300px;
          font-family: Arial, sans-serif;
        }
        .pictograma {
          text-align: center;
          margin: 0 20px;
          display: flex;
          flex-direction: column;
          align-items: center;
        }
        .icono {
          font-size: 60px; /* Tamaño del icono */
          line-height: 1;
          color: #fff; /* Color del icono */
        }
        .mujer-bg {
          background-color: #920072; /* Color de fondo para mujer */
          border-radius: 50%;
          padding: 20px;
          width: 60px;
          height: 60px;
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .hombre-bg {
          background-color: #1F2652; /* Color de fondo para hombre */
          border-radius: 50%;
          padding: 20px;
          width: 60px;
          height: 60px;
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .otro-bg {
          background-color: #888; /* Color de fondo para 'otro' */
          border-radius: 50%;
          padding: 20px;
          width: 60px;
          height: 60px;
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .label {
          font-size: 14px;
          margin-top: 5px;
          font-weight: bold;
        }
        .valor {
          font-size: 18px;
          font-weight: bold;
          margin-bottom: 5px;
        }
      </style>
      <div id="pictograma-content"></div>
    `;
    
    this.container = element.querySelector("#pictograma-content");
  },

  updateAsync: function (data, element, config, queryResponse, details, done) {
    this.container.innerHTML = "";
    
    let generoField = queryResponse.fields.dimension_like[0].name;
    let uniqueField = queryResponse.fields.measure_like[0].name;

    let conteo = { mujer: 0, hombre: 0, otro: 0 };
    let total = 0;

    queryResponse.data.forEach(row => {
      let genero = row[generoField].value ? row[generoField].value.toLowerCase() : "otro";
      let count = row[uniqueField].value ? parseFloat(row[uniqueField].value) : 0;
      
      total += count;

      if (genero === "mujer") {
        conteo.mujer += count;
      } else if (genero === "hombre") {
        conteo.hombre += count;
      } else {
        conteo.otro += count;
      }
    });

    // Esta función ahora recibe código HTML para los iconos
    const crearBloque = (label, valor, clase, icono) => {
      let porcentaje = total > 0 ? ((valor / total) * 100).toFixed(1) + "%" : "0%";
      
      let div = document.createElement("div");
      div.classList.add("pictograma");
      // La variable 'icono' se inserta directamente aquí
      div.innerHTML = `
        <div class="valor">${porcentaje}</div>
        <div class="${clase}-bg"><div class="icono">${icono}</div></div>
        <div class="label">${label}</div>
      `;
      return div;
    };
    
    let pictogramaContainer = document.createElement("div");
    pictogramaContainer.classList.add("pictograma-container");
    
    /* 
     * PASO 2: Reemplazar los emojis por las etiquetas HTML de Font Awesome.
     * La etiqueta <i> con las clases "fas fa-female" y "fas fa-male" mostrará los iconos.
    */
    pictogramaContainer.appendChild(crearBloque("Mujer", conteo.mujer, "mujer", '<i class="fas fa-female"></i>'));
    pictogramaContainer.appendChild(crearBloque("Hombre", conteo.hombre, "hombre", '<i class="fas fa-male"></i>'));
    
    // He mejorado también el icono para "Otro" para mantener el estilo
    if (conteo.otro > 0) {
      pictogramaContainer.appendChild(crearBloque("Otro", conteo.otro, "otro", '<i class="fas fa-user-circle"></i>'));
    }
    
    this.container.appendChild(pictogramaContainer);

    done();
  }
});
