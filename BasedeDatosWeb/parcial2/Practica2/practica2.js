var ocultar = false;
var lanzandoDado = false;

function Muestra_texto() {
  let textoElemento = document.getElementById("texto");
  let toggleThumb = document.getElementById("toggleThumb");
  let toggleSwitch = document.getElementById("toggleSwitch");

  if (ocultar) {
    textoElemento.innerHTML = "";
    toggleThumb.classList.remove("translate-x-6");
    toggleThumb.classList.add("translate-x-1");
    toggleSwitch.classList.remove("bg-blue-600");
    toggleSwitch.classList.add("bg-gray-300");
    ocultar = false;
  } else {
    textoElemento.innerHTML = "Texto visible";
    toggleThumb.classList.remove("translate-x-1");
    toggleThumb.classList.add("translate-x-6");
    toggleSwitch.classList.remove("bg-gray-300");
    toggleSwitch.classList.add("bg-blue-600");
    ocultar = true;
  }
}

function lanzarDado() {
  if (lanzandoDado) return;

  lanzandoDado = true;
  let carasDado = ["⚀", "⚁", "⚂", "⚃", "⚄", "⚅"];
  let caraDadoElemento = document.getElementById("caraDado");
  let resultadoElemento = document.getElementById("resultadoNumero");

  let iteraciones = 20;
  let intervalo = setInterval(() => {
    let numeroAleatorio = Math.floor(Math.random() * 6);
    caraDadoElemento.innerHTML = carasDado[numeroAleatorio];
  }, 100);

  setTimeout(() => {
    clearInterval(intervalo);

    let numeroFinal = Math.floor(Math.random() * 6) + 1;
    caraDadoElemento.innerHTML = carasDado[numeroFinal - 1];
    resultadoElemento.innerHTML = `Número generado: ${numeroFinal}`;

    lanzandoDado = false;
  }, iteraciones * 100);
}
