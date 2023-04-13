package com.example.tpchifoumi;
import java.util.Random;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import static java.lang.System.out;

@WebServlet(urlPatterns ={"/", "/play"})
public class play extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request
                .getRequestDispatcher("/WEB-INF/Play.jsp")
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int partiesGagneesUtilisateur = 0;
        int partiesGagneesOrdinateur = 0;
        String choix = request.getParameter("choix");

        String[] choixPossibles = {"feuille", "ciseaux", "pierre"};
        String Finale = null;
        Random random = new Random();
        int index = random.nextInt(3);

        String choixOrdinateur = choixPossibles[index];

        String gagnant;
        if (session.getAttribute("partiesGagneesUtilisateur") != null) {
            partiesGagneesUtilisateur = (int) session.getAttribute("partiesGagneesUtilisateur");
        }
        if (session.getAttribute("partiesGagneesOrdinateur") != null) {
            partiesGagneesOrdinateur = (int) session.getAttribute("partiesGagneesOrdinateur");
        }
        if (choix.equals(choixOrdinateur)) {
            gagnant = "Match nul !";
        } else if (choix.equals("ciseaux") && choixOrdinateur.equals("feuille")
                || choix.equals("feuille") && choixOrdinateur.equals("pierre")
                || choix.equals("pierre") && choixOrdinateur.equals("ciseaux")) {
            partiesGagneesUtilisateur++;
            gagnant = "tu a gagné !";
        } else {
            partiesGagneesOrdinateur++;
            gagnant = "L'ordinateur a gagné !";
        }
        session.setAttribute("partiesGagneesUtilisateur", partiesGagneesUtilisateur);
        session.setAttribute("partiesGagneesOrdinateur", partiesGagneesOrdinateur);

        if (partiesGagneesOrdinateur == 3 ||partiesGagneesUtilisateur == 3){
            session.invalidate();
            if (partiesGagneesOrdinateur == 3){

                Finale = "l'ordinateur a gagné ";
            }
            if (partiesGagneesUtilisateur == 3){

                Finale = "Tu a gagné ";
            }
            request.setAttribute("Finale", Finale);
            request.setAttribute("gagnant", gagnant);
            request.setAttribute("partiesGagneesUtilisateur", partiesGagneesUtilisateur);
            request.setAttribute("partiesGagneesOrdinateur", partiesGagneesOrdinateur);

            request.setAttribute("choix", choix);
            request.setAttribute("choixOrdinateur", choixOrdinateur);
            request.setAttribute("gagnant", gagnant);
            request
                    .getRequestDispatcher("/WEB-INF/resultatFinal.jsp")
                    .forward(request, response);
        }
            request.setAttribute("gagnant", gagnant);
            request.setAttribute("partiesGagneesUtilisateur", partiesGagneesUtilisateur);
            request.setAttribute("partiesGagneesOrdinateur", partiesGagneesOrdinateur);

            request.setAttribute("choix", choix);
            request.setAttribute("choixOrdinateur", choixOrdinateur);
            request.setAttribute("gagnant", gagnant);
            request
                    .getRequestDispatcher("/WEB-INF/resultat.jsp")
                    .forward(request, response);
        }

    }