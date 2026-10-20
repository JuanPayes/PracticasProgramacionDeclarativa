package org.example;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;

import java.io.InputStream;
import java.util.regex.Pattern;

public class Connection {

    // Numero entero o decimal, con signo opcional: 5, -3, 2.5
    private static final Pattern NUMERO = Pattern.compile("-?\\d+(\\.\\d+)?");

    private final Prolog engine = new Prolog();

    public Connection() throws Exception {
        try (InputStream in = getClass().getResourceAsStream("/calculo.pl")) {
            if (in == null) throw new IllegalStateException("No se encontró calculo.pl");
            engine.setTheory(new Theory(in));
        }
    }

    /**
     * Envía la consulta a Prolog: predicado(A, B, R).
     * El predicado ("suma" o "resta") y los dos números vienen desde la interfaz.
     */
    public String consultar(String predicado, String a, String b) throws Exception {
        // Validamos antes de armar la consulta para no mandar texto arbitrario a Prolog
        if (!NUMERO.matcher(a).matches() || !NUMERO.matcher(b).matches()) {
            throw new IllegalArgumentException("Ingresá dos números separados por coma");
        }

        SolveInfo info = engine.solve(predicado + "(" + a + ", " + b + ", R).");
        return info.isSuccess() ? info.getTerm("R").toString()
                                : "Sin solución para esa expresión";
    }
}
