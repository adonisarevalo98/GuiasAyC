%{ 
#include <stdlib.h> 
#include "ejercicio2.tab.h" 
%} 
ERemail [a-zA-Z0-9]+@[a-zA-Z0-9]+"."+[a-zA-Z0-9]+
ERbasica   [a-zA-Z]+
ERmedia [a-zA-Z0-9]+
ERavanzada [a-zA-Z0-9@.!#$%&'*+/=?]+
%% 
                 
{ERemail}            { return valEmail;}
{ERbasica}            { return valBasica;}
{ERmedia}            { return valMedia;}
{ERavanzada}            { return valAvanzada;}
. ;

