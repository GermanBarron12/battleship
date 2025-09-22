class Nombre {
  late String candidato;

  Nombre(String c) {
    if (c.length < LongitudMinimaPermitida) {
      throw LongitudMinimaExcepcion();
    }
    if (c.length > LongitudMaximaPermitida) {
      throw LongitudMaximaExcepcion();
    }

  
    final regex = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$');
    if (!regex.hasMatch(c)) {
      throw CaracterInvalidoExcepcion();
    }

    candidato = c;
  }
}

const LongitudMinimaPermitida = 5;
const LongitudMaximaPermitida = 15;

class LongitudMinimaExcepcion extends Error {}
class LongitudMaximaExcepcion extends Error {}
class CaracterInvalidoExcepcion extends Error {}
