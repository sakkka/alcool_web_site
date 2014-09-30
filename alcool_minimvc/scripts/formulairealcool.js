
$(function() {
					var testvolume = false;
					var testprix = false;
					var teststock = false;
					var testdegre = false;
					$('#ajouter').prop('disabled', true);
					$('#volume').blur(function(){
						var volume = $('#volume').val();
						if (isNaN(volume) == true){
							$('#errorvolume').text("Le volume n'est pas valide");
							testvolume = false;
						}
						else{
							$('#errorvolume').text("");
							testvolume = true;
						}
					});
					$('#prix').blur(function(){
						var prix = $('#prix').val();
						if (isNaN(prix) == true){
							$('#errorprix').text("Le prix n'est pas valide");
							testprix = false;
						}
						else{
							$('#errorprix').text("");
							testprix = true;
						}
					});
					$('#stock').blur(function(){
						var stock = $('#stock').val();
						if (isNaN(stock) == true){
							$('#errorstock').text("Le stock n'est pas valide");
							teststock = false;
						}
						else{
							$('#errorstock').text("");
							teststock = true;
						}
					});
					$('#degre').blur(function(){
						var degre = $('#degre').val();
						if (isNaN(degre) == true){
							$('#errordegre').text("Le degre n'est pas valide");
							testdegre = false;
						}
						else{
							if (degre >= 90){
								alert("A ce niveau ce n'est plus de l'alcool que vous vendez mais du carburant!");
								$('#errordegre').text("le degre n'est pas valide");
								testdegre = false;
							}
							else{
								$('#errordegre').text("");
								testdegre = true;
							}
						}
					});
					$('#formajout :input').each(function(){ 
						$(this).blur(function(){
							var test = true;
							$('#formajout :input').each(function(){
								if ($(this).val() == ""){
									test = false;
								}
							});
							if (testvolume && testdegre && testprix && teststock && test){
								$('#ajouter').prop('disabled',false);
							}
							else {
								$('#ajouter').prop('disabled',true);
							}
							if (test == false){
								$("#errorajout").text("Vous n'avez pas saisi tous les champs");
							}
							else{
								$("#errorajout").text("");
							}
						});
					});
});
