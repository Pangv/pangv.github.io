(function(){
    
    app = angular.module('cocktailModule', []); 
    
    app.controller('cocktailController', function($scope){
       
        $scope.cocktails = [
        {
            name: "Cuba Libre",
            alk: "Rum",
            sonst: "Limetten, Brauner Zucker, Cola, Eis",
            desc: "nach Bedarf zusammenkippen",
            help: "Oliver"

        }, {
            name: "Feigling mit Sprite",
            alk: "Schnaps",
            sonst: "Sprite",
            desc: "nach Bedarf zusammenkippen",
            help: "Oliver"

        }, {
            name: "43er mit Milch",
            alk: "Likör 43",
            sonst: "Milch",
            desc: "1 Teil 43er 3 Teile Milch",
            help: "Leonidas"

        }, {
            name: "White Russian",
            alk: "Wodka",
            sonst: "Kahlúa, Sahne/Milch",
            desc: "2 Teile Wodka und 2 Teile Sahne auf einen Teil Kahlua",
            help: "Alexander"

        }, {
            name: "Black Russian",
            alk: "Wodka",
            sonst: "Kahlúa",
            desc: "2 Teile Wodka auf einen Teil Kahlúa",
            help: "Alexander"

        },



    ];
        
    });
    
    
    
})();