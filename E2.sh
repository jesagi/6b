linea=1
mediaprecipitaciones=0
precipitaciones='awk {print $2} precipitaciones.txt | head -$linea'

for i in $(cat precipitaciones.txt); do
    $mediaprecipitaciones=$mediaprecipitaciones+$precipitaciones
    $linea=$linea+1
done

$mediaprecipitaciones=$mediaprecipitaciones/$linea

echo "La media de precipitaciones es $mediaprecipitaciones"
