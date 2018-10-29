//
//  SKEOptions.m
//  Demo_Swapkey_ObjC
//
//  Created by Carolina Franco on 10/28/18.
//  Copyright © 2018 Carolina Franco. All rights reserved.
//

#import "SKEOptions.h"

@implementation SKEOptions

// Manejo de host(aplicaciones) permitidas
// Regresar NO cuando se detecte un host, no permitido
+(BOOL)isAllowedHost:(NSString *) host
{
    return YES;
}

// Regresar NO si en algún momento se quiere negar el acceso al teclado sin importar que
+(BOOL)shouldShowSendKeyboard
{
    return YES;
}

// Se utiliza para abrir la aplicación cuando no se está registrado,
// colocar aquí el scheme registrado que permita abrir la aplicación
+(NSString *)selfUrlToOpen
{
    return @"demo.ske://";
}

// Se utiliza para obetner recursos, poner aquí el bundle identifier DE LA EXTENSION del teclado
+(NSString *)bundleIdentifier
{
    return @"swap.Demo.DemoKeyboard";
}

// Se utiliza para obtener el device ID de los defultsç
// Colocar aquí el bundle del grupo habilitado
+(NSString *)getBundleGroup
{
    return @"group.swap.SKE";
}

// Se utiliza para saber si la aplicaciòn esta corriendo en modo bug
// Mostrará logs si está prendido
+(BOOL)debugMode
{
    return YES;
}

// Se utiliza para obtener de los defaults el DeviceID con el que se registrará el usuario
// Colocar el nombre del key en el que se guardará el DeviceID
+(NSString *)getVaribleToStoreDeviceID
{
    return @"deviceID";
}

@end
