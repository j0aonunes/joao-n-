programa
{
	inclua biblioteca Calendario
	inclua biblioteca Util 	
	inteiro vagaN[3], vagaG[3] , vagaI[3], vagaP[3], opcao, opcao2, opcao3, opcao4, opcao5, codigo, piso 
	
	
	funcao inicio()	
	{			
		
	vagaN[0] = 50
	vagaN[1] = 50
	vagaN[2] = 50
	
	vagaG[0] = 10
	vagaG[1] = 10
	vagaG[2] = 10
		
	vagaI[0] = 20
	vagaI[1] = 20
	vagaI[2] = 20
		
	vagaP[0] = 20
	vagaP[1] = 20
	vagaP[2] = 20
	
		enquanto(vagaN[0] <= 50 e vagaN[1] <= 50 e vagaN[1] <= 50 e vagaG[0] <= 10 e vagaG[1] <= 10 e vagaG[2] <= 10 e vagaI[0] <= 20 e vagaI[1] <= 20 e vagaI[2] <= 20 e vagaP[0] <= 20 e vagaP[1] <= 20 e vagaP[2] <= 20)
		{
			
			limpa()
			escreva("----------------------------\n")
			escreva(" Estacionamento inteligente \n       By: MIRO'S\n")
			escreva("----------------------------\n")
	
			escreva("Bem vindo ao estacionamento, escolha sua opção com os números abaixo\n")
			escreva("\n[1] - Entrada\n")
			escreva("\n[2] - Saida\n")
			leia(opcao2)

				se(opcao2 == 1)
				{
					limpa()
					escreva("\nEscolha qual seu tipo de vaga selecionando o número abaixo\n")
					escreva("\n[1] - Não possuo vaga preferencial\n")
					escreva("\n[2] - Possuo vaga preferencial\n")
				
						escolher()	
				}
				senao se(opcao2 == 2)
				{
					escolherSD()
				}
		}
	}
	funcao escolher()
	{
		leia(opcao)
		escolha (opcao){
	
			caso 1:
				limpa()
				escreva("\n",vagaN[0], " vagas disponiveis no |Piso 1|\n")
				escreva("\n",vagaN[1], " vagas disponiveis no |Piso 2|\n")
				escreva("\n",vagaN[2], " vagas disponiveis no |Piso 3|\n")
			se (vagaN[0] > vagaN[1] e vagaN[0]> vagaN[2]){
				escreva("\nRecomendamos o Piso 1, pois possui mais vagas disponiveis\n")
			}
		 	se (vagaN[1]> vagaN[0] e vagaN[1]> vagaN[2]){
				escreva("\nRecomendamos o Piso 2, pois possui mais vagas disponiveis\n")
			}
			se (vagaN[2]> vagaN[0] e vagaN[2]> vagaN[1]){
				escreva("\nRecomendamos o Piso 3, pois possui mais vagas disponiveis\n")
			}
			senao {
				escreva("\nTodos os pisos tem a mesma quantidade de vaga\n")
			}
			Util.aguarde(2000)
			NVNP()
			
			pare
			
			caso 2:
				limpa()
				escreva("Qual tipo de vaga preferencial você possui?\n")
				escreva("\n[1] - Gestante\n[2] - Idoso\n[3] - Portador de deficiencia\n")
				leia(opcao3)
	
				escolha (opcao3){
					caso 1:
						limpa()
						escreva("\n",vagaG[0], " vagas disponiveis no |Piso 1|\n")
						escreva("\n",vagaG[1], " vagas disponiveis no |Piso 2|\n")
						escreva("\n",vagaG[2], " vagas disponiveis no |Piso 3|\n")
						Util.aguarde(2000)
						NVGP()
						
				       
					pare
		
					caso 2:
						limpa()
						escreva("\n",vagaI[0], " vagas disponiveis no |Piso 1|\n")
						escreva("\n",vagaI[1], " vagas disponiveis no |Piso 2|\n")
						escreva("\n",vagaI[2], " vagas disponiveis no |Piso 3|\n")
						Util.aguarde(2000)
						NVIP()
					pare
					
					caso 3:
						limpa()
						escreva("\n",vagaP[0], " vagas disponiveis no |Piso 1|\n")
						escreva("\n",vagaP[1], " vagas disponiveis no |Piso 2|\n")
						escreva("\n",vagaP[2], " vagas disponiveis no |Piso 3|\n")
						Util.aguarde(2000)
						NVPP()
					pare
			}
			
		}
	}	
	funcao NVIP()
	{
 	codigo=Util.sorteia(1, 300)
	limpa()
	
	escreva("Qual Piso deseja ir?")
	escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	leia(piso)	
	
	escolha (piso){
		caso 1:
			se (vagaI[0] > 0){
				limpa()				
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Idoso \n")
				escreva("        Piso: 1 \n")				
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2000)
				NVIP()
		}
		pare
		
		caso 2:
			se (vagaI[1] > 0){
				limpa()				
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Idoso \n")
				escreva("        Piso: 2 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2000)
				NVIP()	
		}
		pare
		
		caso 3:
			se (vagaI[2] > 0){	
				limpa()				
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Idoso \n")
				escreva("        Piso: 3 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)				
				}
			senao{
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2000)
				NVIP()
				}
		pare
	}			 
	limpa()				
	escreva("Carregando.")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando..")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando...")
	Util.aguarde(250)
	limpa()
	escreva("Pronto!")
	Util.aguarde(1000)
	limpa()
	
	escreva("Dirija-se ao piso escolhido. Até breve")
	Util.aguarde(2000)
		se( piso == 1 e codigo> 0){
			vagaI[0]--
	}
		senao se (piso ==2 e codigo> 0){
			vagaI[1]--
	}
		senao{
			vagaI[2]--
	}
	}
	funcao NVNP()
	{
	limpa()
	
	escreva("Qual Piso deseja ir?")
	escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	leia(piso)
	
	escolha (piso){
		caso 1:
			se (vagaN[0] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Comum \n")
				escreva("        Piso: 1 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2500)
				NVNP()	
		}
		pare
		
		caso 2:
			se (vagaN[1] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Comum \n")
				escreva("        Piso: 2 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2500)
				NVNP()	
		}
		pare
		
		caso 3:
			se (vagaN[2] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Comum \n")
				escreva("        Piso: 3 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2500)
				NVNP()			
		}
		pare
	}
	limpa()	
	codigo=Util.sorteia(1, 300)
	limpa()
				
	escreva("Carregando.")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando..")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando...")
	Util.aguarde(250)
	limpa()
	escreva("Pronto!")
	Util.aguarde(1000)
	limpa()
	
	escreva("Dirija-se ao piso escolhido. Até breve")
	Util.aguarde(2000)
	
		se( piso == 1 e codigo> 0){
			vagaN[0]--
	}
		senao se (piso ==2 e codigo> 0){
			vagaN[1]--
	}
		senao{
			vagaN[2]--
	}
	}
     funcao NVGP()
	{
	limpa()
	
	escreva("Qual Piso deseja ir?")
	escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	leia(piso)
	
	escolha (piso){
		caso 1:
			se (vagaG[0] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Gestante \n")
				escreva("         Piso: 1 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2000)
				NVGP()		
		}
		pare
		
		caso 2:
			se (vagaG[1] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Gestante \n")
				escreva("         Piso: 2 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(4000)
				NVGP()
		}
		pare
		
		caso 3:
			se (vagaG[2] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("----------------------------\n")
				escreva("      Vaga: Gestante \n")
				escreva("         Piso: 3 \n")
				escreva("----------------------------\n")					
				Util.aguarde(2000)
				NVGP()
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(4000)
				NVGP()	
		}
		pare
	}
	limpa()	
	codigo=Util.sorteia(1, 300)

	limpa()
				
	escreva("Carregando.")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando..")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando...")
	Util.aguarde(250)
	limpa()
	escreva("Pronto!")
	Util.aguarde(1000)
	limpa()
	
	escreva("Dirija-se ao piso escolhido. Até breve")
	Util.aguarde(2000)
		se( piso == 1 e codigo> 0){
			vagaG[0]--
	}
		senao se (piso ==2 e codigo> 0){
			vagaG[1]--
	}
		senao{
			vagaG[2]--
	}
	}
     funcao NVPP()
   	{
	limpa()
	
	escreva("Qual Piso deseja ir?")
	escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	leia(piso)
	escolha (piso){
		caso 1:
			se (vagaP[0] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("------------------------------\n")
				escreva("Vaga: Portador de deficiencia \n")
				escreva("          Piso: 1 \n")
				escreva("------------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(2000)
				NVPP()	
		}
		pare
		
		caso 2:
			se (vagaP[1] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("------------------------------\n")
				escreva("Vaga: Portador de deficiencia \n")
				escreva("          Piso: 2 \n")
				escreva("------------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(4000)
				NVPP()
		}
		pare
		
		caso 3:
			se (vagaP[2] > 0){
				limpa()
				escreva("Imprimindo.")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo..")
				Util.aguarde(250)
				limpa()
							
				escreva("Imprimindo...")
				Util.aguarde(250)
				limpa()
				escreva("|IMPRESSO|\n")
				escreva("------------------------------\n")
				escreva("Vaga: Portador de deficiencia \n")
				escreva("          Piso: 3 \n")
				escreva("------------------------------\n")					
				Util.aguarde(2000)
				}
			senao {
				limpa()
				escreva("Esse piso não possui vaga. Voltaremos a seleção de piso")
				Util.aguarde(4000)
				NVPP()
		}
		pare
	}
	limpa()	
	codigo=Util.sorteia(1, 300)
	 			 
	limpa()
				
	escreva("Carregando.")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando..")
	Util.aguarde(250)
	limpa()
				
	escreva("Carregando...")
	Util.aguarde(250)
	limpa()
	escreva("Pronto!")
	Util.aguarde(1000)
	limpa()
	
	escreva("Dirija-se ao piso escolhido. Até breve")
	Util.aguarde(2000)
		se( piso == 1 e codigo> 0){
			vagaP[0]--
	}	
		senao se (piso ==2 e codigo> 0){
			vagaP[1]--
	}
		senao{
			vagaP[2]--
	}
	}
     funcao escolherSD()    
     {

     limpa()
     escreva("\nEscolha qual tipo de vaga você usou?\n")
	escreva("\n[1] - Não usei vaga preferencial\n")
	escreva("\n[2] - Usei vaga preferencial\n")
     leia(opcao4)
	
     	se(opcao4 == 1)
     {    
	     	limpa()
	     	escreva("Qual Piso você usou?")
			escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
		     leia(piso)
		     
		     escolha(piso)
		     {
				caso 1:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaN[0]++
					Util.aguarde(1500)		
				pare
			
				caso 2:
					limpa()	
					escreva("Obrigado pela preferência, até breve")
					vagaN[1]++
					Util.aguarde(1500)
				pare
			
				caso 3:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaN[2]++
					Util.aguarde(1500)
				pare
	      }
     	 	
    }

    		senao se(opcao4 == 2)
    {
	    		limpa()
			escreva("Qual tipo de vaga preferencial você usou?\n")
			escreva("\n[1] - Gestante\n[2] - Idoso\n[3] - Portador de deficiencia\n")
			leia(opcao5)
      
    		se(opcao5 == 1)
			{
			limpa()
			escreva("Qual Piso você usou?")
			escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	    		leia(piso)
			
			escolha(piso)
		     {
				caso 1:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaG[0]++
					Util.aguarde(1500)		
				pare
		
				caso 2:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaG[1]++
					Util.aguarde(1500)
				pare
			
				caso 3:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaG[2]++
					Util.aguarde(1500)
				pare
		     }
			 	
			}	
					
	}
	
		se(opcao5 == 2)
	     {
	     	limpa()
			escreva("Qual Piso você usou?")
			escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	    		leia(piso)
			
			escolha(piso)
		     {
				caso 1:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaI[0]++
					Util.aguarde(1500)		
				pare
		
				caso 2:
			     	limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaI[1]++
					Util.aguarde(1500)
				pare
			
				caso 3:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaI[2]++
					Util.aguarde(1500)
				pare
	     } 			
				
	}      
		se(opcao5 == 3)
	     {
	     	limpa()
			escreva("Qual Piso você usou?")
			escreva("\n[1] - Piso 1\n[2] - Piso 2\n[3] - Piso 3\n")
	    		leia(piso)
			
			escolha(piso)
		     {
				caso 1:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaP[0]++
					Util.aguarde(1500)		
				pare
		
				caso 2:
			     	limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaP[1]++
					Util.aguarde(1500)
				pare
			
				caso 3:
					limpa()
					escreva("Obrigado pela preferência, até breve")
					vagaP[2]++
					Util.aguarde(1500)
				pare
	     } 	
	}	
				
	}      
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */