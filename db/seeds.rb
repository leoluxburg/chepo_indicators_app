# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning db'
Topic.destroy_all
Reason.destroy_all
Theme.destroy_all
Subtheme.destroy_all
Indicator.destroy_all
Statistic.destroy_all
Formula.destroy_all

puts 'Success'

puts 'Loading Data'
topic_attributes = [
  {
    title: 'Sostenibilidad Ambiental y Cambio Climático'
  },
  {
    title: 'Sostenibilidad Urbana'
  },
  {
    title: 'Sostenibilidad Fiscal y Gobernabilidad'
  }
]

Topic.create!(topic_attributes)

puts '1 one!'

reason_attributes = [
  {
    title: "Manejo del Medio Ambiente y Consumo de Recursos Naturales.",
    description: "»Manejo adecuadamente sus recursos e infraestructura hídrica;
    »Manejo y usa adecuadamente su energía;
    »Maneja y trata adecuadamente sus aguas residuales;
    »Maneja y dispone adecuadamente sus residuos sólidos.",
    topic_id: 1,
  },
  {
    title: "Reducción de Vulnerabilidad ante Desastres Naturales y Adaptación al Cambio Climático.",
    description: "»Tratamiento adecuado de vulnerabilidad ante desastres naturales y cambio climático;
    »Buena preparación y organización para responder en casos de desastre;
    »Planes de gestión del riesgo de desastres y de adaptación  al cambio climático. ",
    topic_id: 1,
  },
  {
    title: "Mitigación de Gases de Efecto Invernadero y Otras Formas de Polución.",
    description: "»Promoción de avances tecnológicos, uso de fuentes de energía alternativas y eficiencia energética en producción industrial;
    »Cumplimiento de standards de calidad del aire;
    »Monitoreo y mitigación de gases de efecto invernadero;
    »Monitoreo, regulación y control efectivo de polución acústica.",
    topic_id: 1,
  },
  {
    title: "Control de Crecimiento y Mejora del Hábitat Humano.",
    description: "»Manejo de crecimiento, minimización del footprint urbano y su efecto en el medio ambiente;
    »Promoción de usos del suelo y densidades hacia ciudades, comunidades y barrios compactos y completos;
    »Niveles bajos de desigualidad urbana.",
    topic_id: 2,
  },
  {
    title: "Promoción de Desarrollo Económico Local Competitivo y Sostenible.",
    description: "»Tiene una base económica diversificada y competitiva;
    »Apoyo a negocios locales e integración de sectores informales; »Promueve una produccion industrial con responsabilidad social y ecológica;
    »Exhibe altos niveles de conectividad.",
    topic_id: 2,
  },
  {
    title: "Promoción del transporte urbano sostenible.",
    description: "»Soluciones de movilidad que minimizan impactos medioambientales, promoviendo el transporte público;
    »Provisión de movilidad multimodal limpia, segura y eficiente, priorizando el tránsito y alternativos no motorizados.",
    topic_id: 2,
  },
  {
    title: "Promoción de Desarrollo Económico Local Competitivo y Sostenible.",
    description: "»Tiene una base económica diversificada y competitiva;
    »Apoyo a negocios locales e integración de sectores informales;
    »Promueve una produccion industrial con responsabilidad social y ecológica;
    »Exhibe altos niveles de conectividad.",
    topic_id: 2,
  },
  {
    title: "Provisión de Servicios Sociales de Alto Nivel y Promoción de la Cohesión Social.",
    description: "Promoción de un entorno donde los ciudadanos disfrutan sus vidas sin riesgo;
    »Educación adecuada; »Provisión adecuada de servicios de salud.",
    topic_id: 2,
  },
  {
    title: "Mecanismos adecuados de Gobierno.",
    description: "»Procesos de planificación participativa;
    »Transparencia;
    »Uso de diversos tipos de auditoría;
    »Gestión pública moderna",
    topic_id: 3,
  },
  {
    title: "Manejo Adecuado de Ingresos.",
    description: "»Autonomía financiera y administrativa;
    »Maximización de su base fiscal;
    »Movilización de fondos de diferentes fuentes para financiar sus proyectos;
    »Emplea gestion por resultados.",
    topic_id: 3,
  },
  {
    title: "Manejo Adecuado de Gastos.",
    description: "»Evaluación de la calidad del gasto público;
    »Implementación de prácticas de gestión moderna en agencias públicas.",
    topic_id: 3,
  },
  {
    title: "Manejo Adecuado de Endeudamiento y Obligaciones Fiscales.",
    description: "»Deudas contractuales están bajo control;
    »Conocimiento de, y planes para sus pasivos contingentes.",
    topic_id: 3,
  }

]

Reason.create!(reason_attributes)
puts '2 one!'

theme_attributes = [
  {
    title: "Agua",
    reason_id: 1,
  },
  {
    title: "Saneamiento",
    reason_id: 1,
  },
  {
    title: "Gestion de Residuos Sólidos",
    reason_id: 1,
  },
  {
    title: "Energía",
    reason_id: 1,
  },
  {
    title: "Calidad de Aire",
    reason_id: 2,
  },
   {
    title: "Mitigación del Cambio Climatico",
    reason_id: 2,
  },
  {
    title: "Ruido",
    reason_id: 2,
  },
  {
    title: "Vulnerabilidad ante Desastres Naturales",
    reason_id: 3,
  },
  {
    title: "Uso de Suelo",
    reason_id: 4,
  },
  {
    title: "Inequidad Urbana",
    reason_id: 4,
  },
  {
    title: "Transporte",
    reason_id: 5,
  },
  {
    title: "Competitividad de la Economia",
    reason_id: 6,
  },
  {
    title: "Empleo",
    reason_id: 6,
  },
  {
    title: "Conectividad",
    reason_id: 6,
  },
  {
    title: "Educación",
    reason_id: 7,
  },
  {
    title: "Seguridad Ciudadana",
    reason_id: 7,
  },
  {
    title: "Salud",
    reason_id: 7,
  },
  {
    title: "Gestion Publica Participativa",
    reason_id: 8,
  },
  {
    title: "Gestion Publica Moderna",
    reason_id: 8,
  },
  {
    title: "Transparencia",
    reason_id: 8,
  },
  {
    title: "Impuestos y Autonomía Financiera",
    reason_id: 9,
  },
  {
    title: "Eficiencia y Oportunidad del Gasto",
    reason_id: 10,
  },
  {
    title: "Pasivos Contingentes",
    reason_id: 11,
  },
  {
    title: "Deuda",
    reason_id: 11,
  }
]

Theme.create!(theme_attributes)

puts '3 done!'

subtheme_attributes1 = [
  {
    title: "Cobertura de agua potable",
    comment: "",
    theme_id: 1,
  },
  {
    title: "Eficiencia en el uso del agua",
    comment: "",
    theme_id: 1,
  },
  {
    title: "Eficiencia en el servicio de suministro de agua",
    comment: "",
    theme_id: 1,
  },
  {
    title: "Disponibilidad de recursos hídricos",
    comment: "",
    theme_id: 1,
  },
  {
    title: "Cobertura de saneamiento",
    comment: "",
    theme_id: 2,
  },
  {
    title: "Tratamiento de aguas residuales",
    comment: "",
    theme_id: 2,
  },
    {
    title: "Efectividad del drenaje",
    comment: "",
    theme_id: 2,
  },
  {
    title: "Cobertura de recolección de residuos solidos",
    comment: "",
    theme_id: 3,
  },
 {
    title: "Eliminacion final adecuada de residuos sólidos",
    comment: "",
    theme_id: 3,
  },
 {
    title: "Tratamiento de residuos sólidos",
    comment: "",
    theme_id: 3,
  },
  {
    title: "Cobertura energética",
    comment: "",
    theme_id: 4,
  },
  {
    title: "Eficiencia energética",
    comment: "",
    theme_id: 4,
  },
  {
    title: "Energías alternativas y renovables",
    comment: "",
    theme_id: 4,
  },
  {
    title: "Control de la calidad del aire",
    comment: "",
    theme_id: 5,
  },
  {
    title: "Concentración de contaminantes en el aire",
    comment: "",
    theme_id: 5,
  },
  {
    title: "Sistema de medicion de emisiones de GEI",
    comment: "",
    theme_id: 6,
  },
  {
    title: "Emisiones de GEI totales",
    comment: "",
    theme_id: 6,
  },
  {
    title: "Planes y objetivos de mitigación",
    comment: "",
    theme_id: 6,
  },
  {
    title: "Control de ruido",
    comment: "",
    theme_id: 7,
  },
  {
    title: "Capacidad adaptiva al cambio Climatico y a eventos naturales extremos.",
    comment: "",
    theme_id: 8,
  },
  {
    title: "Sensibilidad a desastres naturales",
    comment: "",
    theme_id: 8,
  },
]

Subtheme.create!(subtheme_attributes1)
puts '4 done!'

indicator_attributes1 = [
  {
    title: "Porcentaje de hogares con conexiones domiciliarias a la red de agua de la ciudad",
    description: "Porcentaje de población en viviendas con, o con acceso a, conexiones de agua potable",
    methodology:
    "El departamento comercial de la empresa suministradora de agua contará con una base de datos actualizada de la cantidad\r\nde clientes residenciales. La empresa suministradora de agua podrá también tener información sobre la cantidad total de\r\nhogares en la ciudad (planes maestros, planes comerciales, estrategia de expansión, etc.). De lo contrario, es posible que\r\nel municipio, que recibe actualizaciones sobre los resultados del censo, tenga esta información.",
    positive: "> 90%-100%",
    negative: "< 75%",
    medium: "75%–90%",
    unit: "%",
    value: "98.5",
    rate: nil,
    result: "Positivo",
    justification: "El suministro de agua limpia es absolutamente necesario para la vida y la salud; sin embargo, muchas personas no tienen\r\nacceso a un suministro de agua adecuado o solo pueden obtenerlo a precios elevados. En muchas ciudades, los hogares\r\nde los asentamientos informales rara vez se encuentran conectadas a la red y solo pueden obtener agua de proveedores\r\na un precio 200 veces más alto que el del agua de la red. Mejorar el acceso al agua potable implica una menor carga para\r\nlas personas, sobre todo las mujeres, para recoger agua. También significa una reducción en la carga global asociada con\r\nlas enfermedades relacionadas con el agua y una mejora en la calidad de vida.\r\nEste indicador supervisa el acceso a la red de agua de la ciudad sobre la base de la suposición de que es posible que\r\nsuministre agua potable. El consumo de agua contaminada es la causa directa de muchas enfermedades en países en\r\ndesarrollo.\r\nBasado en el documento de trabajo de la Administración de Recursos Ambientales (ERM, por sus siglas en inglés) de 2006:\r\nThe Current Status of City Indicators Annexes: Indicator 4 “Access to safe water” ",
    other: "Similar al “Porcentaje de la población de la ciudad con servicio de suministro de agua potable” y “Porcentaje de la\r\npoblación de la ciudad con acceso sostenible a una mejor fuente de agua” del Programa Global para los Indicadores\r\nUrbanos (GCIF, por sus siglas en inglés)",
    subtheme_id: 1,
  },
  {
    title: "Consumo anual de agua per cápita",
    description: "Consumo anual de agua per cápita de personas cuyas viviendas tienen conexión a la red de agua de la ciudad (en litros/\r\npersona/día)",
    methodology: "Este indicador se obtiene generalmente por medio de los registros de facturación que indican la cantidad de metros\r\ncúbicos medidos en un período determinado. Esta cantidad de agua luego se divide por la población total relacionada con\r\nlas viviendas incluidas en las cifras facturadas. Esta información suele obtenerse de la unidad comercial de las empresas\r\nsuministradoras de agua, la cual maneja una base de datos actualizada de las categorías de clientes.",
    positive: "120–200",
    negative: "< 80 o > 250",
    medium: "80–120 o 200–250",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Para ser sostenible, el consumo de agua debe estar en armonía con los recursos hídricos. Esta armonía puede lograrse a\r\ntravés de mejoras en los sistemas de suministro de agua y cambios en los patrones de consumo de agua. Este indicador\r\ndeberá medirse en términos de cambios de un año para el otro en una ciudad dentro de un rango de tarifas debido a\r\nla variabilidad que existe entre las distintas ciudades. El consumo de agua por persona depende de su disponibilidad,\r\ncalidad, precio, clima y los usos que las personas le dan habitualmente (para beber, bañarse, lavar o hacer tareas de\r\njardinería). En muchas ciudades, el suministro de agua potable no es continuo y las viviendas cuentan con algunas horas\r\npor día para consumirla o almacenarla. El consumo de agua es mucho mayor en ciudades de países con ingresos más\r\naltos, como ocurre con la mayoría de las demás formas de consumo.\r\nSi no se dispone de datos suficientes, puede utilizarse información de contextos comparables, es decir, con características\r\nsocioeconómicas, culturales y geográficas similares.\r\nBasado en el indicador 43 del GCIF “Consumo total de agua per cápita (litros/día)”",
    other: "Indicador 43 del GCIF: “Consumo total de agua per cápita (litros/día)”",
    subtheme_id: 2,
  },
  {
    title: "Continuidad del servicio de agua",
    description: "Promedio anual de la cantidad de horas diarias de suministro continuo de agua por hogar (en horas/día)",
    methodology: "El valor se calculará mediante la siguiente fórmula:
    \r\n
    x = 24 – 365
    Horas de interrupciones en día i * Fracción de viviendas afectadas ( ( Σ365
    i=1
    \r\n
    Este indicador se determina o calcula en función de la disponibilidad de información operativa de la empresa
    suministradora de agua. Si el departamento de operaciones de la red mide los flujos en los diferentes sectores de la
    ciudad, dicho indicador podría determinarse directamente. Si no hay información directa disponible, el departamento
    comercial puede obtener esta información de sus registros de quejas de clientes relativas al servicio. Algunas empresas
    suministradoras de agua tienen encuestas de clientes que incluyen preguntas acerca de la continuidad del servicio que
    pueden utilizarse como cálculo para este indicador.
    Si no se dispone de información suficiente, se deben utilizar los cálculos del administrador de la red.",
    positive: "> 20 horas/día",
    negative: "< 12 horas/día",
    medium: "12–20 horas/día",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La confiabilidad del servicio de agua para el usuario es la consideración más importante al momento de evaluar el
    suministro de agua, a pesar de que esta confiabilidad se basa tanto en consideraciones de cantidad como de calidad,
    y en sistemas interconectados, de disponibilidad de fuentes de agua, y de tratamiento y distribución de agua. Este
    indicador determina si un sistema de suministro de agua es fiable o si el sistema de suministro de agua necesita mejoras
    fundamentales o marginales. Es probable que un área de servicio más grande en términos físicos tenga en el sistema de
    distribución más kilómetros de tuberías y cañerías que sean vulnerables a las interrupciones del servicio.
    Basado en el indicador 45 del GCIF Promedio anual de horas de interrupción del servicio de agua por vivienda",
    other: "Ministerio de Desarrollo Urbano del Gobierno de India",
    subtheme_id: 3,
  },
  {
    title: "Calidad del agua",
    description: "Porcentaje de muestras de agua en un año que cumplen con las normas nacionales de calidad del agua potable",
    methodology: "Muchas empresas suministradoras de agua llevan a cabo sus campañas de muestreo para aguas tratadas, las cuales
    cubren plantas de tratamiento y algunos puntos representativos de la red. Un laboratorio interno o externo realiza el
    análisis. La unidad de operaciones de la empresa suministradora de agua llevará registros de los resultados históricos de
    las muestras de agua. Por lo general, la cifra del indicador de la calidad del agua se calcula como un promedio mensual.",
    positive: "> 97%",
    negative: "< 90%",
    medium: "90%–97%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El agua es una de las necesidades más importantes de la vida humana. El suministro de agua limpia es absolutamente
    necesario para la vida y la salud; sin embargo, muchas personas no tienen acceso a un suministro de agua adecuado o solo
    pueden obtenerlo a precios elevados. Mejorar el acceso al agua potable implica una menor carga para las personas, sobre
    todo las mujeres, para recoger agua. También significa una reducción en la carga global asociada con las enfermedades
    relacionadas con el agua y una mejora en la calidad de vida.
    Basado en el documento de trabajo de la ERM de 2006: The Current Status of City Indicators Annexes: Indicator 4 “Access to
    safe water",
    other: "Ministerio de Desarrollo Urbano del Gobierno de India.",
    subtheme_id: 3,
  },
  {
    title: "Agua no contabilizada",
    description: "Porcentaje de agua que se pierde del agua tratada que ingresa al sistema de distribución y que el proveedor de agua
    registra y factura. Este porcentaje comprende pérdidas reales de agua (p. ej., fugas en las tuberías) y pérdidas de
    facturación (p. ej., medidores de agua rotos, falta de medidores de agua y conexiones ilegales).",
    methodology: "Por lo general, las empresas suministradoras de agua lo calculan de la siguiente manera:
    • (Volumen de agua suministrada menos Volumen de agua facturada a los clientes)/(Volumen de agua suministrada)
    (en %).
    • Las cifras relativas al consumo de agua podrían obtenerse del departamento comercial de la empresa suministradora
    de agua. El volumen de agua distribuida podría obtenerse de la unidad de producción del departamento de
    operaciones.
    • Si no se dispone de datos suficientes, puede utilizarse información de contextos comparables (es decir, con
    características socio-económicas, culturales y geográficas similares) o cálculos de las empresas suministradoras
    de agua.
    • Basado en el indicador 44 del GCIF: “Porcentaje de pérdida de agua (agua no registrada)”.",
    positive: "0%–30%",
    negative: "> 45%",
    medium: "30%–45%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El agua es una de las necesidades más importantes de la vida humana. El suministro de agua limpia es absolutamente
    necesario para la vida y la salud; sin embargo, muchas personas no tienen acceso a un suministro de agua adecuado o solo
    pueden obtenerlo a precios elevados. Mejorar el acceso al agua potable implica una menor carga para las personas, sobre
    todo las mujeres, para recoger agua. También significa una reducción en la carga global asociada con las enfermedades
    relacionadas con el agua y una mejora en la calidad de vida.
    Basado en el documento de trabajo de la ERM de 2006: The Current Status of City Indicators Annexes: Indicator 4 “Access to
    safe water",
    other: "Indicador 44 del GCIF: “Porcentaje de pérdida de agua (agua no registrada)”.
    Ministerio de Desarrollo Urbano del Gobierno de India.
    Banco Interamericano de Desarrollo (BID).",
    subtheme_id: 3,
  },
  {
    title: "Cantidad remanente de años de balance hidrico positivo",
    description: "Cantidad remanente de años de balance hídrico positivo, considerando la oferta de agua disponible (teniendo en cuenta
    los ciclos hidrológicos) y la demanda de agua (usos previstos, incluidos los usos de la población, el sector industrial, los
    caudales ecológicos, etc.)",
    methodology: "La cantidad de recursos disponibles de agua dulce se determina mediante estudios hidrológicos que son generalmente
    llevados a cabo por la institución responsable de los recursos hídricos (Ministerio de Medio Ambiente, Dirección de Aguas,
    etc.). A partir de estos estudios se realizan proyecciones de la disponibilidad de recursos hídricos de similar calidad
    por cuencas hidrográficas. Por otro lado, la empresa suministradora de agua tendrá algunos derechos de extracción
    específicos que representan el volumen máximo que podrían extraer del acuífero y/o de los cuerpos de agua. Los recursos
    disponibles se calculan comparando la cantidad máxima de recursos de agua dulce que van a estar disponibles con los
    derechos de extracción máxima. Finalmente, la cantidad de años con balance hídrico positivo se calcula comparando la
    cifra de demanda de agua prevista (volumen de agua que los clientes demandan) para cada año con la disponibilidad de
    recursos para el tratamiento del agua. Para la comparación se necesita considerar la capacidad de las instalaciones de
    tratamiento existentes para agua no dulce, como plantas de desalinización.",
    positive: "> 10",
    negative: "5–10",
    medium: "< 5",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La gestión sostenible del agua necesita de un enfoque integral para la planificación hídrica y el reconocimiento de
    interconexiones entre sistemas. El mantenimiento de un balance hídrico positivo garantiza que la cantidad de agua
    extraída de una fuente no sea mayor que el potencial de recarga de dicha fuente.
    Basado en Bloetscher/Muniz (2006), Defining Sustainability, Diario de Recursos Hídricos de Florida. (Véase http://www.
    fwrj.com/TechArticle06/1006%20tech%201.pdf).",
    other: "",
    subtheme_id: 4,
  },
  {
    title: "Porcentaje de hogares con conexión domiciliaria al sistema de alcantarillado",
    description: "Porcentaje de hogares con conexión domiciliaria al sistema de alcantarillado",
    methodology: "La cantidad de hogares de la ciudad que tienen conexión domiciliaria a un sistema de alcantarillado (el numerador) se
    divide por la cantidad de hogares (el denominador), expresado como porcentaje.
    La elaboración y actualización de la base de datos que contiene la cantidad de hogares con conexión domiciliaria a
    sistemas de alcantarillado generalmente la lleva a cabo el departamento comercial de la empresa suministradora de agua.
    Si la base de datos no ha sido elaborada por esta unidad, se deberá consultar al departamento de operaciones de la red
    que lleva registros de la infraestructura existente. La conexión debe formar parte de un sistema público, comunitario o
    privado de descarga de aguas residuales y otros desechos mediante una tubería o conducto similar conectado a una red
    que los transporta para su eliminación y/o tratamiento.
    Basado en el indicador del GCIF: “Porcentaje de la población de la ciudad con servicio de alcantarillado”.",
    positive: "> 75%",
    negative: "75%–60%",
    medium: "< 60%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El porcentaje de hogares con conexión domiciliaria al sistema de alcantarillado es un indicador de la salud, higiene y
    calidad de vida de la ciudad. La recolección y el tratamiento de aguas residuales es un componente significativo de los
    Objetivos de Desarrollo del Milenio.
    Basado en el indicador 35 del GCIF: “Porcentaje de la población de la ciudad con servicio de alcantarillado”.",
    other: "Similar: Indicador 35 del GCIF “Porcentaje de la población de la ciudad con servicio de alcantarillado”.",
    subtheme_id: 5,
  },
  {
    title: "Porcentaje de aguas residuales tratadas de conformidad con las normas nacionales pertinentes",
    description: "Porcentaje de aguas residuales tratadas de conformidad con las normas nacionales pertinentes",
    methodology: "Esta cifra puede calcularse directa o indirectamente. Si la ciudad cuenta con instalaciones de tratamiento con tecnología
    de medición de flujos apropiada, esta cifra puede obtenerse directamente de los caudales que ingresan a la planta
    de tratamiento de aguas residuales. Así, el indicador se obtiene como el cociente entre el agua residual tratada y el
    agua consumida (facturada). Si no se obtiene ninguna cifra de las instalaciones de tratamiento, esta puede calcularse
    indirectamente como el cociente entre la población que cuenta con servicio de alcantarillado que se descarga en una
    instalación de tratamiento y la población total con acceso al agua potable. Estas cifras pueden obtenerse a partir de
    información recopilada del departamento de facturación y de la unidad de operaciones. Si los tanques sépticos se
    manejan y mantienen adecuadamente, debería sumarse también el porcentaje de la población que desecha sus efluentes
    en este sistema siempre que las leyes locales permitan esta práctica.",
    positive: "> 60%",
    negative: "40%–60%",
    medium: "< 40%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las mejoras en el tratamiento del agua reducen la incidencia de varias enfermedades de transmisión por agua. Un sistema
    de tratamiento de aguas residuales confiable es un indicador importante del nivel de desarrollo local y de la salud de la
    comunidad. La contaminación del agua por desechos humanos es un problema menor en países que tienen los recursos para
    tratar aguas residuales y la contaminación del agua puede reducirse al mínimo con una adecuada inversión en sistemas de
    tratamiento. El porcentaje de aguas residuales tratadas es un indicador clave de la gestión de la calidad del agua.
    Todas las formas de tratamiento incluyen un procedimiento para permitir la liberación de agua en recursos hídricos de
    diferentes niveles de sensibilidad ambiental. Se incluyen los siguientes tratamientos:
    • Tratamiento preliminar para eliminar sólidos y desechos de gran tamaño (controles, eliminación de arena, etc.).
    • Tratamiento primario que elimina partículas de gran tamaño de sólidos suspendidos y materia orgánica,
    generalmente por sedimentación.
    • Tratamiento secundario que reduce la demanda biológica de oxígeno (DBO) a niveles aceptables por oxidación
    microbiana mediante sistemas de aireación forzada o natural.
    • Tratamiento terciario que reduce la presencia de nitrógeno y fósforo y otras partículas orgánicas volátiles, incluido
    el olor.
    • Desinfección: este proceso eliminará las bacterias restantes en el efluente que se miden por medio de la presencia
    de coliformes fecales.
    • Sedimento de aguas residuales: todos los biosólidos acumulados durante el proceso de tratamiento se tratan por
    separado por medio de un procedimiento biológico o químico.
    • El efluente tratado podría utilizarse para riego/fines industriales (agua residual) y como material de
    acondicionamiento del suelo (fango) en función de las normas ambientales locales.
    Basado en el documento de trabajo de la ERM de 2006: The Current Status of City Indicators Annexes: Indicator 14
    “Wastewater treated”.",
    other: "",
    subtheme_id: 6,
  },
  {
    title: "Porcentaje de viviendas afectadas por las inundaciones más intensas de los últimos 10 años",
    description: "Porcentaje de viviendas afectadas por las inundaciones más intensas de los últimos 10 años",
    methodology: "El valor del indicador será calculado para el caso de inundaciones de los últimos 10 años que hayan afectado a la mayor
    cantidad de viviendas. Las causas de inundación que se considerarán comprenden desbordamientos de los sistemas de
    drenaje y alcantarillado así como carreteras y vías fluviales. Este indicador también incluye inundaciones causadas por
    deshielo.
    Las bases de datos de los municipios y las empresas de servicios públicos, junto con otros datos disponibles a nivel
    local (como intervenciones del cuerpo de bomberos en emergencias de inundación, etc.) que posibiliten caracterizar la
    situación con la mayor precisión posible deberían utilizarse como fuentes de información. Antes de realizar el cálculo
    debería verificarse si la información de diferentes fuentes es consistente.
    Si los daños a las viviendas ocasionados por las inundaciones más intensas de los últimos 10años no reflejan adecuadamente
    el patrón general de inundaciones de la ciudad (por ejemplo, si estos patrones resultaran muy influenciados por eventos
    que probablemente no vuelvan a ocurrir, como grandes obras de construcción en un lugar particularmente vulnerable),
    también se recopilará información sobre los eventos con el segundo o tercer mayor número de viviendas inundadas en
    los últimos 10 años (además de la información sobre el evento que se considerará para el cálculo del indicador). Para
    cada uno de estos tres casos se registrará la fecha de ocurrencia y el período de retorno de las precipitaciones. También
    deberían incluirse las lesiones y las víctimas fatales (si las hubiera) y una descripción de cualquier evento específico que
    pudiera haber contribuido a causar los daños (p. ej., obras de construcción, falla de la presa, vientos intensos).
    Como antecedente para facilitar la interpretación del indicador, debería recopilarse la siguiente información adicional:
    i) cantidad de personas evacuadas debido a la ocurrencia del evento; ii) tiempo promedio antes de que las personas
    evacuadas pudieron regresar a sus viviendas; iii) daños estimados en dólares estadounidenses o en moneda local.
    En caso de corresponder, se deberían agregar observaciones adicionales que indiquen qué porcentaje de las viviendas
    dañadas abarca viviendas costeras y ribereñas ubicadas en zonas expuestas a inundaciones pero sujetas a normas de
    planeamiento urbano conforme al nivel de riesgo, incluidas pólizas de seguro y programas de alerta y respuesta.",
    positive: "< 0,5%",
    negative: "> 3%",
    medium: "0,5–3",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los peligros de inundación en áreas urbanas son el resultado de sistemas de drenaje inadecuados o inexistentes y de la
    ocupación de zonas ribereñas y costeras expuestas a un alto riesgo de inundación.
    La expansión de la urbanización, con el consiguiente aumento de áreas impermeables y el coeficiente de desbordamiento
    y una disminución del tiempo de concentración (generalmente aguas arriba), contribuye al aumento de los flujos máximos
    y a la ocurrencia más frecuente de inundaciones. La canalización de ríos urbanos tiene consecuencias similares. Como
    resultado, la capacidad de los sistemas de drenaje se ve superada durante los flujos máximos, lo cual provoca inundaciones.Los desbordamientos del sistema de alcantarillado, los niveles insuficientes de tratamiento de aguas residuales y los
    residuos sólidos desechados mediante canales o transportados por desbordamiento, combinados con los sedimentos
    generados en las obras de construcción y las calles no pavimentadas causan contaminación de los sistemas receptores
    de agua.
    Las pérdidas por inundaciones se relacionan con las características del evento, incluidos los flujos, la duración y la
    velocidad del agua. Las características de la infraestructura, los sistemas de alerta y los programas de respuesta son
    también factores decisivos.
    Este indicador ayuda a evaluar la magnitud del problema como un primer paso para la formulación de propuestas para
    intervenciones específicas.",
    other: "",
    subtheme_id: 7,
  },
  {
    title: "Porcentaje de la población de la ciudad con recolección regular de residuos sólidos municipales",
    description: "Porcentaje de viviendas afectadas por las inundaciones más intensas de los últimos 10 años",
    methodology: "Se determina la cantidad anual de hogares de la ciudad que cuenta con un servicio periódico de recolección de residuos
    sólidos municipales.
    La recolección periódica de residuos sólidos municipales se define como la recolección, el transporte y el depósito en una
    instalación de tratamiento adecuada (de reciclaje o vertederos) de los residuos sólidos de un hogar al menos una vez a
    la semana. Comprende viviendas ubicadas a menos de 200 metros del punto de recolección de residuos. Si los residuos
    sólidos municipales son generados por personas que no están formalmente empleadas por una entidad legalmente
    constituida, se considera que la vivienda no tiene servicio de recolección de residuos sólidos municipales.
    Se debe obtener información de los operadores locales de los sistemas de recolección de residuos sólidos.
    La cantidad de hogares con servicio de recolección periódica de residuos sólidos se multiplica por el tamaño promedio
    de hogar vigente en ese momento para esa ciudad a fin de determinar la cantidad de personas que cuentan con el servicio
    de recolección periódica de residuos sólidos. Este número se divide por la población de la ciudad. El resultado se expresa
    como porcentaje de la población de la ciudad que cuenta con el servicio de recolección de residuos sólidos municipales.
    Basado en el indicador del GCIF: “Porcentaje de la población con servicio de recolección periódica de residuos sólidos”.",
    positive: "90%–100%",
    negative: "80%–90%",
    medium: "< 80%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Muchas ciudades generan más residuos sólidos municipales de los que pueden desechar. Incluso cuando los presupuestos
    municipales son suficientes para la recolección, la eliminación segura de los residuos recolectados a menudo sigue
    siendo un problema. Los vertederos a cielo abierto y los rellenos no sanitarios son, en ocasiones, los principales métodos
    de eliminación en muchos países en vías de desarrollo; los rellenos sanitarios constituyen la norma solo en unas pocas
    ciudades.",
    other: "Programa Global para los Indicadores Urbanos (GCIF).
    Organización Panamericana de la Salud (OPS).
    Consejo Europeo de Asociaciones Profesionales de Tecnologías de la Información (CEPIS)/OPS.
    Lima (2001), Indicadores para el gerenciamiento del servicio de limpieza pública.",
    subtheme_id: 8,
  },
  {
    title: "Porcentaje de residuos sólidos municipales de la ciudad vertidos en rellenos sanitarios",
    description: "Porcentaje de residuos sólidos municipales de la ciudad vertidos en rellenos sanitarios. Se exceptúan los residuos enviados
    para su tratamiento (compostaje, reciclaje, etc.). El relleno debe contar con sistemas de tratamiento y recolección de
    lixiviados y gas residual para ser considerado sanitario.",
    methodology: "Residuos sólidos municipales: se desechan en rellenos sanitarios; se dividen por la cantidad total de residuos sólidos.
    El número total anual de toneladas de residuos sólidos municipales de la ciudad que se desechan en un relleno sanitario.
    Esta cantidad se divide por el número total de toneladas de residuos sólidos municipales producidos en la ciudad. Este
    total se multiplica por 100.
    Esta información debería poder conseguirse en dependencias municipales, empresas de servicios públicos y de los
    principales contratistas privados que trabajan en la recolección y eliminación de residuos sólidos municipales.
    Puede obtenerse información de estudios específicos sobre residuos sólidos municipales realizados para proyectos
    específicos.
    Basado en el indicador 26 del GCIF: “Porcentaje de residuos sólidos de la ciudad que se desechan en un relleno sanitario”.",
    positive: "90%–100%",
    negative: "80%–90%",
    medium: "< 80%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Muchas ciudades generan más residuos sólidos municipales de los que pueden desechar. Incluso cuando los presupuestos
    municipales son suficientes para la recolección, la eliminación segura de los residuos recolectados a menudo sigue
    siendo un problema. Los vertederos a cielo abierto y los rellenos no sanitarios son, en ocasiones, los principales métodos
    de eliminación en muchos países en vías de desarrollo; los rellenos sanitarios constituyen la norma solo en unas pocas
    ciudades.
    La ventaja principal de un relleno sanitario es que, con la manipulación y el procesamiento de los desechos, estos se
    reducen al mínimo. La manipulación se limita a recoger y transportar los residuos, expandir los desechos y cubrirlos con
    un material de cubierta adecuado.
    Basado en el indicador 26 del GCIF: “Porcentaje de residuos sólidos de la ciudad que se desechan en un relleno sanitario”
    y en http://www.cedengineering.com/upload/An%20Introduction%20to%20Sanitary%20Landfills.pdf.",
    other: "PIndicador 26 del GCIF: “Porcentaje de residuos sólidos de la ciudad que se desechan en un relleno sanitario”.
    Programa de las Naciones Unidas para los Asentamientos Humanos (UN-Habitat); Departamento de Asuntos Económicos
    y Sociales de las Naciones Unidas (DAES), Indicadores de desarrollo sostenible; Banco Asiático de Desarrollo (BAsD);
    Auditoría Urbana.",
    subtheme_id: 9,
  },
  {
    title: "Vida remanente del predio en el cual está instalado el relleno sanitario",
    description: "Vida útil remanente del relleno sanitario o controlado en función de las proyecciones de generación de residuos sólidos
    de la ciudad (en años)",
    methodology: "Existen varias alternativas: levantamientos aéreos con cálculos mediante computadora; levantamientos terrestres con
    cálculos manuales; basados en el peso y volumen de las zanjas.
    Los levantamientos topográficos pueden considerarse el método más preciso y confiable para determinar la capacidad
    restante de un vertedero. Sin embargo, los levantamientos topográficos no son necesariamente el método más económico
    y requieren conocimientos significativos en levantamientos e ingeniería para ser llevados a cabo correctamente.
    El uso de relaciones peso-volumen o de compactación para determinar la capacidad restante implica verificar el peso
    o volumen de los materiales recibidos en un vertedero, convertir estas cifras a volumen vertido y calcular el espacio
    aéreo neto y bruto utilizado. Este método no requiere conocimientos especiales más allá de llevar registros minuciosos
    y realizar cálculos matemáticos básicos; tampoco requiere equipos especiales más allá de una calculadora científica
    o programa de hojas de cálculo (aunque una báscula para camiones es una ventaja). Sin embargo, existe una cantidad
    relativamente grande de variables en los cálculos y un error en uno de ellos puede dar lugar a imprecisiones significativas
    en los demás.En el caso de los vertederos que verifican el peso de los materiales ingresantes, la metodología para determinar la
    capacidad restante usando la conversión peso a volumen es la siguiente:
    Resto de vida útil (tiempo) = [Volumen restante (volumen) x Densidad de los residuos (masa/volumen)]/[Tasa promedio proyectada de llenado de residuos (masa/tiempo)]
    Método del volumen de zanjas: los operadores de estas instalaciones pueden determinar fácilmente su capacidad
    restante mediante simples observaciones de campo y cálculos matemáticos si sus zanjas tienen dimensiones uniformes.
    Determinar la capacidad restante de un llenado de tipo zanja implica medir la sección transversal y la longitud de cada
    zanja existente y prevista para conocer el volumen de cada una. La vida útil del predio, la densidad del material vertido
    y la relación residuos/suelo pueden calcularse midiendo la longitud de la zanja utilizada, el peso del material ingresante
    y el volumen de material de cubierta utilizado. Este método permite la verificación cruzada de la capacidad restante
    mediante el control de la tasa de llenado en el tiempo. Para los pocos operadores de vertederos que utilizan zanjas de
    dimensiones uniformes, este método para determinar la capacidad restante ofrece incomparable facilidad y precisión.",
    positive: "> 8",
    negative: "< 5",
    medium: "5–8",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La vida remanente del predio del relleno sanitario indica por cuánto tiempo un vertedero puede seguir utilizándose en
    condiciones aceptables. Esta información es fundamental para planificar la gestión de residuos sólidos.",
    other: "Consejo de Gestión Integrada de Residuos de California (1995), Determining Remaining Permitted Capacity of California’s
    Sanitary Landfills.",
    subtheme_id: 9,
  },
  {
    title: "Porcentaje de residuos sólidos municipales de la ciudad desechados en vertederos a cielo abierto, vertederos controlados,
    cuerpos de agua o quemados",
    description: "Porcentaje de residuos sólidos municipales de la ciudad desechados en vertederos a cielo abierto, vertederos controlados,
    cuerpos de agua o quemados",
    methodology: "Se determina el número total anual de toneladas de residuos sólidos municipales de la ciudad que se desechan en
    vertederos a cielo abierto, en vertederos controlados, en cuerpos de agua o que se queman, lo que se puede aproximar
    calculando la generación total de residuos municipales de la ciudad (generación de residuos per cápita x población)
    menos los residuos que se desechan en rellenos sanitarios. Estas cantidades se dividen por el número total de toneladas
    de residuos sólidos municipales producidos en la ciudad. Este total se multiplica por 100.
    Esta información debe poder conseguirse en dependencias municipales, empresas de servicios públicos y de los
    principales contratistas privados que trabajan en la recolección y eliminación de residuos sólidos municipales.
    Puede obtenerse información de estudios específicos sobre residuos sólidos municipales realizados para proyectos
    específicos.",
    positive: "< 10%",
    negative: "> 20%",
    medium: "10%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Muchas ciudades generan más residuos sólidos municipales de los que pueden desechar. Incluso cuando los presupuestos
    municipales son suficientes para la recolección, la eliminación segura de los residuos recolectados a menudo sigue siendo
    un problema. La eliminación en vertederos a cielo abierto, en vertederos controlados, en cuerpos de agua o mediante
    la quema son, en ocasiones, los principales métodos utilizados en muchos países en desarrollo; los rellenos sanitarios
    constituyen la norma solo en unas pocas ciudades.
    Basado en el indicador 25 del GCIF: “Porcentaje de residuos sólidos de la ciudad que se desechan en un vertedero a cielo
    abierto”.",
    other: "Indicador 23 del GCIF: “Porcentaje de residuos sólidos de la ciudad que se desechan en un incinerador”; indicador 24:
    “Porcentaje de residuos sólidos de la ciudad que se queman a cielo abierto”; indicador 25: “Porcentaje de residuos
    sólidos de la ciudad que se desechan en un vertedero a cielo abierto”, e indicador 27: “Porcentaje de residuos sólidos de
    la ciudad que se desechan por otros medios”.",
    subtheme_id: 9,
  },
  {
    title: "Porcentaje de residuos sólidos municipales de la ciudad que son compostados",
    description: "Porcentaje de residuos sólidos municipales de la ciudad tratados por compostaje",
    methodology: "Los residuos sólidos municipales tratados por compostaje divididos por la cantidad total de residuos sólidos municipales
    generados.
    El número total anual de toneladas de residuos sólidos municipales de la ciudad que son tratados por compostaje
    (inclusive instalaciones y cálculo de compostaje residencial). Estas cantidades se dividen por el total de toneladas de
    residuos sólidos municipales producidos en la ciudad. Este total se multiplica por 100.
    Esta información debe poder conseguirse en dependencias municipales, en empresas de servicios públicos y de los
    principales contratistas privados que trabajan en la recolección, la eliminación y el tratamiento de residuos sólidos
    municipales. Para obtener un mejor cálculo del compostaje residencial, se puede contactar a ONG que estén trabajando
    en el tema.
    Puede obtenerse información de estudios específicos sobre residuos sólidos municipales realizados para proyectos
    específicos.",
    positive: "> 20%",
    negative: "< 5%",
    medium: "5%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Muchas ciudades generan más residuos sólidos municipales de los que pueden desechar. Incluso cuando los presupuestos
    municipales son suficientes para la recolección, la eliminación segura de los residuos recolectados a menudo sigue siendo
    un problema. El desvío de materiales compostables del flujo de residuos es una estrategia para abordar este problema
    municipal.",
    other: "",
    subtheme_id: 10,
  },
  {
    title: "Porcentaje de residuos sólidos municipales que son separados y clasificados para reciclaje",
    description: "Los materiales reciclados formal e informalmente son aquellos desviados del flujo de residuos, tratados y enviados para
    transformarlos en nuevos productos de conformidad con los permisos y las normas del gobierno local.
    • Numerador: Toneladas separadas para reciclaje.
    • Denominador: Cantidad total de residuos sólidos municipales generados.",
    methodology: "Se calcula el número total anual de toneladas de residuos sólidos municipales de la ciudad que son separados formal e
    informalmente para reciclaje. Este número se divide por el total de toneladas de residuos sólidos municipales producidos
    en la ciudad. Este total se multiplica por 100.
    Esta información debe poder conseguirse en dependencias municipales, empresas de servicios públicos y de parte de los
    principales contratistas privados que trabajan en la recolección y eliminación de residuos sólidos.
    Puede obtenerse información de estudios específicos realizados para proyectos particulares sobre residuos sólidos
    municipales, especialmente relacionados con el sector informal.",
    positive: "> 25%",
    negative: "< 15%",
    medium: "15%–25%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Muchas ciudades generan más residuos sólidos municipales de los que pueden desechar. Incluso cuando los presupuestos
    municipales son suficientes para la recolección, la eliminación segura de los residuos recolectados a menudo sigue siendo
    un problema. El desvío de materiales reciclables del flujo de residuos es una estrategia para abordar este problema
    municipal.",
    other: "UN-Habitat; DAES, Indicadores de desarrollo sostenible; BAsD; Auditoría Urbana; GCIF.",
    subtheme_id: 10,
  },
  {
    title: "Porcentaje de residuos sólidos municipales de la ciudad que si utilizan como recursos energético",
    description: "Porcentaje de los residuos sólidos de la ciudad cuyo gas del relleno sanitario se recupera y utiliza para generar energía
    o calor.",
    methodology: "Este indicador se calcula como el porcentaje de los residuos sólidos municipales de la ciudad que se desvían a una planta
    de conversión de residuos en energía para su incineración. Si no existe una instalación de este tipo en funcionamiento,
    el indicador se calcula como el porcentaje de los residuos sólidos municipales de la ciudad que se desechan en un relleno
    sanitario en el que el gas de relleno se recoge y utiliza como una fuente de energía. Esta cantidad se divide por el total de
    toneladas de residuos sólidos producidos en la ciudad, expresado como porcentaje.
    Esta información debe poder conseguirse en dependencias municipales, empresas de servicios públicos y de parte de los
    principales contratistas privados que trabajan en la recolección y eliminación de residuos sólidos.
    Basado en el indicador 25 del GCIF: “Porcentaje de residuos sólidos de la ciudad desechados en un vertedero a cielo
    abierto”.",
    positive: "> 70%",
    negative: "< 40%",
    medium: "40%–70%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las iniciativas de conversión de gas residual en energía pueden tratar dos problemas fundamentales para el medio
    ambiente y la salud. Pueden capturar metano como gas de efecto invernadero (GEI) y al mismo tiempo proporcionar una
    fuente alternativa de energía.",
    other: "",
    subtheme_id: 10,
  },
  {
    title: "Porcentaje de hogares de la ciudad con conexión autorizada a la energía eléctrica.",
    description: "Porcentaje de hogares de la ciudad con conexión legal a fuentes de energía eléctrica",
    methodology: "Todos los años, en una fecha convenida, se determina la cantidad de hogares de la ciudad conectados legalmente a la
    red eléctrica (los datos provienen de la empresa local suministradora del servicio y/o del censo local). La mayoría de las
    autoridades relacionadas con el suministro de electricidad distinguen la facturación de las cuentas para establecimientos
    residenciales y no residenciales. Los establecimientos residenciales en la mayoría de las ciudades equivalen a hogares
    (aunque en algunos condominios, la estructura corporativa es titular de la cuenta de varios hogares). La cantidad de
    hogares con conexión autorizada al sistema de suministro de electricidad se divide por la cantidad total de hogares en la
    ciudad y el resultado se expresa como porcentaje. La conexión autorizada se define a partir de la existencia un sistema
    de medición instalado en los hogares.",
    positive: "90%–100%",
    negative: "< 70%",
    medium: "70%–90%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los servicios de energía modernos son esenciales, por ejemplo, para el desarrollo de actividades que eleven los ingresos
    de los más pobres a fin de cubrir sus necesidades básicas de salud y educativas y para los sistemas de suministro de
    agua. El cumplimiento de los Objetivos de Desarrollo del Milenio requiere acceso a, al menos, tres tipos de servicios
    energéticos: (1) energía para cocinar, (2) electricidad para iluminación y aparatos de apoyo de actividades hogareñas
    y comerciales y la prestación de servicios sociales y (3) energía mecánica para hacer funcionar equipos agrícolas y
    de procesamiento de alimentos, para efectuar el riego suplementario, para respaldar empresas y para todo otro uso
    productivo y para transportar mercaderías y personas.",
    other: "GCIF (véase http://cityIndicadors.org).",
    subtheme_id: 11,
  },
  {
    title: "Porcentaje de hogares de la ciudad con conexión autorizada a la red de sumunistro de gas.",
    description: "Porcentaje de hogares de la ciudad con conexión autorizada a la red de suministro de gas natural",
    methodology: "La mayoría de las autoridades relativas al suministro de gas distinguen la facturación de cuentas para establecimientos
    industriales y residenciales. Los clientes industriales en la mayoría de las ciudades equivalen a plantas termoeléctricas o
    industrias con otras condiciones de presión y volumen. En la mayoría de las ciudades, los establecimientos residenciales
    equivalen a hogares.",
    positive: "> 25%",
    negative: "< 15%",
    medium: "15–25%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los servicios modernos de energía son esenciales para el progreso en muchos aspectos de los Objetivos de Desarrollo
    del Milenio. Estos servicios deben también comprender el acceso al gas natural a fin de bajar los costos para cocinar y
    calentar agua. La quema de gas en lugar de madera mejora las condiciones de salud y ahorra tiempo a las familias, el que
    puede luego ser utilizado para otras actividades. Cuando se sustituye el gas licuado de petróleo (GLP), el acceso al gas
    reduce costos y aumenta la fiabilidad del suministro de energía.",
    other: "",
    subtheme_id: 11,
  },
  {
    title: "Cantidad promedio de las interrupciones electricicas al año por cliente",
    description: "Cantidad promedio de interrupciones eléctricas al año por cliente",
    methodology: "El Índice de frecuencia media de interrupciones del sistema (SAIFI, por sus siglas en inglés) es uno de los índices de
    fiabilidad más utilizados. El SAIFI indica la cantidad promedio de cortes de energía del sistema en un período de tiempo
    específico.
    Se calcula de la siguiente manera:

    SAIFI = Σ δ i Ni
    Σ Ni

    Donde δi
    es la tasa de fallas y Ni

    es la cantidad de clientes por lugar i. En otras palabras,
    SAIFI = Cantidad total de clientes atendidos
    Cantidad total de interrupciones a clientes

    Se determina dividiendo la cantidad total de clientes atendidos. La unidad resultante constituye las “interrupciones por
    cliente”.",
    positive: "< 10",
    negative: "> 13",
    medium: "- 13",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Es una práctica bastante común en el sector de los servicios eléctricos utilizar el SAIFI para determinar y comparar el
    rendimiento de fiabilidad. El SAIFI es una herramienta valiosa para comparar el rendimiento de fiabilidad de los servicios,
    siempre que se comparen datos similares (por ejemplo, todos los datos que excluyan grandes tormentas o que definan una
    interrupción de la misma manera).",
    other: "Índice de fiabilidad ampliamente utilizado por empresas suministradoras de energía eléctrica alrededor del mundo.",
    subtheme_id: 11,
  },
  {
    title: "Duración promedio de las interrupciones eléctricas",
    description: "Cantidad promedio de interrupciones eléctricas al año por cliente",
    methodology: "El Índice de duración promedio de interrupciones a clientes (CAIDI, por sus siglas en inglés) es un índice de fiabilidad
    comúnmente utilizado por las empresas suministradoras de energía eléctrica para indicar la duración promedio de un
    corte de energía.
    Se calcula de la siguiente manera:

    CAIDI = Cantidad total de interrupciones a clientes
    Suma de la duración total de las interrupciones a clientes",
    positive: "< 10",
    negative: "> 18",
    medium: "10 - 18 ",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Es una práctica bastante común en el sector de los servicios eléctricos utilizar el CAIDI para determinar y comparar el
    rendimiento de fiabilidad. El CAIDI es una herramienta valiosa para comparar el rendimiento de fiabilidad de los servicios,
    siempre que se comparen datos similares (por ejemplo, todos los datos que excluyan grandes tormentas o que definan una
    interrupción de la misma manera).",
    other: "Instituto de Ingenieros Eléctricos y Electrónicos (IEEE, por sus siglas en inglés).
    BC Hydro.
    Programa de informes sobre la calidad de los servicios del Consejo de Energía de Ontario (OEB, por sus siglas en inglés).
    New York State Electric & Gas Corporation.",
    subtheme_id: 11,
  },
  {
    title: "Consumo anual residencial de electricidad por hogar",
    description: "Consumo anual residencial de electricidad dividido por la cantidad de hogares (en kWh/hogar/año)",
    methodology: "El consumo anual residencial de electricidad por hogar se calcula dividiendo el uso anual residencial de electricidad de
    la ciudad en kilovatios-hora por la cantidad de hogares de la ciudad.",
    positive: "1500–3500 kWh/por hogar/año",
    negative: "900–1500 kWh/por hogar/año
    3500–5000 kWh/por hogar/año",
    medium: "900–1500 kWh/por hogar/año
    3500–5000 kWh/por hogar/año",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los servicios de energía modernos son esenciales para el desarrollo de actividades productivas que eleven los ingresos
    de los más pobres, para cubrir las necesidades básicas de salud y educativas, para muchos sistemas de suministro de
    agua y para el progreso en otros aspectos de los Objetivos de Desarrollo del Milenio. Sin embargo, un alto consumo anual
    residencial de electricidad por hogar indica una utilización no sostenible de la energía, por ejemplo debido a deficiencias
    técnicas en la transmisión y el uso final, o en virtud de ciertos patrones de comportamiento.",
    other: "Programa Global para los Indicadores Urbanos (GCIF).
    Todos los proveedores de electricidad en Canadá.",
    subtheme_id: 11,
  },
  {
    title: "Intesidad energética de la economía",
    description: "Consumo total de la energía (kilogramo de equivalente de petróleo) por unidad de la paridad del poder adquisitivo (PPA)
    del producto interno bruto (PIB), comparado con la media de los países de América Latina y el Caribe (ALC); en kg de
    equivalente de petróleo por US$1.000 del PIB",
    methodology: "Uso total de la energía dividido por PPA PIB.
    Uso de la energía: uso de la energía primaria antes de su transformación en otros combustibles de uso final, que es
    equivalente a la producción nacional más las importaciones y variaciones de existencias, menos las exportaciones y
    combustibles suministrados a barcos y aeronaves de transporte internacional.
    PPA PIB: producto interno bruto convertido a dólares internacionales constantes de 2005 mediante tasas de PPA. Un
    dólar internacional tiene el mismo poder adquisitivo sobre el PIB que un dólar estadounidense tiene en Estados Unidos.
    Respecto de los valores de referencia, hay que tener en cuenta lo siguiente:
    • Los límites se calcularon basándose en la distribución de intensidad energética en los países de ALC con una
    mediana de 116 kg de equivalente de petróleo por US$1.000 del PIB.
    • x representa la intensidad energética de la ciudad que se evalúa.
    • ** representa “kg de equivalente de petróleo por US$1.000 del PIB”.",
    positive: "Más bajo que la mediana
    de la intensidad energética
    de los países de ALC:
    < 116**",
    negative: "Más alto que 150**:
    150** < x",
    medium: "Más alto que 116**
    y más bajo que 150**:
    116** ≤ x ≤ 150** ",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La intensidad energética es una medida de la cantidad de energía necesaria para producir un dólar de producción
    económica. Es importante observar que su valor varía ampliamente entre países y muchos factores influyen en la intensidad
    energética total de una economía. Depende del nivel de industrialización y la combinación de servicios y fabricación de
    sus economías, así como también del nivel de sus programas de eficiencia energética. Este indicador proporciona datos
    para los análisis de políticas y programas, entre ellos la mejor comprensión del impacto de las opciones de programas
    y políticas en la intensidad energética. También aumenta la comprensión del papel de las mejoras de eficiencia en los
    mercados energéticos cambiantes.",
    other: "Agencia Internacional de Energía.
    Banco Mundial..",
    subtheme_id: 11,
  },
  {
    title: "Existecia, monitoreo y cumplimiento de las normas sobre eficiencia energética",
    description: "Existencia de normas de eficiencia energética en vigencia, entre ellas: i) estándares de eficiencia energética para edificios,
    ii) normas de alumbrado público eficiente, iii) normas para la gestión de energía municipal, iv) normas para adquisiciones
    corporativas eficaces, v) etiquetado de aparatos y/o vi) promoción del uso de energía termosolar para calefacción",
    methodology: "Verificar si existen normas vigentes que respalden la eficiencia energética. Estas normas deben cumplirse e implementarse
    correctamente y se las debe modernizar/ampliar con el tiempo (más que ser una medida de una sola vez).",
    positive: "Normas aprobadas,
    monitoreo frecuente y
    cumplimiento adecuado",
    negative: "Normas ineficaces, sin monitoreo o
    cumplimiento",
    medium: "Normas aprobadas,
    monitoreo inconstante,
    cumplimiento limitado",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La eficiencia energética ofrece una herramienta poderosa y rentable para lograr un futuro energético sostenible. Las
    mejoras en la eficiencia energética pueden aplacar la necesidad de invertir en infraestructura energética, reducir costos
    de combustible, aumentar la competitividad y mejorar el bienestar de los consumidores. También pueden obtenerse
    beneficios ambientales mediante la reducción de las emisiones de gases de efecto invernadero y de la contaminación local
    del aire. La seguridad energética puede también beneficiarse de una mejor eficiencia energética mediante la disminución
    del uso de combustibles fósiles importados. La formulación de políticas debe promover la eficiencia energética a través
    de normas correspondientes que deben ser monitoreadas y cumplidas para ser eficaces y sostenibles.
    Basado en http://www.iea.org/Temas/energyefficiency/.",
    other: "",
    subtheme_id: 11,
  },
  {
    title: "Porcentaje de energía renovable sobre el total de generación eléctricica",
    description: "Energía generada de fuentes de energía renovables dividida por el total de energía generada",
    methodology: "Las fuentes renovables abarcan la energía proveniente de flujos de energía ambiental actuales o de sustancias derivadas
    de ellos. Pueden clasificarse como combustibles o no combustibles. Las fuentes renovables no combustibles comprenden
    la energía geotérmica, solar, eólica, hidroeléctrica, de las olas y la marea. Las fuentes renovables combustibles y los
    residuos comprenden biocombustibles (biogás, etanol, biodiésel), productos de la biomasa (residuos vegetales de leña,
    restos de papel y pasta, residuos animales y bagazo) y la porción de residuos industriales y municipales (generados
    por los sectores de servicios residenciales, comerciales y públicos y recolectados por las autoridades locales para su
    eliminación) que se utiliza para la producción de calor y/o electricidad.",
    positive: "> 50%",
    negative: "< 20%",
    medium: "20%–50%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La energía renovable (ER) tiene un enorme potencial para transformar la vida de las personas. La volatilidad del precio
    de la energía, las incertidumbres acerca del suministro y las preocupaciones ambientales están llevando a muchos a
    considerar a las fuentes de energía renovables como una solución que proporciona servicios de energía accesibles que
    mejoran la seguridad y la confiabilidad energética. La expansión progresiva de la ER exige medidas coordinadas en varios
    frentes: de políticas, jurídico, normativo, técnico, financiero y de mitigación de riesgos.",
    other: "Agencia Internacional de Energía.",
    subtheme_id: 13,
  },
  {
    title: "Existencia, monitoreo y cumplimiento de normas sobre la calidad del aire",
    description: "Existencia, monitoreo y cumplimiento de normas sobre la calidad del aire",
    methodology: "Existencia: evaluar si existen normas aprobadas adecuadas y específicas (a nivel nacional o local).
    Cumplimiento: el cumplimiento es adecuado si se alcanzan los objetivos establecidos por las autoridades responsables
    (anualmente). Es limitado si dichos objetivos se cumplen parcialmente. Las autoridades responsables definen los
    objetivos.
    Monitoreo: el monitoreo es adecuado si se basa en normas aprobadas, se lleva a cabo con la frecuencia determinada en
    estas pautas y se lo aplica adecuadamente. Si existe autocontrol de las fuentes, el monitoreo se considera adecuado si
    se cumple plenamente con los requisitos normativos. El monitoreo es limitado si se lo lleva a cabo con una frecuencia
    menor a la adecuada.",
    positive: "Normas aprobadas,
    monitoreo frecuente y
    cumplimiento adecuado",
    negative: "Normas aprobadas,
    monitoreo frecuente y
    cumplimiento adecuado",
    medium: "Normas aprobadas,
    monitoreo inconstante,
    cumplimiento limitado",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las autoridades responsables deben crear una lista de las categorías importantes de fuentes estacionarias de la
    contaminación del aire y establecer estándares de rendimiento para las nuevas fuentes dentro de dichas categorías. Los
    estándares comprenden tanto especificaciones de quipos como requisitos de funcionamiento y medición.",
    other: "",
    subtheme_id: 14,
  },
  {
    title: "Índice de calidad del aire",
    description: "Cantidad de contaminantes nocivos en el aire, medidos por el índice de calidad del aire",
    methodology: "El índice de calidad del aire se basa en los cinco contaminantes regulados por la Ley de aire limpio de la Agencia de
    Protección Ambiental (EPA, por sus siglas en inglés) de Estados Unidos: ozono troposférico, materia particulada,
    monóxido de carbono, dióxido de azufre y dióxido de nitrógeno.
    I = (C – Clow)+ Ilow
    Ihigh –Ilow
    Chigh –Clow

    I = Índice (de calidad del aire),
    C = concentración de contaminantes,
    Clow = punto de corte de la concentración que es ≤ C,
    Chigh = punto de corte de la concentración que es ≥ C,
    Clow = punto de corte del índice que corresponde a Clow,
    Chigh = punto de corte del índice que corresponde a Chigh.
    La tabla de puntos de corte de la EPA de Estados Unidos puede encontrarse en http://www.epa.gov/airnow/aqi_tech_
    assistance.pdf.",
    positive: "0-50",
    negative: "> 100",
    medium: "51-100",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El índice de calidad del aire es un indicador utilizado por dependencias gubernamentales o instituciones similares para
    comunicar al público cuán contaminado está el aire actualmente o cuán contaminado se proyecta que esté en el futuro.
    A medida que el índice de calidad del aire aumenta, un porcentaje cada vez mayor de la población puede experimentar
    efectos adversos cada vez más graves para la salud.",
    other: "",
    subtheme_id: 15,
  },
  {
    title: "Concentración de PM 10",
    description: "Material particulado en suspensión con un diámetro inferior a 10 μm, promedio de 24 horas (en μg/m3)",
    methodology: "El material particulado es una combinación de sólidos microscópicos y gotitas de líquidos suspendidos en el aire. Estas
    partículas están integradas por una cantidad de componentes, entre ellos: ácidos (como nitratos y sulfatos), químicos
    orgánicos, metales, partículas de suelo o polvo y alérgenos (como fragmentos de polen o esporas de moho). Las partículas
    gruesas tienen un diámetro superior a 2,5micrones e inferior o igual a 10micrones y se las define como materia particulada
    respirable o PM 10. Las fuentes de partículas gruesas comprenden operaciones de trituración y molienda y polvo de calles
    pavimentadas o no pavimentadas.
    En las grandes ciudades las concentraciones de PM 10 en la atmósfera deben medirse en una o más estaciones de
    monitoreo de conformidad con el Método de referencia de la EPA contenido en 40 CFR50, Apéndice J e implementado en
    el manual Quality Assurance Handbook for Air Pollution Measurement Systems, Volume II. El documento está disponible en
    línea en: http://www.epa.gov/ttn/amtic/files/ambient/qaqc/2–11meth.pdf.
    El método establece la medición de las concentraciones en masa de PM 10 en el aire ambiente durante un período de
    muestreo de 24 horas de medianoche a medianoche. De conformidad con el programa nacional de muestreo de partículas
    de la EPA que se lleva a cabo cada seis días, cada tomador de muestras debe ponerse en funcionamiento como mínimo
    todos los sextos días designados durante todo el año. Las mediciones de 24 horas (diarias) de concentraciones de
    PM 10 se registran en una base de datos donde se calculan resúmenes anuales para cada estación de monitoreo (valores
    máximos, valores promedio, cantidad de mediciones, etc.). El método comprende el uso de un tomador de muestras de
    aire que aspira aire ambiente a un caudal constante a una boca de entrada de forma espacial donde la materia particulada
    suspendida se separa inercialmente en una o más fracciones cuyo tamaño se encuentra dentro del rango del tamaño de
    PM 10. Cada fracción cuyo tamaño se encuentra dentro del rango del tamaño de PM 10 se recoge en un filtro separado
    durante el período de muestreo específico.
    Todos los filtros se pesan (luego de equilibrar la humedad) antes y después de su uso para determinar el aumento de
    peso neto (masa) debido al PM 10 recolectado. El volumen total del aire muestreado, corregido según las condiciones
    de referencia de la EPA (25°C, 101,3 kPa) se determina del caudal medido y del tiempo de muestreo. La concentración
    en masa de PM 10 en el aire ambiente se calcula como la masa total de las partículas recogidas en el rango de tamaño
    de PM 10 dividida por el volumen de aire muestreado y se expresa en microgramos por metro cúbico estándar (μg/
    est m3
    ). En el caso de muestras de PM 10 recolectadas a temperaturas y presiones significativamente diferentes de las
    de las condiciones de referencia de la EPA, estas concentraciones corregidas en ocasiones difieren sustancialmente
    de las concentraciones reales (en microgramos por metro cúbico real), especialmente en grandes alturas. La ubicación
    vertical de los tomadores de muestras debe ser tal que la altura de las bocas de entrada no sea inferior a dos metros ni
    superior a quince metros sobre la elevación del terreno. Si el tomador de muestras se ubicara en un techo o cerca de
    cualquier estructura, debe existir un espacio libre mínimo de dos metros desde las paredes circundantes u obstáculos.
    Aunque no se lo exige, la concentración real de PM 10 puede calcularse a partir de la concentración corregida mediante
    la temperatura ambiente promedio y la presión barométrica durante el período de muestreo.
    Basado en el indicador 63 del GCIF: “Concentración de PM 10”.",
    positive: "< 50 PM 10 en promedio en 24 horas en μg/m3",
    negative: "> 150 PM 10 en promedio en 24 horas en μg/m3",
    medium: "50–150 PM 10 en promedio en 24 horas en μg/m3",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La evidencia sobre material particulado en el aire y su impacto en la salud pública consistentemente muestra efectos
    negativos para la salud en las exposiciones que experimentan actualmente las poblaciones urbanas tanto de los países
    desarrollados como en desarrollo. El material particulado plantea un problema para la salud porque se puede inhalar y
    así acumularse en el sistema respiratorio.
    Se considera que las personas que sufren de enfermedades cardíacas o pulmonares, los adultos mayores y los niños tienen
    más riesgo debido a la contaminación por partículas. Las exposiciones prolongadas (media anual) a las partículas, como
    la experimentada por personas que viven durante muchos años en zonas con altos niveles de partículas, se han asociado
    con problemas como la disminución de la función pulmonar y el desarrollo de bronquitis crónica, e incluso la muerte
    prematura. Las exposiciones breves (24 horas) a las partículas pueden agravar enfermedades pulmonares, causando
    ataques de asma y bronquitis aguda y pueden también aumentar la susceptibilidad a infecciones respiratorias. La alta
    contaminación por partículas en grandes ciudades como Hong Kong, Beijing, etc. tiene impactos negativos importantes
    en su crecimiento económico/comercial debido a una disminución de las inversiones extranjeras. De acuerdo con la
    Organización Mundial de la Salud (OMS), se estima que la contaminación del aire causa aproximadamente 2 millones
    de muertes prematuras por año en todo el mundo. En muchas ciudades, los niveles anuales promedio de PM 10 exceden
    los 70 microgramos por metro cúbico (ì/m3
    ).
    Basado en el indicador 63 del GCIF: “Concentración de PM 10”.",
    other: "Indicador 63 del GCIF: “Concentración de PM 10”.
    EPA, OMS.",
    subtheme_id: 15,
  },
  {
    title: "Existencia y monitoreo de un inventario de gases de efecto invernadero (GEI)",
    description: "Existencia de un sistema de medición de emisiones de GEI con un sistema de monitoreo",
    methodology: "Los inventarios de GEI comprenden la elaboración de un perfil de emisiones de GEI por fuente o sector, entre ellas las
    emisiones del gobierno y de la comunidad, provenientes de: fuentes de combustión estacionarias (procesos de combustión
    en centrales e industrias eléctricas), fuentes móviles (combustión de combustibles para transporte en vehículos de
    transporte público, de propiedad de la comunidad y operados por ella), residuos sólidos y aguas residuales (vertederos,
    plantas de tratamiento de aguas residuales), consumo energético en edificios (edificios gubernamentales, de servicios
    públicos, industriales, comerciales, viviendas, etc.), emisiones fugitivas (provenientes del uso de acondicionadores de aire
    en vehículos, edificios gubernamentales, sectores comerciales, industriales y residenciales, transmisión y distribución de
    electricidad, pérdidas de gas, etc.), y uso del suelo y reservas de carbono forestales modificadoras (programas forestales,
    deforestación, desbroce y despeje del terreno para emprendimientos, etc.). Para cada fuente o sector se aplica un factor
    de emisiones de GEI, el cual varía en función de los patrones de consumo energético, procesos de combustión, tipo de
    combustible, tecnología u otros factores. Existen disponibles pautas técnicas sobre cómo compilar un inventario de GEI
    en varias fuentes (véase el apartado “Otras organizaciones” más abajo).",
    positive: "Existencia de un inventario
    específico para la ciudad, con
    sistema de monitoreo y capacidad
    de implementarlo",
    negative: "No existe inventario",
    medium: "Existencia de un inventario
    basado en fuentes nacionales o
    un inventario local sin sistema
    de monitoreo y capacidad para
    implementarlo",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Un inventario de GEI proporciona un perfil de emisiones para una entidad operativa, gobierno de la ciudad, comunidad
    o jurisdicción nacional o regional. Los inventarios de GEI requieren la determinación de un año o período de referencia
    para poder realizar los cálculos y las proyecciones de emisiones para los próximos años y períodos. Los inventarios de GEI
    proporcionan los perfiles de emisiones necesarios de una entidad o jurisdicción determinada y son útiles para establecer
    escenarios de emisiones para períodos futuros. Sobre la base de los inventarios de GEI, distintas entidades pueden
    fijar objetivos de reducción de emisiones como una forma de reducir su contribución a la emisión global, perseguir la
    eficiencia en el uso de la energía y generar beneficios económicos y sociales.",
    other: "Protocolo internacional de análisis de emisiones de GEI para gobiernos locales (IEAP, por sus siglas en inglés), elaborado por
    el International Council for Local Environmental Iniciatives (ICLEI).
    Protocolo de informes de GEI (World Resources Institute, WRI/Consejo Mundial Empresarial para el Desarrollo Sostenible,
    WBCSD).
    Guía sobre GEI para líderes del clima (Agencia de Protección Ambiental de los Estados Unidos, USEPA).
    Pautas para inventarios nacionales de GEI (Convención Marco de las Naciones Unidas sobre el Cambio Climático, CMNUCC).
    Protocolo global para emisiones de GEI a nivel comunitario (C40, WRI, Alianza de las Ciudades, Grupo del Banco Mundial,
    UN-Habitat y Programa de las Naciones Unidas sobre el Medio Ambiente, UNEP). Este protocolo todavía no cuenta con un
    método contable para emisiones provenientes del cambio en el uso del suelo y actividades forestales.",
    subtheme_id: 16,
  },
  {
    title: "Emisiones de GEI/cápita",
    description: "Emisiones de gasos de efecto invernadero (GEI) de la ciudad divididas por la población de la ciudad (en toneladas anuales
    de CO2e per cápita)",
    methodology: "El número anual agregado total de toneladas (expresado como equivalentes de dióxido de carbono) de las emisiones de
    GEI se calcula para todas las actividades dentro de la ciudad con respecto a los últimos 12 meses. Esta cifra se divide por
    la población actual de la ciudad para obtener una cifra per cápita. Los GEI son gases que se encuentran en la atmósfera y
    que absorben la radiación infrarroja que de otra manera se escaparía hacia el espacio, lo que contribuye, de este modo,
    a aumentar la temperatura de la superficie. Existen seis GEI principales: el dióxido de carbono (CO2

    ), el metano (CH4
    ), el

    óxido nitroso (N2

    O), hidrofluorocarbonos (HFC), perfluorocarbonos (PFC) y el hexafluoruro de azufre (SF6

    ). Estos gases

    permanecen en la atmósfera durante largos períodos (es decir, son de larga duración).",
    positive: "< 5",
    negative: "5–10",
    medium: "5–10",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las emisiones anuales de GEI de todas las actividades dentro de la ciudad es un indicador del aporte negativo que la
    ciudad hace al cambio climático en relación con el tamaño de la población de una región, país, estado/provincia, ciudad
    o comunidad.",
    other: "Protocolo internacional de análisis de emisiones de GEi para gobiernos locales (IEAP, por sus siglas en inglés), elaborado por
    el ICLEI.
    Protocolo de informes de GEI (WRI/WBCSD).
    Guía sobre GEI para líderes del clima (USEPA).
    Pautas para inventarios nacionales de GEI (CMNUCC).
    Protocolo global para emisiones de GEI a nivel comunitario (C40, WRI, Alianza de las Ciudades, Grupo del Banco Mundial,
    UN-Habitat y UNEP). Este protocolo todavía no cuenta con un método contable para emisiones provenientes del cambio
    en el uso del suelo y actividades forestales.",
    subtheme_id: 17,
  },
  {
    title: "Emisiones de GEI/PIB",
    description: "Emisiones de gasos de efecto invernadero (GEI) de la ciudad divididas por la población de la ciudad (en toneladas anuales
    de CO2e per cápita)",
    methodology: "Este indicador es una medida de las emisiones de GEI por unidad de producción económica y, por lo tanto, de la eficiencia
    de la ciudad en términos de emisiones de carbono. Las emisiones de GEI se miden como equivalente de CO2

    . La producción

    económica se expresa como el PIB de la ciudad.",
    positive: "< 0.35",
    negative: "> 0,8",
    medium: "0,35–0,8",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La intensidad de CO2 de la economía es una función de dos variables.
    La primera variable es la intensidad energética o la cantidad de energía consumida por unidad del PIB. Esto refleja tanto
    el nivel de eficiencia energética de una ciudad como su estructura económica general, incluido el contenido de carbono
    de las mercaderías importadas y exportadas. Es más probable que una economía dominada por una producción industrial
    pesada, por ejemplo, tenga una mayor intensidad energética que una en la que prevalece el sector de los servicios,
    aunque la eficiencia energética de los dos países sea idéntica. Del mismo modo, una ciudad que depende del comercio
    para adquirir (importar) productos con alto contenido de carbono tendrá —cuando los demás factores sean iguales— una
    menor intensidad energética que aquellas ciudades que fabrican los mismos productos para exportar.
    El segundo componente de la intensidad de las emisiones es la mezcla de combustible o, más específicamente, el
    contenido de carbono de la energía consumida en una ciudad. El producto de la intensidad energética (E/PIB) y de la
    mezcla de combustible (CO2

    /E) es igual a la intensidad del CO2
    (CO2
    /PIB).",
    other: "Este indicador o versiones similares son utilizados con frecuencia, especialmente a nivel nacional, por ejemplo por el
    Banco Mundial (http://data.worldbank.org/Indicador/EN.ATM.CO2E.PP.GD) y las Naciones Unidas (http://data.un.org/Data.aspx?d=MDG&f=seriesRowID%3A788).",
    subtheme_id: 17,
  },
  {
    title: "Existencia de planes de mitigación con objetivos de reducción por sector y sistema de monitoreo en vigencia",
    description: "Existencia de planes de mitigación con objetivos de reducción por sector y sistema de monitoreo en vigencia que ilustren
    la capacidad de la ciudad para definir, reglamentar y poner en práctica las medidas de mitigación de GEI en diferentes
    sectores",
    methodology: "Las ciudades pueden elaborar estrategias específicas e instrumentos de planificación para mitigar las emisiones de
    gases de efecto invernadero (GEI). También pueden incorporar medidas de mitigación en estrategias sectoriales y otros
    instrumentos de planificación, como planes de desarrollo local. Los planes de mitigación disponibles deben ser revisados
    para verificar si incluyen los siguientes aspectos:
    a. El plan tiene objetivos cuantitativos.
    b. El plan cuenta con un sistema de monitoreo y cumplimiento.
    c. El plan fue adoptado formalmente.",
    positive: "Existe un plan de mitigación que ha
    sido formalmente adoptado, tiene
    objetivos cuantitativos y cuenta
    con un sistema de monitoreo y
    cumplimiento.",
    negative: "No existe ningún plan de mitigación.",
    medium: "Existe un plan de mitigación pero no
    ha sido adoptado, no tiene objetivos
    cuantitativos o un sistema adecuado
    de monitoreo o cumplimiento.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Mediante las emisiones de GEI, las ciudades causan un impacto negativo en lo que respecta al cambio climático. A
    fin de reducir este impacto, es esencial que cuenten con sistemas adecuados de planificación y monitoreo. Contar con
    objetivos de reducción de emisiones para los sectores con mayores aportes es una condición previa para el éxito de las
    medidas locales de mitigación y evidencia la ambición de la ciudad en esta área. Los planes de mitigación describen
    cómo se puede alcanzar estos objetivos. Contienen medidas concretas para ayudar a la ciudad a reducir sus emisiones y
    en general generan beneficios colaterales de tipo económico y social.",
    other: "",
    subtheme_id: 18,
  },
  {
    title: "Existencia, monitoreo y cumplimiento de normas sobre contaminación acústica",
    description: "Exixtencia de mecanismos normativos para reducir la contaminación acústica",
    methodology: "Existencia: evaluar si existen normas aprobadas y apropiadas específicas (a nivel nacional y local).
    Cumplimiento: es adecuado si se cumplen los objetivos establecidos por las autoridades responsables (anualmente).
    El cumplimiento es limitado cuando los objetivos se cumplen parcialmente. Las autoridades responsables definen los
    objetivos.
    Monitoreo: el monitoreo es adecuado si se basa en normas aprobadas, se lleva a cabo con la frecuencia fijada en estas
    pautas y se lo aplica adecuadamente. Si existe autocontrol de las fuentes, el monitoreo se considera adecuado si se
    cumple plenamente con los requisitos normativos. El monitoreo es limitado si se lo lleva a cabo con una frecuencia menor
    a la adecuada.",
    positive: "Normas aprobadas, monitoreo
    frecuente y cumplimiento adecuado",
    negative: "Normas no aprobadas, sin monitoreo
    o cumplimiento",
    medium: "Normas aprobadas, monitoreo
    inconstante y cumplimiento limitado",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las autoridades responsables deben crear una lista de las categorías importantes de fuentes estacionarias de
    contaminación acústica y establecer estándares de rendimiento para las nuevas fuentes dentro de dichas categorías. Los
    estándares comprenden tanto especificaciones de equipos como requisitos de funcionamiento y medición.",
    other: "",
    subtheme_id: 19,
  },
  {
    title: "Existencia de mapas de riesgos",
    description: "Existencia de mapas de riesgos a escala adecuada para los principales peligros que amenazan la ciudad",
    methodology: "El indicador está clasificado en verde si los mapas de riesgo cumplen las siguientes condiciones:
    1. A los efectos de este indicador, un mapa de riesgos tiene que:
    • Basarse en: i) una revisión de las características de las amenazas, como su ubicación, intensidad, frecuencia y
    probabilidad de ocurrencia (excepto para la actividad volcánica y los deslizamientos, para los cuales es suficiente
    un análisis de susceptibilidad basado en datos históricos y las características del área afectada); ii) el análisis
    de exposición y vulnerabilidades y iii) el cálculo de las posibles pérdidas (adaptado de la terminología sobre
    reducción de riesgos de desastres de la UNISDR, 2009).
    • Mostrar la pérdida máxima esperada para los escenarios de amenazas considerados.
    2. Los mapas de riesgos existen a escala de al menos 1:10.000.
    3. Los mapas de riesgos incluyen información sobre los peligros principales que amenazan a la ciudad.
    4. Los mapas de riesgos toman en cuenta escenarios del cambio climático de medio y largo plazo (idealmente
    para 2050 y 2100) para amenazas que podrían verse agravadas por el cambio climático.
    Si los mapas de riesgo incluyen los peligros principales que amenazan a la ciudad y están disponibles sólo a escala menos
    detallada que 1:10.000 pero al menos a escala 1:25.000, el indicador se clasifica en color amarrillo.
    El indicador se clasifica en rojo si no se cumple alguna de las condiciones para la clasificación amarilla.",
    positive: "Existencia de mapas de riesgos a
    escala de 1:10.000 que incluyan los
    principales peligros que amenazan
    a la ciudad y consideran escenarios
    del cambio climático",
    negative: "No existen mapas de riesgos como
    se los define en la metodología,
    o existen pero a escala menos
    detallada que 1:25.000, o bien no
    incluyen los peligros principales que
    amenazan a la ciudad.",
    medium: "Existencia de mapas de riesgos a
    escala de 1:10.000 que incluyan los
    principales peligros que amenazan
    a la ciudad y consideran escenarios
    del cambio climático",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Salvo que las ciudades entiendan claramente los riesgos que enfrentan, la planificación para la reducción significativa de
    riesgos de desastres puede resultar ineficaz. El análisis y las evaluaciones de riesgos son requisitos previos esenciales para
    tomar decisiones bien fundamentadas, dar prioridad a proyectos, planificar medidas de reducción de riesgos e identificar
    áreas de riesgo alto, medio y bajo, de acuerdo con sus vulnerabilidades y la relación costo-eficacia de las posibles
    medidas. Un sistema de información geográfica adecuadamente mantenido para representar amenazas, vulnerabilidades
    y la exposición de personas, como también de activos y capacidades, sentará las bases para la evaluación de riesgos.",
    other: "",
    subtheme_id: 20,
  },
  {
    title: "Existencia de planes de contingencia adecuados para desastres naturales",
    description: "La ciudad ha elaborado un plan de respuesta adecuado (o plan de contingencia) para diferentes tipos de desastres naturales.",
    methodology: "Este indicador toma en consideración: i) si la ciudad cuenta con un plan de contingencia completo y ii) si el plan ha sido
    probado mediante simulacros y si se ha adaptado en consecuencia. Un plan de contingencia completo debe incluir: a) un
    análisis de los posibles escenarios de emergencia, b) un análisis del posible impacto humanitario y las consecuencias de
    los escenarios identificados, c) claros objetivos, estrategias, políticas, procedimientos, protocolos y medidas coordinadas
    cruciales que deben adoptarse para responder ante una emergencia y d) mecanismos definidos para asegurarse de que se
    registren los acuerdos y se tomen las medidas necesarias a fin de mejorar el grado de preparación.
    Adaptado de Inter-Agency Contingency Planning Guidelines for Humanitarian Assistance, del grupo Inter-Agency Standing
    Committee (IASC) de las, Naciones Unidas.",
    positive: "Plan completo, actualizado y
    probado mediante simulacros al
    menos una vez por año",
    negative: "Plan incompleto, desactualizado
    o no se ha probado mediante
    simulacros en los últimos 12 meses",
    medium: "Plan incompleto, desactualizado o
    no probado en los últimos 12 meses",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La experiencia confirma que una respuesta humanitaria eficaz en el inicio de una crisis depende en gran medida del nivel
    de preparación y planificación de las dependencias/organizaciones que deben hacerle frente a esa crisis, como también
    de las capacidades y recursos de los que disponen. Se espera que las ciudades que cuentan con planes de contingencia
    respondan de manera más oportuna y eficaz ante desastres y que estén en una mejor posición para evitar pérdidas
    humanas y, en algunos casos, económicas.",
    other: "La experiencia confirma que una respuesta humanitaria eficaz en el inicio de una crisis depende en gran medida del nivel
    de preparación y planificación de las dependencias/organizaciones que deben hacerle frente a esa crisis, como también
    de las capacidades y recursos de los que disponen. Se espera que las ciudades que cuentan con planes de contingencia
    respondan de manera más oportuna y eficaz ante desastres y que estén en una mejor posición para evitar pérdidas
    humanas y, en algunos casos, económicas.",
    subtheme_id: 20,
  },
  {
    title: "Existencia de sistemas eficaces de alerta temprana",
    description: "La ciudad cuenta con sistemas de alerta temprana.",
    methodology: "La alerta temprana es más que un simple pronóstico. Un sistema de alerta temprana (SAT) debe tener cuatro elementos:
    i) conocimiento de riesgos, ii) servicio de monitoreo y alerta, iii) difusión y comunicación y iv) capacidad de respuesta.
    Esto implica que debe verificarse si: i) las autoridades locales han identificado las zonas propensas a desastres de la
    ciudad para cada amenaza relevante, ii) la ciudad tiene acceso a un sistema de monitoreo para cada amenaza relevante
    y dicho sistema puede generar alertas precisas y oportunas, iii) las alertas llegan a las personas en situación de riesgo,
    quienes pueden entenderlas y iv) las personas y autoridades se encuentran preparadas para reaccionar ante las alertas.
    Si no se cumple con estos cuatros elementos, el indicador debe aparecer en rojo. Si los sistemas disponibles cuentan
    con los cuatro elementos mencionados anteriormente, la clasificación del indicador en verde o amarillo dependerá de la
    existencia de simulacros para probar el SAT.
    Adaptado de la plataforma de la Estrategia internacional para la reducción de desastres para la promoción de alertas
    tempranas (véase http://www.unisdr.org/2006/ppew/).",
    positive: "Sistema de alerta temprana
    para las principales amenazas
    naturales, con múltiples vías
    de comunicación y probado
    al menos una vez por año",
    negative: "No existe sistema
    de alerta temprana o este
    tiene solo una vía de comunicación
    y sin pruebas periódicas
    (simulacros)",
    medium: "Sistema de alerta temprana
    para las principales amenazas
    naturales, con múltiples vías
    de comunicación y probado
    en los últimos 24 meses",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los sistemas de alerta temprana desempeñan un papel fundamental para evitar que situaciones de amenaza se conviertan
    en desastres. Alertas claras, recibidas a tiempo, junto con el conocimiento de cómo reaccionar, hacen la diferencia entre
    la vida y la muerte o entre la supervivencia económica y la ruina, tanto para personas como para ciudades. Las ciudades
    que cuentan con sistemas eficaces de alerta temprana para las principales amenazas naturales podrán reducir las
    pérdidas humanas y, en algunos casos, económicas. En este sentido, los SAT colaboran para que las ciudades sean menos
    vulnerables a los desastres naturales.",
    other: "Oficina Humanitaria de la Comisión Europea (ECHO), “Matriz Regional de Indicadores de Capacidad de Primera Respuesta
    de las Estructuras Municipales ante Desastre de Origen Socio-Natural”, Estándar de referencia 3.2 (véase http://www.
    desaprender.org/tools/documento-regional-2012).
    Install EWS in your city and hold regular public preparedness drills es parte de los 10 puntos esenciales de la campaña global
    “Desarrollando ciudades más resilientes: ¡Mi ciudad se está preparando!” de la Oficina de las Naciones Unidas para la
    Reducción del Riesgo de Desastres (UNISDR).",
    subtheme_id: 20,
  },
  {
    title: "Gestipn de riesgos de desastres en la planificación del desarollo urbano",
    description: "La ciudad ha incorporado la gestión de riesgos de desastres en sus instrumentos principales de planificación de
    desarrollo o ha preparado instrumentos específicos de planificación de la gestión de riesgos de desastres a fin de reducir
    su vulnerabilidad a las amenazas naturales.",
    methodology: "La gestión de riesgos de desastres incluye la identificación de los riesgos, su prevención, mitigación y actividades de
    preparación ante desastres, así como la determinación de una estrategia para la gestión de riesgos financieros.
    Algunas ciudades han incorporado medidas de gestión de riesgos de desastres en sus instrumentos principales de
    planificación, como los planes de desarrollo local. Otras ciudades cuentan con un instrumento de planificación específico
    para la gestión de riesgos de desastres (por ejemplo, un plan de gestión de riesgos de desastres o un plan de adaptación
    al cambio climático). En ambos casos, los instrumentos tienen que cumplir con las siguientes condiciones:
    Los instrumentos de planificación:
    1. Están basados en un análisis probabilístico de los riesgos de desastres (para actividades volcánicas y
    desprendimientos de tierra, basta con un análisis de susceptibilidad basado en datos históricos y las características
    de la zona afectada).
    2. Identifican medidas para la gestión de riesgos de desastres e incluyen un presupuesto para dichas medidas.
    Algunos ejemplos son: el análisis del riesgo, la instalación de sistemas de alerta temprana, la preparación para
    desastres (capacitación del equipo de respuesta ante emergencias; simulacros de emergencia etc.), la construcción
    y el mantenimiento de la infraestructura fundamental que reduce el riesgo (como el drenaje para inundaciones),
    la evaluación de la seguridad de la infraestructura fundamental, como escuelas e instalaciones de salud y su
    reequipamiento si es necesario etc.
    3. Identifican actividades para la gestión de riesgos financieros.
    4. Han sido elaborados o actualizados hace menos de 36 meses.
    5. Han sido aprobados por las autoridades competentes.
    Si no se cumple con una o más de estas cinco condiciones, el indicador debe clasificarse como rojo. Para la clasificación
    verde, los instrumentos de planificación (además de cumplir con las cinco condiciones anteriores) deben tener en cuenta
    los escenarios del cambio climático (si las amenazas correspondientes pueden verse agravadas por causa de este).",
    positive: "La ciudad cuenta con instrumentos
    de planificación (específicos o
    integrados) para la gestión de
    riesgos de desastres que cumplen
    con las cinco condiciones descriptas
    en la metodología y además
    consideran los escenarios del
    cambio climático.",
    negative: "La ciudad no cuenta con
    instrumentos de planificación
    (específicos o integrados) para la
    gestión de riesgos de desastres que
    cumplan con las cinco condiciones
    descriptas en la metodología.",
    medium: "La ciudad cuenta con instrumentos
    de planificación (específicos
    o integrados) para la gestión
    de riesgos de desastres que
    cumplen con las cinco condiciones
    descriptas en la metodología, pero
    no consideran los escenarios del
    cambio climático.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La inversión en infraestructura fundamental que reduce riesgos y la renovación de dicha infraestructura fundamental
    forman parte de la lista de verificación de los 10 puntos esenciales para desarrollar ciudades resilientes de la UNISDR
    (véase Cómo desarrollar ciudades más resilientes. Manual para líderes de los gobiernos locales): (http://www.preventionweb.
    net/files/26462_handbookfinalonlineversion.pdf.)",
    other: "UNISDR, como parte de los 10 puntos fundamentales de la campaña global “Desarrollando ciudades más resilientes: ¡Mi ciudad se está preparando!”.",
    subtheme_id: 20,
  },
  {
    title: "Porcentaje de entregables de los instrumentos de los intrusmentos de planificación para la gestión de riesgos de desastres que han sido completados",
    description: "Porcentaje de los entregables planeados de los instrumentos de planificación para la gestión de riesgos de desastres que
    han sido completados",
    methodology: "Revisar el número de los entregables planeados en los principales instrumentos de planificación para el desarrollo de la
    ciudad y/o los instrumentos específicos de planificación para la gestión de riesgos de desastres (según corresponda) y
    determinar el porcentaje de los entregables que han sido completados.",
    positive: "> 50%",
    negative: "< 20%",
    medium: "20%–50%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La planificación eficaz para los riesgos de desastres desempeña un papel fundamental en la prevención o reducción del
    impacto negativo de los desastres naturales y el cambio climático en las ciudades. Una planificación adecuada y una
    implementación prudente pueden hacer la diferencia entre la vida y la muerte y entre la supervivencia económica y la
    ruina, tanto para personas como para ciudades. Las ciudades que cuentan con planes eficaces para sus sectores más
    importantes podrán reducir las pérdidas humanas y económicas, y así disminuir sus vulnerabilidades.",
    other: "UNISDR, como parte de los 10 puntos fundamentales de la campaña global “Desarrollando ciudades más resilientes: ¡Mi ciudad se está preparando!”.",
    subtheme_id: 20,
  },
  {
    title: "Asignación presupuestario para la gestión de riesgos de desastre",
    description: "Existen recursos financieros disponibles para responder ante emergencias, reducción de vulnerabilidades y sistemas de
    transferencia de riesgos (por ejemplo, seguros).",
    methodology: "Este indicador se relaciona con la disponibilidad de recursos financieros para implementar medidas de respuesta ante
    emergencias, y para preparación, prevención y mitigación y mecanismos de transferencia de riesgos. Si la ciudad
    solo tiene acceso a recursos para responder ante emergencias, el indicador se clasificará como rojo. Si la ciudad tiene
    acceso a recursos para implementar sistemas de alerta temprana, actividades de preparación descriptas en el plan de
    contingencia y medidas de reducción de riesgos, como la refacción de la infraestructura fundamental, pero no cuenta
    con ningún sistema de transferencia de riesgos, el indicador se clasificará como amarillo. El indicador se clasificará como
    verde únicamente cuando exista una combinación de fondos para responder ante emergencias con una gestión proactiva
    de riesgos también antes de los desastres y un mecanismo de transferencia de riesgos.",
    positive: "La ciudad tiene acceso a fondos
    para responder ante emergencias y
    reducir ex ante los riesgos, y cuenta
    con un sistema para la transferencia
    de riesgos (por ejemplo, seguros).",
    negative: "La ciudad solo tiene acceso a fondos
    para respuestas ante emergencias.",
    medium: "La ciudad tiene acceso a
    fondos para respuestas ante
    emergencias y reducción ex-ante de
    vulnerabilidades.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los planes de acción seguirán siendo solo eso —planes— a menos que se les hayan asignado fondos para asegurarse de
    que las medidas relacionadas con la reducción de riesgos puedan ponerse en práctica. Los gobiernos locales necesitan
    capacidades y mecanismos para acceder y gestionar recursos, entre ellos recursos para reducir los riesgos de desastres,
    como parte de la visión, la misión y los planes estratégicos de la ciudad. Los recursos financieros pueden provenir de

    los ingresos de la ciudad, giros del gobierno nacional y asignaciones a departamentos sectoriales, asociaciones público-
    privadas, cooperación técnica, la sociedad civil u organizaciones externas.",
    other: "UNISDR, como parte de los 10 puntos esenciales de la campaña global “Desarrollando ciudades más resilientes: ¡Mi ciudad
    se está preparando!”. ECHO, “Matriz Regional de Indicadores de Capacidad de Primera Respuesta de las Estructuras
    Municipales ante Desastre de Origen Socio-Natural”, Indicadores 2.33 y 2.3.5 (véase http://www.desaprender.org/tools/
    documento-regional-2012).",
    subtheme_id: 20,
  },
  {
    title: "Infraestructura fundamental en situación de riesgo debido a construcción inadecuada o ubicación en zonas de riesgo no mitigable",
    description: "Porcentaje de infraestructura pública fundamental vulnerable a los desastres naturales",
    methodology: "Se necesita un inventario de la infraestructura fundamental y de los mapas de amenazas y riesgos de la ciudad para
    evaluar este indicador. Si la ciudad cuenta con mapas de riesgos, el porcentaje de la infraestructura fundamental en
    situación de riesgo puede identificarse directamente en función de ellos. Si solo existen mapas de amenazas, se identifica
    el porcentaje de la infraestructura fundamental en zonas clasificadas como altamente peligrosas en el mapa y los expertos
    evalúan en términos cualitativos si dicha infraestructura fundamental es vulnerable a la amenaza considerada. En
    otras palabras, si no existen mapas de riesgos, el análisis llevado a cabo en función de los mapas de amenazas debe
    complementarse con un análisis cualitativo de vulnerabilidades de la infraestructura fundamental basado en la opinión
    de expertos.
    Este indicador se clasificará como rojo si el porcentaje de la infraestructura pública fundamental vulnerable a los
    desastres naturales es igual o superior al 20% en uno o más de los siguientes sectores:
    • Transporte (por ejemplo, carreteras esenciales).
    • Energía (por ejemplo, centrales eléctricas).
    • Suministro de agua (por ejemplo, sistemas de agua potable).
    • Comunicaciones (por ejemplo, sistemas de transmisión).
    • Salud (por ejemplo, hospitales).
    • Gobierno (por ejemplo, centros de operaciones de emergencia).
    • Educación (por ejemplo, escuelas).
    Para obtener más información sobre infraestructura fundamental, véase http://www.dhs.gov/critical-infrastructure-sectors.",
    positive: "< 10% en todos los sectores",
    negative: "> 20% en cualquier sector",
    medium: "10%–20% en todos los sectores
    (o < 10% solo en algunos)",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La infraestructura física, en sectores como el de transporte, energía y comunicaciones, y la infraestructura social, en
    sectores como el de salud, gobierno y educación, son fuertemente interdependientes en zonas urbanas, y vulnerables
    a los efectos negativos no lineales que pueden surgir cuando se superan los umbrales críticos de temperatura, vientos
    o agua. La infraestructura urbana no suele estar diseñada para soportar eventos extremos, especialmente en países
    en desarrollo. Es probable que debido a las temperaturas extremas y los ciclos de precipitaciones menos predecibles
    se necesite reemplazar o reparar con más frecuencia la infraestructura clave (por ejemplo, para la producción o el
    transporte de energía) ya que su capacidad operativa puede verse reducida (por ejemplo, apagones o interrupciones del
    servicio) si en el diseño de la infraestructura no se han tomado en consideración las posibles variaciones climáticas. Si la
    infraestructura ha sido construida de manera inadecuada o en ubicaciones expuestas, aumenta el riesgo de los ciudadanos
    y el costo de reconstrucción en caso de desastres naturales. Este indicador mide el porcentaje de la infraestructura física
    fundamental de la ciudad que puede verse afectado.",
    other: "",
    subtheme_id: 21,
  },
  {
    title: "Porcentaje de hogares en riesgo debido a construcción inadecuada o ubicación
    en áreas con riesgo no mitigable",
    description: "Porcentaje de hogares en riesgo debido a paredes, techos o pisos inseguros, o debido a su ubicación en áreas con riesgo
    no mitigable.",
    methodology: "Para evaluar este indicador se necesitan los mapas de peligros y riesgos de la ciudad. Si los mapas de riesgos están
    disponibles, los hogares en riesgo pueden identificarse directamente. Si solo están disponibles los mapas de peligros, se
    identifican los hogares ubicados en áreas clasificadas como altamente peligrosas y los expertos analizan cualitativamente
    si estos hogares son vulnerables al peligro en cuestión. En otras palabras, si los mapas de riesgos no están disponibles,
    el análisis basado en los mapas de peligros debe complementarse con un análisis cualitativo de vulnerabilidad de los
    hogares basado en el dictamen de expertos.",
    positive: "< 10%",
    negative: "> 20%",
    medium: "10%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La rápida expansión puede representar un obstáculo para la capacidad de las ciudades para planificar y controlar el
    desarrollo, el uso del suelo y la construcción adecuada. Los estándares de construcción inadecuados y la construcción
    informal aumentan el riesgo de los ciudadanos ante desastres naturales. Este indicador mide la proporción de hogares
    susceptible de ser afectada por peligros naturales.
    Basado en http://emi-megacities.org/home/components/com_booklibrary/ebooks/Urban_Risk_DiscussionPaper.pdf.",
    other: "",
    subtheme_id: 21,
  }
]

Indicator.create!(indicator_attributes1)
puts '5 done!'

statistic_attributes1 = [
  #Indicador 1,
  {
    title: "Numero de hogares con conectados a la red de agua",
    value: 80085.00,
  },
  {
    title: "Total de hogares",
    value: 80085.00,
  },
  #Indicador 2,
  {
    title: "Metros cúbicos de agua facturada en un periodo",
    value: 80085.00,
  },
  {
    title: "Población total relacionada con las viviendas facturadas por agua",
    value: 80085.00,
  },
  #Indicador 3,
  #indicador 4,
  #indicador 5,
  {
    title: "Volumen total de agua suministrada",
    value: 80085.00,
  },
  {
    title: "Volumen total de agua facturada",
    value: 80085.00,
  },
  #indicador 7,
  {
    title: "Numero de hogares con conectados a la red de alcantarillado",
    value: 80085.00,
  },
  #indicador 8,
  {
    title: "Total de agua recidual trata",
    value: 80085.00,
  },
  {
    title: "Total de agua consumida",
    value: 80085.00,
  },
   #indicador 9,
   {
    title: "Total de hogares afectados por inundaciones",
    value: 80085.00,
  },
  #indicador 10
  #indicador 11
  {
    title: "Total de toneladas de residuos solidos municipales desechadas en rellenos sanitarios",
    value: 80085.00,
  },
  {
    title: "Total de toneladas de residuos solidos producidos por la ciudad",
    value: 80085.00,
  },
  #indicador 12,
  #indicador 13,
  #indicador 14,
  {
    title: "Total de toneladas de residuos solidos compostados",
    value: 80085.00,
  },
  #indicador 15,
  {
    title: "Total de toneladas de residuos solidos reciclado",
    value: 80085.00,
  },
   #indicador 16,
  {
    title: "Total de toneladas de residuos solidos usados como energia",
    value: 80085.00,
  },
  #indicador 17,
  {
    title: "Total de hogares con coneccion autorizada al sistema electrico",
    value: 80085.00,
  },
   #indicador 18,
   {
    title: "Total de hogares con coneccion autorizados al sistema de gas natural",
    value: 80085.00,
  },
  #indicador 19,
  #indicador 20,
  {
    title: "Suma total de la duracion de interrupciones a clientes",
    value: 80085.00,
  },
  {
    title: "Cantidad total de interrupciones a clientes",
    value: 80085.00,
  },
  #indicador 21,
  {
    title: "Uso anual residencial de electricidad",
    value: 80085.00,
  },
  #indicador 22,
  #indicador 23*T,
  #indicador 24,
  {
    title: "Energia Renobable generada",
    value: 80085.00,
  },
  {
    title: "Total de energia electrica generada",
    value: 80085.00,
  },
  #indicador 25*T,
  #indicador 26,
  #indicador 27,
  #indicador 28*T,
  #indicador 29,
  {
    title: "Total de emisiones de GEI",
    value: 80085.00,
  },
  {
    title: "Población total",
    value: 80085.00,
  },
  #indicador 30,
  {
    title: "Producto interno bruto",
    value: 80085.00,
  },
  #indicador 31*T,
  #indicador 32*T,
  #indicador 33*T,
  #indicador 34*T,
  #indicador 35*T,
  #indicador 36*T,
  #indicador 37,
  #indicador 38*T,
  #indicador 39,
  #indicador 40,
]

Statistic.create!(statistic_attributes1)
puts '6 done!'

formula_attributes1 = [
  #Indicador 1,
  {
  statistic_id: 1,
  indicator_id: 1
  },
  {
   statistic_id: 2,
   indicator_id: 1,
  },
  #Indicador 2,
  {
    statistic_id: 3,
    indicator_id: 2,
  },
  {
    statistic_id: 4,
    indicator_id: 2,
  },
  #Indicador 5,
  {
    statistic_id: 5,
    indicator_id: 5,
  },
  {
    statistic_id: 6,
    indicator_id: 5,
  },
  #Indicador 7,
  {
    statistic_id: 7,
    indicator_id: 7,
  },
  {
    statistic_id: 2,
    indicator_id: 7,
  },
  #Indicador 8,
  {
    statistic_id: 8,
    indicator_id: 8,
  },
  {
    statistic_id: 9,
    indicator_id: 8,
  },
   #Indicador 9,
   {
    statistic_id: 10,
    indicator_id: 9,
  },
  {
    statistic_id: 2,
    indicator_id: 9,
  },
   #Indicador 11,
   {
    statistic_id: 11,
    indicator_id: 11,
  },
  {
    statistic_id: 12,
    indicator_id: 11,
  },
   #Indicador 14,
  {
    statistic_id: 13,
    indicator_id: 14,
  },
  {
    statistic_id: 12,
    indicator_id: 14,
  },
  #Indicador 15,
  {
    statistic_id: 14,
    indicator_id: 15,
  },
  {
    statistic_id: 12,
    indicator_id: 15,
  },
  #Indicador 16,
  {
    statistic_id: 15,
    indicator_id: 16,
  },
  {
    statistic_id: 12,
    indicator_id: 16,
  },
  #Indicador 17,
  {
    statistic_id: 16,
    indicator_id: 17,
  },
  {
    statistic_id: 2,
    indicator_id: 17,
  },
 #Indicador 18,
  {
    statistic_id: 17,
    indicator_id: 18,
  },
  {
    statistic_id: 2,
    indicator_id: 18,
  },
   #Indicador 20,
  {
    statistic_id: 18,
    indicator_id: 20,
  },
  {
    statistic_id: 19,
    indicator_id: 20,
  },
    #Indicador 21,
  {
    statistic_id: 20,
    indicator_id: 21,
  },
  {
    statistic_id: 2,
    indicator_id: 21,
  },
  #Indicador 24
  {
    statistic_id: 21,
    indicator_id: 24,
  },
  {
    statistic_id: 22,
    indicator_id: 24,
  },
  #Indicador 29
  {
    statistic_id: 23,
    indicator_id: 29,
  },
  {
    statistic_id: 24,
    indicator_id: 29,
  },
  #Indicador 30
  {
    statistic_id: 23,
    indicator_id: 30,
  },
  {
    statistic_id: 25,
    indicator_id: 30,
  },
]
Formula.create!(formula_attributes1)
puts '7 done!'

puts 'Done!'
