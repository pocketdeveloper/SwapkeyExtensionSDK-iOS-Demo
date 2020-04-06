# SwapkeyExtensionSDK-iOS-Demo

Demo con ejemplo de implementación para el SDK de Swapkey

### Requisitos

- Cocoapods 
- Soportar iOS 11 o superior

## Instalar vía Pod

Para instalar el SDK vía cocoapods, se deberá agregar el siguiente pod:
```
pod 'SwapkeyExtensionSDK' 
```

### Ejemplo de podfile

Debido a que la extensión es un target diferente a la aplicación, se deberá instalar el pod que se pueda compartir en los 3 target's:
    - Aplicación Host
    - Extensión de Teclado
    - Extensión de iMessage

```
platform :ios, '11.0'
use_frameworks!

def swap_pods
	pod 'SwapkeyExtensionSDK'
end

target 'NombreTargetAplicacionHost' do
    swap_pods
end

target 'NombreTargetExtensionKeyboard' do
    swap_pods
end

target 'NombreTargetExtensioniMessage' do
    swap_pods
end
```

Para instalar

```
pod install
```

Para actualizar

```
pod update
```


## Inicializando SDK para Teclado

Para inicializar el SDK, se deberá ejecutar el siguiente código

```
if ([Swapkey initializeWithKey:@"swap" isDevelopment:YES andPreferences:pref])
{
  // SDK inicializado correctamente
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
    NSUserDefaults *def = [[NSUserDefaults alloc] initWithSuiteName:@"NombreDeGrupo"];
    [def setObject:uniqueIdentifier forKey:[SKEOptions @"VariableParaGuardarDeviceID"]];
    [def synchronize];
}
```

## Guía de Integración

Se ha preparado una guía paso a paso con lo detalles para la inegración:

* [Guía](https://swapme.mx/swapkey_extension_sdk/) - Paso a Paso

### Indispensables

- El deviceID se deberá almacenar en *NSUserDefaults*
- Se deberá inicializar *NSUserDefaults* con la función 'initWithSuiteName' ya que son los defaults que permiten compartir información entre targets
- Para inicializar los *NSUserDefaults* se deberá utilizar: el mismo nombre que se está enviando en las preferencias del SDK (SKEPreferences)
- De igual manera obtener el key de donde se almacenará la variable se deberá utilizar  'variableToStoreDevice'

##  Última Versión

Release: 1.32
Comentarios: Se agrega soporte para extensión de iMessage

## Authors

* **Carolina Franco** - *Swap*

