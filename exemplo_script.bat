@echo off
cls
:menu
cls
color 38

date /t

echo Computador: %computername%        Usuario: %username%
                   
echo            OPCOES
echo 1. Desligar computador           
echo 2. Iniciar Calculadora           
echo 3. Iniciar Painel de Controle    
echo 4. Sair                          
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% GEQ 4 goto opcao4

:opcao1
cls
echo ==================================
shutdown -t 3600 -s -f -c "O seu computador sera desligado daqui a 1 hora... Contagem iniciada"
echo ==================================
goto menu

:opcao2
cls
calc.exe
pause
goto menu

:opcao3
cls
control.exe
pause
goto menu

:opcao4
cls
exit