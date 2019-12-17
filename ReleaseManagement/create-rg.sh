location="Central US"
rgname="labpaas"

if [ $(az group exists --name ${rgname}) = false ]; then
    az group create --name $rgname --location "${location}" --query "[].{resource:resourceGroup, name:name}" -o table
        if [ $(az group exists --name ${rgname}) = true ]; then
            echo "Se creo el grupo de recursos ${rgname}"
            az group show -n $rgname
            else
                echo "Error al generar el grupo de recursos ${rgname}"
        fi
    else
    echo "El grupo de recursos ${rgname} ya estaba creado"
fi

