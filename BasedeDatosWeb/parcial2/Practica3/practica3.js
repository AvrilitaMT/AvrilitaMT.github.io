const tablero = document.getElementById("tablero");
const mensaje = document.getElementById("mensaje");
let turno = "X";
let juegoTerminado = false;
let celdas = Array(9).fill(null);

for (let i = 0; i < 9; i++) {
  const celda = document.createElement("div");
  celda.classList.add("celda");
  celda.addEventListener("click", () => hacerMovimiento(i));
  tablero.appendChild(celda);
}

function hacerMovimiento(index) {
  if (!celdas[index] && !juegoTerminado) {
    celdas[index] = turno;
    document.querySelectorAll(".celda")[index].textContent = turno;
    if (verificarGanador()) {
      mensaje.textContent = `¡El jugador ${turno} ha ganado!`;
      juegoTerminado = true;
    } else if (celdas.every((celda) => celda)) {
      mensaje.textContent = "¡Es un empate!";
      juegoTerminado = true;
    } else {
      turno = turno === "X" ? "O" : "X";
    }
  }
}

function verificarGanador() {
  const combinacionesGanadoras = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];

  return combinacionesGanadoras.some((combinacion) => {
    const [a, b, c] = combinacion;
    return celdas[a] && celdas[a] === celdas[b] && celdas[a] === celdas[c];
  });
}

function reiniciarJuego() {
  celdas = Array(9).fill(null);
  document
    .querySelectorAll(".celda")
    .forEach((celda) => (celda.textContent = ""));
  turno = "X";
  juegoTerminado = false;
  mensaje.textContent = "";
}
