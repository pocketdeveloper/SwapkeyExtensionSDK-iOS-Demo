//
//  SKEStrings.m
//  Demo
//
//  Created by Carolina Franco on 11/3/18.
//  Copyright © 2018 Carolina Franco. All rights reserved.
//

#import "SKEStrings.h"

@implementation SKEStrings

+(NSString *)SKENoInternetConexion
{ return @"No se encontró conexión a internet"; }

+(NSString *)SKENoAccess
{  return @"Habilita el \"Acceso Completo\" en ajustes"; }

+(NSString *)SKELoading
{ return @"Cargando ..."; }

+(NSString *)SKEOpenApp
{ return @"Abrir App"; }

+(NSString *)SKEOpenSettings
{ return @"Abrir Ajustes"; }

+(NSString *)SKENotDeviceID
{ return @"Debes activar el teclado dentro de la app"; }

+(NSString *)SKENoBalanceCard
{ return @"Debes agregar al menos una tarjeta o tener al menos $10 en tu balance"; }

+(NSString *)SKENoPin
{ return @"Por seguridad debes crear un NIP desde la aplicación"; }

+(NSString *)SKENotAllowedHost
{ return @"No puedes usar esta app con el teclado"; }

+(NSString *)SKEUserNotLoaded
{ return @"No hemos podido cargar tu usuario."; }

+(NSString *)SKETitleError
{ return @"¡Ups!"; }

+(NSString *)SKEMaximumAmount
{ return @"El monto máximo es: "; }

+(NSString *)SKEMinimumAmount
{ return @"El monto mínimo es: "; }

+(NSString *)SKEBtnContinueSend
{ return @"Continuar"; }

+(NSString *)SKEBtnSend
{ return @"Enviar"; }

+(NSString *)SKENoValidPIN
{ return @"El NIP ingresado es incorrecto"; }

+(NSString *)SKEExceedMaxPINAttemps
{ return @"Has sobre pasado el máximo de intentos"; }

+(NSString *)SKEHadSendYou
{ return @" %@ te envió %@ con Swap. Cóbralo aquí: %@"; }

+(NSString *)SKEHadSendYouWA
{ return @" %@ te envió *%@* con *Swap*. Cóbralo aquí: %@"; }

+(NSString *)SKESendTitle
{ return @"Enviaste:"; }

+(NSString *)SKEPaymentErrorTitle
{ return @"Ups, algo salió mal. "; }

+(NSString *)SKEAuthorizePaymentTouchID
{ return @"Autoriza tu pago!"; }

+(NSString *)SKENoTransacctions
{ return @"Aún no tienes transacciones"; }

+(NSString *)SKEErrorGettingTransacctions
{ return @"Error al obtener transacciones"; }

+(NSString *)SKEAuthenticationError
{ return @"Error de autenticación"; }

+(NSString *)SKENextKeyboard
{ return @"Sig. Teclado"; }

+(NSString *)SKESuccesfullCanceled
{ return @"Cancelado correctamente."; }

@end
