#!/usr/bin/zsh

# Obtenez le pourcentage de la batterie
battery_percentage=$(cat /sys/class/power_supply/BAT1/capacity)

# Vérifiez si la batterie est supérieure à 50%
if [ "$battery_percentage" -gt 50 ]; then
    # Si supérieur à 50%, retournez 0 pour cacher le module
    polybar-msg action "#battery.module_show"
else
    # Sinon, retournez 1 pour afficher le module
    polybar-msg action "#battery.module_hide"

fi
