looker.plugins.visualizations.add({
  id: "pictograma_genero_debug",
  label: "Pictograma Género",
  options: {
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
        }
        .mujer {
          color: #920072;
        }
        .hombre {
          color: #1F2652;
        }
        .otro {
          color: #888;
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
    
    console.log("Pictograma Género - create ejecutado");
  },

  updateAsync: function (data, element, config, queryResponse, details, done) {
    console.log("Datos recibidos:", queryResponse.data);
    
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

    const crearBloque = (label, valor, clase, icon) => {
      let porcentaje = total > 0 ? ((valor / total) * 100).toFixed(1) + "%" : "0%";
      
      let div = document.createElement("div");
      div.classList.add("pictograma");
      div.innerHTML = `
        <div class="valor">${porcentaje}</div>
        <div class="icono ${clase}">${icon}</div>
        <div class="label">${label}</div>
      `;
      return div;
    };
    
    let pictogramaContainer = document.createElement("div");
    pictogramaContainer.classList.add("pictograma-container");
    
    pictogramaContainer.appendChild(crearBloque("Mujer", conteo.mujer, "mujer", "♀️"));
    pictogramaContainer.appendChild(crearBloque("Hombre", conteo.hombre, "hombre", "♂️"));
    
    if (conteo.otro > 0) {
      pictogramaContainer.appendChild(crearBloque("Otro", conteo.otro, "otro", "⚪"));
    }
    
    this.container.appendChild(pictogramaContainer);

    done();
  }
});
