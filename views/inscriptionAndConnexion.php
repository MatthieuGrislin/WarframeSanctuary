<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#inscriptionAndConnexion">
            Inscription / Connexion
        </button>
        <!-- -->
        <!-- Début fenêtre modal -->
        <div class="modal fade" id="inscriptionAndConnexion" tabindex="-1" role="dialog" aria-labelledby="inscriptionAndConnexion" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Inscription et Connexion</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-6 border-right text-center">
                                <p class="my-2">Si tu veux t'inscrire c'est ici</p>
                                <a href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/' ?>inscription.php" class="btn my-3 btn-secondary">Inscription</a>
                            </div>
                            <div class="col-6 text-center">
                                <p class="my-2">Si tu veux te connecter c'est ici</p>
                                <a href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/' ?>connexion.php" class="btn my-3 btn-secondary">Connexion</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>