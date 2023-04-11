
programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> math

	//declaração de variáveis globais
	inteiro danoFogo	= 200
	inteiro danoAgua 	= 300
	inteiro danoTerra 	= 400
	inteiro danoAr 	= 100

	
	funcao inteiro fire(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Fogo.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 20
		}senao se(nivelMagia == 2){
			tamanhoCirculo = 30
		}senao se(nivelMagia == 3){
			tamanhoCirculo = 50
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}

	
	funcao inteiro water(inteiro nivelMagia){ // funcao para calcular o tamanho da magia da agua.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 10
		}senao se(nivelMagia == 2){
			tamanhoCirculo = 25
		}senao se(nivelMagia == 3){
			tamanhoCirculo = 40
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}
	
	funcao inteiro earth(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Terremoto.

		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 25
		}senao se(nivelMagia == 2){
			tamanhoCirculo = 55
		}senao se(nivelMagia == 3){
			tamanhoCirculo = 70
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}
	
	funcao inteiro air(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Ar.

		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 18
		}senao se(nivelMagia == 2){
			tamanhoCirculo = 38
		}senao se(nivelMagia == 3){
			tamanhoCirculo = 60
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}

	funcao real calculoDistancia(inteiro x1, inteiro y1, inteiro x2, inteiro y2){    //calcular distancia entre dois pontos
		real distanciaX, distanciaY, distanciaTotal

		distanciaX = x2 - x1
		distanciaY = y2 - y1
		
		distanciaTotal = math.raiz(((distanciaX * distanciaX) + (distanciaY * distanciaY)), 2)

		retorne distanciaTotal
	}

	funcao inteiro calculoAlturaLargura(){
		inteiro alturaLargura = 0

		alturaLargura = ut.sorteia(1, 1000)

		retorne alturaLargura
	}

	funcao inteiro calculoCoordenada(){
		inteiro coordenadaBoss = 0

		coordenadaBoss = ut.sorteia(0, 1000)

		retorne coordenadaBoss
	}

	funcao real calculoResistenciaDano(){
		
		real resistenciaDano
		inteiro dano = 0, armadura = 0
	
		resistenciaDano = (dano * 1) - (armadura / (armadura + 100))

		retorne resistenciaDano
	}

	funcao vazio mostraLogo() {

    escreva("\t\t||                                                            ==                    ||\n")
    escreva("\t\t||                .                       *                -####@=:        .        ||\n")
    escreva("\t\t||    *                       .                         -**#@@@@@=:                 ||\n")
    escreva("\t\t||                                                   .##@@#####@@@@:                ||\n")
    escreva("\t\t||                    .          *                 ###@#@WWW       ##               ||\n")
    escreva("\t\t||                                               ####@@@WWW         #      *        ||\n")
    escreva("\t\t||       .                                    ##@@@=##@@@@   .                      ||\n")
    escreva("\t\t||                   *                     --#@#####@@@@@@#                         ||\n")
    escreva("\t\t||                                       @==##WW@@@@##@@@@#            *            ||\n")
    escreva("\t\t||                          .          ##======##@W@@@@@W=                          ||\n")
    escreva("\t\t||                                    *@###@@@@@@@@@@@@@@W#-     *            .     ||\n")
    escreva("\t\t||        *                         *@@@@@@@@@############@@                        ||\n")
    escreva("\t\t||                      .         #@##=========#@@@@@@@@@@@W*           .           ||\n")
    escreva("\t\t||                             #########=====############@@WW                       ||\n")
    escreva("\t\t||              *            @@@W@@@@@@@@@@@@@@@@@@@@@@@@@@W@      .                ||\n")
    escreva("\t\t||                          ===##@@WW@@#####@@@@@@@@@@@WWWW@W@*              *      ||\n")
    escreva("\t\t||        .              +@===######@@@@@@######@############@W=*                   ||\n")
    escreva("\t\t||                   @@@W@===###@@######@@@@@@@@@@@@@@###########@                  ||\n")
    escreva("\t\t||         @####==###@@W#=##################@@@@@@#############@@@@@=*#WWW@@==      ||\n")
    escreva("\t\t||      ###@#########@ &&&   %%  &  & %%%% &&   &&  %%%   &&&&  %%%% WWWWW@@@@#@@@  ||\n")
    escreva("\t\t||    @#=#@@#@@####### &  & %  % & &  %    & & & & %   % &      %    @@@@#######@#@ ||\n")
    escreva("\t\t||      W##@#@@@###### &  & %  % &    %%%  &  &  & %%%%% &  &&& %%%  @@########@@#@ ||\n")
    escreva("\t\t||      :@=#@@@@@##### &&&  %  % & &  %    &     & %   % &    & %    ############@  ||\n")
    escreva("\t\t||        @=########== &     %%  &  & %%%% &     & %   %  &&&&  %%%% #########@@+   ||\n")
    escreva("\t\t||  *         #########===######################@@@@@@@@@@@@########@@@W@           ||\n")
    escreva("\t\t||        *           =@@W@@@@@@@@@@@@@@@@@@@@@@@@@WWW@@@@W@@@WW@#=         *       ||\n")
    	
	}

	
	funcao inicio(){

		real altura, largura, coordenadaX, coordenadaY, centroX, centroY
		inteiro casoTeste, tamanhoCirculo = 0, coordenadaFinalX, coordenadaFinalY, distanciaX, distanciaY
		real distancia
		inteiro quantidade = 0  
		logico bossSorteado = falso
		logico escolhaMago = falso
		
		//Magias
		inteiro nivelMagia= 0
		inteiro tipoMagia = 0
		inteiro dano = 0

		//Atributos Base
		inteiro vidaBase = 3000
		inteiro protecaoBase = 1500
		inteiro sorteBase = 100

		
		//Atributos Mago 1
		inteiro vidaMagoP1 = 0 
		inteiro protecaoMagoP1 = 0
		inteiro sorteMagoP1 = 0
		inteiro danoMagoP1 = 0
		inteiro tipoMago = 0
		
		
		//Atributos Boss ou Mago2
		inteiro vidaMagoP2B = 0 
		inteiro protecaoMagoP2B = 0
		inteiro sorteMagoP2B = 0
		inteiro danoMagoP2B = 0
		cadeia tipoBoss = ""
		inteiro vidaBoss = 2500
		inteiro rngSorteioBoss
		inteiro rngBossCombate 


		//Combate
		inteiro rng
		inteiro resultado = 0

		mostraLogo()
		
		faca{
			escreva("Digite o número de casos de teste: ")
			leia(casoTeste)

			se(casoTeste < 1 ou casoTeste > 1000){
				escreva("Quantidade inválida, tente novamente!\n\n")
			}
		}enquanto(casoTeste < 1 ou casoTeste > 1000)

		enquanto(quantidade < casoTeste){
						
			faca{
				escreva("Informe a altura, a largura e as coordenadas X e Y do retângulo: ")
				leia(altura, largura, coordenadaX, coordenadaY)

				se(altura < 1 ou altura > 1000){
					escreva("Altura inválida, tente novamente!\n")
				}
				se(largura < 1 ou largura > 1000){
					escreva("Largura inválida, tente novamente!\n")
				}
				se(coordenadaX < 0 ou coordenadaX > 1000){
					escreva("Coordenada X inválida, tente novamente!\n")
				}
				se(coordenadaY < 0 ou coordenadaY > 1000){
					escreva("Coordenada Y inválida, tente novamente!\n")
				}
				
			}enquanto((altura < 1 ou altura > 1000) ou (largura < 1 ou largura > 1000) ou (coordenadaX < 0 ou coordenadaX > 1000) ou (coordenadaY < 0 ou coordenadaY > 1000))

			se(escolhaMago == falso){
				escreva("Informe qual mago deseja, a magia, nivel: " + "\n")	
				escreva("1 - Mago de Fogo"  + "       |       " + "1 - Magia de Fogo" +"        |       1 - Nivel 1" + "\n")
				escreva("2 - Mago de Água" + "       |       " + "2 - Magia de Água" + "        |       2 - Nivel 2" + "\n")
				escreva("3 - Mago de Terra" + "      |       " + "3 - Magia de Terra" + "       |       3 - Nivel 3" + "\n")
				escreva("4 - Mago de Ar" + "         |       " + "4 - Magia de Ar" + "\n")	
				leia(tipoMago, tipoMagia, nivelMagia)
			
			}

			se(escolhaMago == verdadeiro){
				escreva("Informe qual a magia e o respectivo nivel: " + "\n")	
				escreva("1 - Magia de Fogo" +"         |       1 - Nivel 1" + "\n")
				escreva("2 - Magia de Água" + "        |       2 - Nivel 2" + "\n")
				escreva("3 - Magia de Terra" + "       |       3 - Nivel 3" + "\n")
				escreva("4 - Magia de Ar" + "\n")	
				leia(tipoMagia, nivelMagia)
			}
			
			escolhaMago = verdadeiro
			
			se(tipoMago == 1) {
				danoFogo *= 1.25
			}
			senao se(tipoMago == 2) {
				protecaoBase += 200
				protecaoMagoP1 = protecaoBase
			}
			senao se(tipoMago == 3){
				vidaBase += 1500
				vidaMagoP1 = vidaBase
			}
			senao se(tipoMago == 4){
				sorteBase += 10
				sorteMagoP1 = sorteBase
			}
			
			se(bossSorteado == falso) {
				escreva("Todo grande herói tem um enorme inimigo ! Vamos sortear seu adversário...\n ")
				rngSorteioBoss = sorteia (1, 4)
				se (rngSorteioBoss == 1) {
					tipoBoss = "fire"
				   escreva("\nIncêndio na arena !! Seu Boss será de FOGO !\n")	
				} 
				senao se(rngSorteioBoss == 2) {
					tipoBoss = "water"
					escreva("\nPrepara a prancha de surf, a arena vai inundar !! Seu Boss será de Água\n")
				}
				senao se(rngSorteioBoss == 3) {
					tipoBoss = "earth"
					escreva("\nSe pedir por chuva tem que aguentar a lama !! Seu Boss será de Terra\n")  
				}
				senao se(rngSorteioBoss == 4){
					tipoBoss = "air"
					escreva("\nOu você cria asas, ou será levado pelo tornado !! Seu Boss será de Ar\n")
				}
				bossSorteado = verdadeiro
			}
			
			faca{
				escreva("\nO centro X e o centro Y: ")
				leia(centroX, centroY)

				se(tipoMagia != 1 e tipoMagia  != 2 e  tipoMagia != 3 e tipoMagia != 4){
					escreva("Magia inválida, tente novamente: \n")
					leia(tipoMagia)
				}
				se(nivelMagia < 1 ou nivelMagia > 4){
					escreva("Nível inválido, tente novamente: \n")
					leia(nivelMagia)
				}
				se(centroX < 0 ou centroX > 1000){
					escreva("Centro X inválido, tente novamente!\n")
				}
				se(centroX < 0 ou centroX > 1000){
					escreva("Centro X inválido, tente novamente!\n")
				}
				
			}enquanto((tipoMagia != 1 e tipoMagia  != 2 e  tipoMagia != 3 e tipoMagia != 4) ou (nivelMagia < 1 ou nivelMagia > 4) ou (centroX < 0 ou centroX > 1000) ou (centroY < 0 ou centroY > 1000))
			
			// Condição para calcular o nível da mágia de acordo com a string "magia".
			se(tipoMagia == 1){
				tamanhoCirculo = fire(nivelMagia)
			} 
			senao se (tipoMagia == 2){
				tamanhoCirculo = water(nivelMagia)
			}
			senao se (tipoMagia == 3){
				tamanhoCirculo = earth(nivelMagia)
			} 
			senao se (tipoMagia == 4){
				tamanhoCirculo = air(nivelMagia)
			}

			//verificar se o inimigo está dentro da área de explosão
			distancia = calculoDistancia(coordenadaX + largura/2, coordenadaY + altura/2, centroX, centroY)

			escreva("\nVamos ver o que os dados dizem !\n")

			rng = sorteia (1 , 100) 
			escreva("Seu número sorteado é: ", rng, "\n")

			se (rng <= sorteBase) {
				se(distancia <= tamanhoCirculo){
					se(tipoMagia == 1){
						se(tipoBoss == "fire"){
						dano = danoFogo / 4
						} senao {
						dano = danoFogo
						resultado = vidaBoss
						}
					
 // ---------------------------------------------------------------------------------------
						
						se(tipoBoss == "water"){
						dano = danoFogo*2
						} senao {
						dano = danoFogo
						resultado = vidaBoss
						}
		
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "earth"){
						dano = danoFogo
						} senao {
						dano = danoFogo
						resultado = vidaBoss
						}
					
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "air"){
							dano = danoFogo / 2
						} senao {
						dano = danoFogo
						resultado = vidaBoss
						}
					}
// ----------------------------------------------------------------------------------------	
					
						para(inteiro k = 1; k <= 1; k++){
							resultado = resultado - dano
							vidaBoss = resultado
						}
						escreva("\nExtinção dos dinossauros ?? NÃO, É DO INIMIGO MESMO!! Dano: " + dano + "\n")
							se(vidaBoss > 0){
								escreva("Vida restante do Boss: " + resultado + "\n")
						}
					}senao se (tipoMagia == 2){
						se(tipoBoss == "fire"){
							dano = danoAgua / 2
						} senao {
							dano = danoAgua
						resultado = vidaBoss
						}
					
 // ---------------------------------------------------------------------------------------
						
						se(tipoBoss == "water"){
						dano = danoAgua / 4
						} senao {
						dano = danoAgua
						resultado = vidaBoss
						}
		
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "earth"){
						dano = danoAgua
						} senao {
						dano = danoAgua
						resultado = vidaBoss
						}
					
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "air"){
							dano = danoAgua*2
						} senao {
						dano = danoAgua
						resultado = vidaBoss
						}
						
						para(inteiro k = 1; k <= 1 ; k++){
							resultado = resultado - dano
							vidaBoss = resultado
						}
						escreva("\nHora de nadar !! TSUNAMI NO INIMIGO ! Dano: " + dano + "\n")
							se(vidaBoss > 0){
								escreva("Vida restante do Boss: " + resultado + "\n")
				   		}
					}      			
					senao se (tipoMagia == 3){ 
						se(tipoBoss == "fire"){
							dano = danoTerra
						} senao {
							dano = danoTerra
						resultado = vidaBoss
						}
					
 // ---------------------------------------------------------------------------------------
						
						se(tipoBoss == "water"){
						dano = danoTerra
						} senao {
						dano = danoTerra
						resultado = vidaBoss
						}
		
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "earth"){
						dano = danoTerra / 4
						} senao {
						dano = danoTerra
						resultado = vidaBoss
						}
					
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "air"){
							dano = danoTerra
						} senao {
						dano = danoTerra
						resultado = vidaBoss
						}
					
						para(inteiro k = 1; k <= 1; k++){
							resultado = resultado - dano
							vidaBoss = resultado
						}
						escreva("\nTá em choque ?? HORA DE TREMER COM ESSE TERREMOTO ! Dano: " + dano + "\n")
							se(vidaBoss > 0){
								escreva("Vida restante do Boss: " + resultado + "\n")
				   		}    				
					} senao se (tipoMagia == 4){
						se(tipoBoss == "fire"){
							dano = danoAr*2
						} senao {
							dano = danoAr
						resultado = vidaBoss
						}
					
 // ---------------------------------------------------------------------------------------
						
						se(tipoBoss == "water"){
						dano = danoAr / 2
						} senao {
						dano = danoAr
						resultado = vidaBoss
						}
		
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "earth"){
						dano = danoAr
						} senao {
						dano = danoAr
						resultado = vidaBoss
						}
					
// ----------------------------------------------------------------------------------------
						
						se(tipoBoss == "air"){
							dano = danoAr / 4
						} senao {
						dano = danoAr
						resultado = vidaBoss
						}
						
						para(inteiro k = 1; k <= 1 ; k++){
							resultado = resultado - dano
							vidaBoss = resultado
						}
						escreva("\nSe segura que tá na hora de voar com esse tornado!! Dano: " + dano + "\n")
							se(vidaBoss > 0){
								escreva("Vida restante do Boss: " + resultado + "\n")
						}
				   	}    
				}    			
				senao{
					escreva("Você teve sorte nos dados mas não na magia jovem! Não atingiu o oponente !\n")
				}
				se(vidaBoss <= 0){
				   	escreva("Boss Derrotado, você ganhou!")
				   	quantidade = 1000
				   	pare
				} 
			senao{
				 escreva("Sua sorte está baixa companheiro! Você não irá atacar o inimigo nesta rodada! \n")
			}

			escreva("Tudo que vai, volta! Vamos observar o que os dados dizem para o seu Boss !\n")

			rngBossCombate = sorteia (1 , 100) 
			escreva("O número sorteado para o Boss foi: ", rngBossCombate)

			se (rngBossCombate <= sorteBase) {
					se(tipoBoss == "fire"){
						resultado = vidaBase 
						para(inteiro k = 1; k <= 1; k++){
							resultado = resultado - danoFogo
							vidaBase = resultado
						}
						escreva("\nChama os bombeiros !! Hora de incendiar com a vingança do inimigo ! Dano do Boss: " + danoFogo + "\n")
							se(vidaBase > 0){
								escreva("Vida do mago restante: " + vidaBase + "\n")
						}
					}se(tipoBoss == "water"){  
						resultado = vidaBase 
						para(inteiro k = 1; k <= 1 ; k++){
							resultado = resultado - danoAgua
							vidaBase = resultado
						}
						escreva("\nBebeu água ?? Tá com sede ?? Olha o tsunami do inimigo ! Dano do Boss: " + danoAgua + "\n")
							se(vidaBase > 0){
								escreva("Vida do mago restante: " + vidaBase + "\n")
				   		}      			
					}  se(tipoBoss == "earth"){
						resultado = vidaBase
						para(inteiro k = 1; k <= 1; k++){
							resultado = resultado - danoTerra
							vidaBase = resultado
						}
						escreva("\nDEZ GRAUS NA ESCALA RICHTER !! A vingança do inimigo veio forte ! Dano do Boss: " + danoTerra + "\n")
							se(vidaBase > 0){
								escreva("Vida restante do mago: " + vidaBase + "\n")
				   		}    				
					} se(tipoBoss == "air"){
						resultado = vidaBase
						para(inteiro k = 1; k <= 1 ; k++){
							resultado = resultado - danoAr
							vidaBase = resultado
						}
						escreva("\nA vingança veio no estilo Ícaro !! O inimigo vai te fazer voar para o sol com esse tornado !  Dano do Boss: " + danoAr + "\n")
							se(vidaBase > 0){
								escreva("Vida restante do mago: " + vidaBase + "\n")
						}
				   	}        			
				se(vidaBase <= 0){
				   	escreva("Ninguém disse que seria fácil ! Você foi derrotado !") 
				   	pare
				} 
			}senao{
				 escreva("Quantos trevos de quatro folhas você está segurando ?? O inimigo não irá atacar nessa rodada !\n")
			}
			
			danoFogo = 200
			quantidade++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1992; 
 * @DOBRAMENTO-CODIGO = [109];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */