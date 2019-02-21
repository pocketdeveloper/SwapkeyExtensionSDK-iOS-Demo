# SwapkeyExtensionSDK-iOS-Demo

Demo con ejemplo de implementación para el SDK de Swapkey

### Requisitos

- Cocoapods 
- Soportar iOS 8 o superior

## Instalar vía Pod

Para instalar el SDK vía cocoapods, se deberá agregar el siguiente pod:
```
pod 'SwapkeyExtensionSDK' 
```

### Ejemplo de podfile

Debido a que la extensión es un target diferente a la aplicación, se deberá instalar el pod que se pueda compartir en ambos target tanto el de la aplicación como el de la extensión del teclado

```
platform :ios, '8.0'
use_frameworks!

def swap_pods
	pod 'SwapkeyExtensionSDK'
end

target 'NombreTargetAplicacion' do
    swap_pods
end

target 'NombreTargetExtension' do
    swap_pods
end
```

Para instalar

```
pod install
```


## Inicializando SDK

Para inicializar el SDK, se deberá ejecutar el siguiente código

```
if ([Swapkey initializeWithKey:@"swap" isDevelopment:NO])
{
  [self setDeviceID];
}
```

### Setteando DeviceID

Se puede utilizar cualquier número como DeviceID, sin embargo, se recomienda utilizar el proporcionado por Apple.

A continuación se proporciona un ejemplo de cómo almacenar este número en NSDefaults

```
-(void)setDeviceID
{
    UIDevice *device = [UIDevice currentDevice];
    NSString *uniqueIdentifier = [[device identifierForVendor] UUIDString];
    uniqueIdentifier = [uniqueIdentifier stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSUserDefaults *def = [[NSUserDefaults alloc] initWithSuiteName:[SKEOptions getBundleGroup]];
    [def setObject:uniqueIdentifier forKey:[SKEOptions getVaribleToStoreDeviceID]];
    [def synchronize];
}
```

## Guía de Integración

Se ha preparado una guía paso a paso con lo detalles para la inegración:

* [Guía](https://swapme.mx/swapkey_extension_sdk/) - Paso a Paso

### Indispensables

- El deviceID se deberá almacenar en *NSUserDefaults*
- Se deberá inicializar *NSUserDefaults* con la función 'initWithSuiteName' ya que son los defaults que permiten compartir información entre targets
- Para inicializar los *NSUserDefaults* se deberá utilizar: '[SKEOptions getBundleGroup]' puesto que esta misma se utilizará dentro del SDK
- De igual manera obtener el key de donde se almacenará la variable se deberá utilizar '[SKEOptions getVaribleToStoreDeviceID]'
- La clase 'SKEOptions' se deberá compartir con el target de la extensión

##  Version

Release: 1.8

## Authors

* **Carolina Franco** - *Swap*

