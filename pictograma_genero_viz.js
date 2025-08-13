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
    const fontAwesomeLink = document.createElement('link');
    fontAwesomeLink.rel = 'stylesheet';
    fontAwesomeLink.href = 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css';
    document.head.appendChild(fontAwesomeLink);

    element.innerHTML = `
      <style>
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
          font-size: 60px;
          line-height: 1;
          color: #fff;
        }
        .mujer-bg {
          background-color: #920072;
          border-radius: 50%;
          padding: 20px;
          width: 60px;
          height: 60px;
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .hombre-bg {
          background-color: #1F2652;
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

    let conteo = { mujer: 0, hombre: 0 }; // Eliminado 'otro'
    let total = 0; // Esta variable ya no se usará para porcentajes, pero la dejamos por si acaso

    queryResponse.data.forEach(row => {
      let genero = row[generoField].value ? row[generoField].value.toLowerCase() : "";
      let count = row[uniqueField].value ? parseFloat(row[uniqueField].value) : 0;
      
      if (genero === "mujer") {
        conteo.mujer += count;
      } else if (genero === "hombre") {
        conteo.hombre += count;
      }
    });

    // La función ahora muestra el valor exacto, no el porcentaje
    const crearBloque = (label, valor, clase, icono) => {
      let div = document.createElement("div");
      div.classList.add("pictograma");
      div.innerHTML = `
        <div class="valor">${valor.toLocaleString()}</div>
        <div class="${clase}-bg"><div class="icono">${icono}</div></div>
        <div class="label">${label}</div>
      `;
      return div;
    };
    
    let pictogramaContainer = document.createElement("div");
    pictogramaContainer.classList.add("pictograma-container");
    
    pictogramaContainer.appendChild(crearBloque("Mujer", conteo.mujer, "mujer", '<i class="fas fa-female"></i>'));
    pictogramaContainer.appendChild(crearBloque("Hombre", conteo.hombre, "hombre", '<i class="fas fa-male"></i>'));
    
    this.container.appendChild(pictogramaContainer);

    done();
  }
});
