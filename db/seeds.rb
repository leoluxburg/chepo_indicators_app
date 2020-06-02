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
    title: "Gestion del Medio Ambiente y Consumo de Recursos Naturales.",
    description: "»Manejo adecuadamente sus recursos e infraestructura hídrica;
    »Manejo y usa adecuadamente su energía;
    »Maneja y trata adecuadamente sus aguas residuales;
    »Maneja y dispone adecuadamente sus residuos sólidos.",
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
    title: "Reducción de Vulnerabilidad ante Desastres Naturales y Adaptación al Cambio Climático.",
    description: "»Tratamiento adecuado de vulnerabilidad ante desastres naturales y cambio climático;
    »Buena preparación y organización para responder en casos de desastre;
    »Planes de gestión del riesgo de desastres y de adaptación  al cambio climático. ",
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
    title: "Promoción del transporte urbano sostenible.",
    description: "»Soluciones de movilidad que minimizan impactos medioambientales, promoviendo el transporte público;
    »Provisión de movilidad multimodal limpia, segura y eficiente, priorizando el tránsito y alternativos no motorizados.",
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
    title: "Desigualdad Urbana",
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
    title: "Gestion de Gastos",
    reason_id: 10,
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
  {
    title: "Densidad",
    comment: "",
    theme_id: 9,
  },
  {
    title: "Vivienda",
    comment: "",
    theme_id: 9,
  },
  {
    title: "Áreas verdes y de recreación",
    comment: "",
    theme_id: 9,
  },
  {
    title: "Planificación del uso del suelo",
    comment: "",
    theme_id: 9,
  },
  {
    title: "Pobreza",
    comment: "",
    theme_id: 10,
  },
  {
    title: "Segregacion Socioespacial",
    comment: "",
    theme_id: 10,
  },
  {
    title: "Desigualdad de ingresos",
    comment: "",
    theme_id: 10,
  },
  {
    title: "Infraestructura de transporte balanceado",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Transporte limpio",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Seguridad vial",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Menor congestion",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Planificación y administracion de transporte",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Transporte asequible",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Demanda equilirada",
    comment: "",
    theme_id: 11,
  },
  {
    title: "Regulación de negocios e inversiones",
    comment: "",
    theme_id: 12,
  },
  {
    title: "Gestion estrategica de la infraestructura",
    comment: "",
    theme_id: 12,
  },
  {
    title: "Producto bruto",
    comment: "",
    theme_id: 12,
  },
  {
    title: "Desempleo",
    comment: "",
    theme_id: 13,
  },
  {
    title: "Empleo informal",
    comment: "",
    theme_id: 13,
  },
  {
    title: "Internet",
    comment: "",
    theme_id: 14,
  },
  {
    title: "Telefonia",
    comment: "",
    theme_id: 14,
  },
  {
    title: "Calidad educativa",
    comment: "",
    theme_id: 15,
  },
  {
    title: "Asistencia escolar",
    comment: "",
    theme_id: 15,
  },
  {
    title: "Educación superior",
    comment: "",
    theme_id: 15,
  },
  {
    title: "Violencia",
    comment: "",
    theme_id: 16,
  },
  {
    title: "Confianza ciudadana",
    comment: "",
    theme_id: 16,
  },
  {
    title: "Nivel de salud",
    comment: "",
    theme_id: 17,
  },
  {
    title: "Provision de servicios de salud",
    comment: "",
    theme_id: 17,
  }, {
    title: "Participacion ciudadana en la planificación de la gestión publica del gobierno",
    comment: "",
    theme_id: 18,
  },
  {
    title: "Rendicion de cuentas a la ciudadania",
    comment: "",
    theme_id: 18,
  },
  {
    title: "Procesos modernos de gestion publica el presupuestos municipales",
    comment: "",
    theme_id: 19,
  },
  {
    title: "Sistemas modernos de gestion publica del presupuestos municipal",
    comment: "",
    theme_id: 19,
  },
  {
    title: "Transparencia y auditoría de la gestión público del gobierno",
    comment: "",
    theme_id: 20,
  },
  {
    title: "Ingresos e impuestos municipales",
    comment: "",
    theme_id: 21,
  },
  {
    title: "Gestion de cobros",
    comment: "",
    theme_id: 21,
  },
  {
    title: "Calidad de gasto publico",
    comment: "",
    theme_id: 22,
  },
  {
    title: "Pasivos contingentes",
    comment: "",
    theme_id: 23,
  },
  {
    title: "Sostenibilidad de la deud",
    comment: "",
    theme_id: 23,
  }
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
  },
  {
    title: "Tasa de crecimiento anual de la huella Urbana",
    description: "Promedio de la tasa de crecimiento anual de la huella urbana dentro de los límites oficiales de la ciudad (como mínimo
    los últimos 5 años o el último período de tiempo disponible).",
    methodology:
    "La huella urbana es el área urbana dentro de los límites oficiales de la ciudad. Generalmente se determina a través
    del análisis de fotografías aéreas. Idealmente, el área de la huella urbana se incluye en el censo o en alguna encuesta
    gubernamental similar o plan de desarrollo.
    La tasa de crecimiento anual de la huella urbana se calcula de acuerdo con la siguiente fórmula: (Área de la huella urbana
    al comienzo del período – Área de la huella urbana al final del período)/Área de la huella urbana al comienzo de la huella
    + 1) ^ (1/cantidad de años en el periodo) – 1
    Para una mayor precisión y relevancia, el primer año utilizado debe ser al menos cinco años inferior al segundo, y el
    segundo año debe ser lo más cercano posible al año corriente.
    Si la huella urbana se expande más allá de los límites de la ciudad porque están saturados (es decir, debido a que no hay
    más lugar de expansión dentro de los límites oficiales de la ciudad), debe registrarse en qué dirección la ciudad crece
    fuera de los límites.",
    positive: "<3%",
    negative: ">5%",
    medium: "3%–5%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Una huella urbana en rápido crecimiento puede tener un impacto negativo en el entorno y deteriorar la infraestructura
    existente, exacerbando o creando congestión vehicular y afectando el acceso a los servicios básicos y a otros servicios
    públicos.",
    other: "",
    subtheme_id: 22,
  },
  {
    title: "Densidad (neta) de la población urbana",
    description: "Personas que viven en el área urbanizada de la municipalidad, por km2 de área urbanizada de la municipalidad.",
    methodology:
    "La cantidad de personas que viven en el área urbanizada del municipio se divide por el área urbana del municipio. El área
    urbana del municipio incluye todo lo que se encuentre dentro del perímetro del área urbana del municipio (abarca, por
    ejemplo, parques, pequeños cuerpos de agua, jardines, etc.), excepto las áreas de agricultura y los grandes diques y
    represas de más de 5 km2, los cuales quedan excluidos de la medición.",
    positive: "7.000–20.000",
    negative: "< 4.000; > 25.000",
    medium: "4.000–7.000; 20.000–25.000",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Este indicador es útil para diagnosticar problemas relacionados con la expansión urbana. Las ciudades más pobladas
    suelen ser más eficientes; pueden economizar en tiempo y costos de transporte y tienen un impacto más leve en el
    ambiente circundante.",
    other: "",
    subtheme_id: 22,
  },
  {
    title: "Porcentaje de las viviendas que no cumplen con los estandares de habitalidad definidos por el país",
    description: "Proporción de unidades de vivienda en condiciones inferiores a los estándares de habitabilidad definidos por el país.",
    methodology:
    "La cantidad de unidades de vivienda en el área urbana del municipio que no cumplen con los estándares de habitabilidad
    definidos por el país debe dividirse por el total de unidades de vivienda en el área urbana del municipio.
    La definición de habitabilidad varía según el país, pero generalmente se refiere a viviendas que están construidas
    en ubicaciones peligrosas y que no poseen una estructura lo suficientemente estable y adecuada para proteger a sus
    habitantes contra condiciones climáticas extremas como lluvia, calor, frío y humedad.
    Generalmente, las siguientes ubicaciones se consideran peligrosas:
    • Viviendas ubicadas en zonas geológicamente riesgosas (deslizamientos/ terremotos y áreas de inundación).
    • Viviendas ubicadas en montañas de basura.
    • Viviendas situadas en áreas con elevada contaminación industrial.
    • Viviendas situadas en otras zonas de alto riesgo, por ejemplo: estaciones ferroviarias, aeropuertos y líneas de
    transmisión de energía.
    Cuando las unidades de vivienda se clasifican, en general se tienen en cuenta los siguientes factores de durabilidad:
    • Calidad de la construcción (por ejemplo, materiales empleados para paredes, piso y techo).
    • Cumplimiento de los códigos locales de construcción, normas y estatutos.
    Las fuentes de datos son principalmente las encuestas de viviendas y los censos.
    Los estándares de habitabilidad del país (o la definición utilizada por el recolector de datos, en ausencia de estándares
    nacionales) deben declararse junto con los datos.
    Es difícil recolectar información acerca de las viviendas construidas en ubicaciones peligrosas, y dichos datos no
    están disponibles en la mayoría de los países. Por ende, los resultados de este indicador se basan prácticamente en la
    estabilidad de las estructuras, observándose la calidad de los materiales empleados para las viviendas.
    La durabilidad de los materiales de construcción depende en gran medida de las condiciones locales, además de las
    costumbres y técnicas de construcción y mantenimiento del lugar. Los expertos locales deben de ser quienes determinen
    qué materiales son duraderos bajo las condiciones locales. Lo mismo aplica para el caso de las viviendas de la periferia
    semiurbana de las ciudades de países en desarrollo, que —sobre la base de los patrones de construcción rural— utilizan
    materiales considerados no duraderos bajo condiciones urbanas. También el cumplimiento con las disposiciones locales
    y las características de la ubicación forman parte de la definición. Estos dos indicadores no pueden observarse fácilmente
    debido a que requieren un saber específico sobre la situación legal y el plan de ordenamiento, además de la capacidad
    para determinar cuáles son las áreas peligrosas.
    Basado en el Programa de las Naciones Unidas para los Asentamientos Humanos (UN-Habitat) Urban Indicators Guidelines,
    2004, p.11: “Indicator 1: Durable Structures”.",
    positive: "< 10%",
    negative: "> 25%",
    medium: "10%–25%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Las viviendas ubicadas en los barrios marginales suelen ocupar unidades de baja calidad, que exponen a sus habitantes
    a un alto riesgo de enfermedad, y por ende, de muerte. Las estructuras duraderas forman parte de los cinco elementos
    esenciales de la definición de barrios marginales establecida por UN-Habitat.
    En general, una estructura de vivienda se considera estándar o duradera cuando se emplean ciertos materiales de
    construcción resistentes para techos, paredes y pisos. Si bien algunas viviendas se construyen con materiales clasificados
    como duraderos, puede que sus habitantes no disfruten de una protección adecuada contra el mal tiempo y el clima
    debido al estado general de la vivienda. Alternativamente, un material puede no ser duradero en el sentido moderno, pero
    serlo en el sentido tradicional, cuando se combina con técnicas de reparación. Este es el caso de las viviendas vernáculas
    construidas en aldeas con materiales naturales y que reciben mantenimiento anual por parte de sus residentes.
    Basado en UN-Habitat, Urban Indicators Guidelines, 2004, p.11: “Indicator 1: Durable Structures”.",
    other: "UN-Habitat: “viviendas duraderas”, utiliza cantidad de viviendas; Sociómetro del BID: utiliza porcentaje de viviendas con
    pisos de tierra y porcentaje de viviendas con material de techado no permanente.",
    subtheme_id: 23,
  },
  {
    title: "Deficit de vivienda cuantitativo",
    description: "(Cantidad de hogares – cantidad de viviendas)/Cantidad de hogares",
    methodology:
    "Este indicador generalmente utiliza datos de censos o encuestas similares. Es la diferencia entre la cantidad de hogares y
    la cantidad de unidades de vivienda, expresada como el porcentaje de la cantidad total de hogares.",
    positive: "< 10%",
    negative: "> 20%",
    medium: "10%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Este indicador estima la cantidad de viviendas que deben construirse para que exista una relación uno a uno entre el
    número de viviendas adecuadas y el número de hogares que necesitan alojamiento.",
    other: "Departamento Administrativo Nacional de Estadística (DANE) de Colombia.",
    subtheme_id: 23,
  },
  {
    title: "Areas verdes por cada 100.000 habitantes",
    description: "Hectáreas de espacio verde permanente por cada 100.000 habitantes de la ciudad.",
    methodology:"Cada año, en una fecha estipulada, se calcula el área total (en hectáreas) de espacios verdes en la ciudad. Luego se divide
    la cifra resultante por 100.000 habitantes. El resultado se expresa como número entero de hectáreas.
    Las áreas verdes incluyen parques, áreas de recreación y otras áreas naturales. También incluyen las áreas verdes en la
    propiedad privada. Basado en la descripción del indicador de GCIF “Áreas verdes (en hectáreas) por cada 100.000 habitantes”.",
    positive: "> 50",
    negative: "< 20",
    medium: "20–50",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "La cantidad de áreas verdes per cápita es un indicador de cuánto espacio verde y al aire libre dispone una ciudad. Las
    áreas verdes cumplen funciones ambientales importantes en el ámbito urbano. Estas mejoran el clima urbano; capturan
    contaminantes atmosféricos, y sirven como lugar de recreación para los habitantes de la ciudad.",
    other: "GCIF utiliza un indicador similar pero la definición excluye la propiedad privada que no es de acceso público e incluye
    otros tipos de espacios públicos (como plazas). Montreal, Toronto, Porto Alegre, Belo Horizonte, São Paulo, Bogotá y King
    County (WA) utilizan variantes de este indicador.",
    subtheme_id: 24,
  },
  {
    title: "Espacio publico de recreacion por cada 100.000 habitantes ",
    description: "Hectáreas de espacio público de recreación al aire libre y de acceso público por cada 100.000 habitantes.",
    methodology:"Cada año, en una fecha estipulada, se determina el área total (en hectáreas) de espacio público de recreación al aire libre
    en la ciudad. El resultado se divide por 100.000 habitantes de la ciudad. El resultado se expresa como número entero
    de hectáreas.
    Algunas de estas áreas también se incluyen en el área verde por cada 100.000 habitantes, pero este constituye un
    indicador aparte, porque los espacios públicos de recreación no abarcan las áreas verdes que no son de acceso público
    (como los campos de golf), e incluyen los espacios públicos de recreación que no son verdes (por ejemplo, canchas de
    tenis).",
    positive: "> 10",
    negative: "< 7",
    medium: "7–10",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "La cantidad de espacios de recreación de acceso público per cápita es un indicador de cuánto espacio de recreación
    disponen los habitantes. Una mayor cantidad de espacios de recreación puede resultar en una mejor calidad de vida
    y salud para los habitantes, mientras que la falta de espacios de recreación puede afectar la calidad de vida de los
    habitantes e impedir el desarrollo de actividades recreativas que mejorarían su salud.",
    other: "GCIF utiliza un indicador similar. Montreal, Toronto, Porto Alegre, Belo Horizonte, São Paulo, Bogotá y King County (WA)
    utilizan variantes de este indicador.",
    subtheme_id: 24,
  },
  {
    title: "Existencia e implementacion activa de un plan de uso de suelo",
    description: "La ciudad tiene un plan de uso del suelo que incluye zonificación con zonas de protección ambiental y de preservación, y
    está implementado activamente.",
    methodology:"Se determina si la ciudad tiene un plan maestro de uso del suelo. Si lo tiene, este se evalúa a fin de determinar si posee
    las siguientes características:
    • Se implementa de forma activa.
    • Se creó o actualizó por completo en los últimos 10 años.
    • Contiene componentes ecológicos.
    Los mejores planes promueven comunidades compactas y completas (suelen ser el resultado de un uso mixto del suelo).",
    positive: "La ciudad tiene un único
    plan maestro con componentes
    ecológicos y lo implementa
    de forma activa.",
    negative: "La ciudad no tiene un plan
    maestro o el plan tiene más
    de 10 años de antigüedad.",
    medium: "La ciudad tiene un plan maestro
    pero sin componentes ecológicos;
    no se toman medidas para su
    implementación.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Los planes locales de uso del suelo urbano ayudan a los encargados de tomar decisiones a manejar el crecimiento urbano y
    a cambiar y brindar una plataforma para la formación del consenso de la comunidad respecto de los asuntos relacionados
    con el uso del suelo.",
    other: "",
    subtheme_id: 25,
  },
  {
    title: "Plan maestro actualizado y vinculante legalmente",
    description: "Existencia e implementación activa de un plan maestro completo y legalmente vinculante creado o actualizado durante
    los últimos 10 años.",
    methodology:"Primero, se identifica el plan maestro de la ciudad, si lo tiene; esto se puede hacer contactando al gobierno de la ciudad
    (especialmente al departamento de planificación). Luego debe verificarse la fecha del plan o cuándo fue actualizado por
    última vez, y si el plan es legalmente vinculante. Los planes legalmente vinculantes son implementados, pero aquellos
    que carecen de respaldo legal son menos propensos a implementarse.",
    positive: "La ciudad tiene un plan maestro
    legalmente vinculante que ha sido
    actualizado en los últimos 10 años, y
    lo implementa de forma activa.",
    negative: "La ciudad no tiene un plan maestro,
    o tiene un plan maestro pero no
    es legalmente vinculante ni se ha
    actualizado en los últimos años.",
    medium: "O bien: i) la ciudad tiene un plan
    maestro y es legalmente vinculante
    pero no ha sido actualizado en los
    últimos 10 años; o ii) la ciudad
    tiene un plan maestro que ha sido
    actualizado en los últimos 10 años
    pero que no es legalmente
    vinculante.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Los planes maestros legalmente vinculantes ayudan a preparar a las ciudades a lograr futuros patrones de uso de suelo
    basados en los valores, necesidades y deseos de la comunidad.",
    other: "",
    subtheme_id: 25,
  },
  {
    title: "Porcentaje de la poblacion por debajo de la linea de pobreza",
    description: "Cantidad de personas en la ciudad que viven por debajo de la línea de pobreza urbana establecida por el país (numerador)
    dividida por la cantidad total de habitantes de la ciudad (denominador), expresada como un porcentaje.",
    methodology:"Se determina la cantidad total anual de personas en la ciudad que viven por debajo del umbral nacional de pobreza
    urbana. La cantidad de personas que viven en situación de pobreza puede determinarse multiplicando la cantidad de
    hogares de la ciudad que se encuentran por debajo de la línea de pobreza por la cantidad promedio de personas por
    hogar en esa ciudad. Luego se divide el resultado por el total de la población de la ciudad. El resultado se expresa como
    el porcentaje de la población que vive en situación de pobreza. Hay que considerar que emplear la cifra que representa
    la cantidad promedio de personas por hogar a todos los hogares puede no reflejar la distinción por tamaño de hogares
    pobres y hogares más pudientes.
    En países que tienen una línea de pobreza rural y urbana, se utilizará la línea de pobreza urbana. En cualquier caso, la
    definición de línea de pobreza empleada debe declararse junto con los datos.
    Las evaluaciones de pobreza de los países del Banco Mundial incluyen un análisis sobre la línea de pobreza de cada país
    (véase http://go.worldbank.org/WZ9LSRY7B0).
    Basado en la descripción del indicador de GCIF “Porcentaje de la población de la ciudad que vive en la pobreza”.",
    positive: "< 15%",
    negative: "> 25%",
    medium: "15%–25%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "El indicador (también conocido como índice nacional de pobreza) es una medida estándar de pobreza, especialmente
    del ingreso de pobreza. Brinda información sobre los avances hacia la reducción de la pobreza, un objetivo y requisito
    central del desarrollo sostenible. El índice nacional de pobreza es una de las medidas centrales de los estándares de vida
    y centra la atención exclusivamente en los pobres. El porcentaje de la población de la ciudad que vive en la pobreza es
    un indicador de la equidad social, que se manifiesta en una importante desigualdad de la riqueza e indica una calidad
    de vida limitada. La erradicación de la pobreza es un componente esencial de los Objetivos de Desarrollo del Milenio.
    Basado en la descripción del indicador de GCIF “Porcentaje de la población de la ciudad que vive en la pobreza”.",
    other: "GCIF, Comisión sobre Desarrollo Sostenible de las Naciones Unidas; King County (WA), Montreal,Vancouver, Toronto
    (informe sobre los niños en la pobreza).
    Al calcular los niveles de pobreza en los distintos países, organizaciones como el Banco Mundial, la Organización para
    la Cooperación y el Desarrollo Económicos (OCDE), la Unión Europea y el Censo de Estados Unidos utilizan indicadores
    similares para determinar el umbral de pobreza. Si bien los detalles pueden variar, el enfoque básico y los resultados
    generales derivan en las mismas problemáticas.
    Basado en la descripción del indicador de GCIF “Porcentaje de la población de la ciudad que vive en la pobreza”.",
    subtheme_id: 26,
  },
  {
    title: "Porcentaje de viviendas ubicadas en asentamientos informales",
    description: "Porcentaje de viviendas ubicadas en asentamientos informales",
    methodology:"El indicador se calcula dividiendo la cantidad de viviendas ubicadas en los asentamientos informales de la ciudad por el
    total de viviendas en la ciudad.
    La definición de asentamientos informales depende del contexto específico. El Programa UN-Habitat define los
    asentamientos informales como:
    i. Áreas residenciales en las que se ha edificado un grupo de unidades de vivienda en tierras sobre las cuales los
    ocupantes no tienen derecho legal, o que ocupan ilegalmente.
    ii. Asentamientos no planificados y zonas en las que las viviendas no cumplen con la normativa de planificación y
    edificación actuales (viviendas no autorizadas).
    Los problemas surgen cuando se mide la extensión o se definen los límites de tales asentamientos. Por definición, los
    límites reconocidos oficialmente rara vez existen, y los asentamientos a veces se fusionan casi de forma imperceptible,
    convirtiéndose en áreas de viviendas formales, áreas industriales o rurales. El uso de información de detección remota
    (por ejemplo, fotografías aéreas o información satelital de alta resolución) puede resultar útil en este contexto.
    La División de Desarrollo Sostenible de las Naciones Unidas define la proporción de población urbana que vive en
    barrios pobres como la proporción de población que carece de al menos una de las cinco condiciones de vivienda
    siguientes: acceso a agua potable mejorada, acceso a instalaciones sanitarias mejoradas, espacio habitable adecuado
    sin hacinamiento, calidad/durabilidad estructural de las viviendas, garantía de posesión.
    Basado en la descripción del indicador de GCIF “Porcentaje de la población de la ciudad que vive en barrios marginales” y
    “Población que vive en asentamientos precarios” de la OMS (véase http://www.who.int/ceh/indicators/informalsettlements.pdf).",
    positive: "< 20%",
    negative: "> 30%",
    medium: "20%–30%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "Hoy en día los asentamientos informales constituyen uno de los desafíos más grandes que enfrentan las ciudades
    de América Latina y el Caribe. El porcentaje de viviendas ubicadas en asentamientos informales es un indicador de
    la proporción de viviendas urbanas en déficit cualitativo o inseguras. Las pruebas demuestran que los asentamientos
    informales están creciendo y convirtiéndose en características permanentes de los paisajes urbanos. Este indicador
    sirve para diagnosticar problemas de planificación urbana y sus posibles servicios relacionados, titularidad, transporte,
    seguridad e implicaciones legales.
    Basado en UN-Habitat, “Estado de las ciudades del mundo 2006/7” (p. 22).",
    other: "GCIF utiliza la dimensión aérea de los asentamientos precarios como porcentaje de área de la ciudad y porcentaje de la
    población de la ciudad que vive en barrios marginales.
    UN-Habitat, Federación de Municipalidades Canadienses (FCM, por sus siglas en inglés), y las ciudades de Bogotá,
    Montreal, Toronto, Vancouver y Belo Horizonte también utilizan el porcentaje de la población de la ciudad que vive en
    barrios marginales.
    La OMS utiliza la cifra de población en asentamientos informales. El Comité de Naciones Unidas para el Desarrollo
    Sostenible utiliza la proporción de población urbana que vive en barrios marginales.",
    subtheme_id: 27,
  },
  {
    title: "Coeficiente de gini de ingresos",
    description: "Medición de la desigualdad, de acuerdo con la cual 0 corresponde a una igualdad perfecta en ingresos y 1 corresponde a
    una desigualdad perfecta en ingresos.",
    methodology:"El coeficiente de Gini mide hasta qué punto la distribución del ingreso (o, en algunos casos, el gasto de consumo) entre
    individuos u hogares dentro de una economía se aleja de una distribución perfectamente equitativa. La curva de Lorenz
    muestra los porcentajes acumulados de ingreso recibido total contra la cantidad acumulada de receptores, empezando
    a partir de la persona o el hogar más pobre. El coeficiente de Gini mide la superficie entre la curva de Lorenz y una línea
    hipotética de equidad absoluta, expresada como porcentaje de la superficie máxima debajo de la línea. Así, un índice de
    Gini de 0 representa una equidad perfecta, mientras que un índice de 1 representa una inequidad perfecta.
    Basado en la descripción del indicador del coeficiente de Gini del Banco Mundial (véase http://data.worldbank.org/
    indicator/SI.POV.GINI).",
    positive: "< 0,40",
    negative: "> 0,49",
    medium: "0,40–0,49",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "El coeficiente de ingresos de Gini es un indicador de la desigualdad, la cual puede tener efectos negativos en la sociedad.
    Los estudios indican, por ejemplo, que la desigualdad puede llevar a conductas delictivas. Un alto nivel de desigualdad
    también puede indicar una mala administración del gobierno.
    Basado en: Fajnyzelber, P., D. Lederman y N. Loayza, “Inequality and Violent Crime.” Journal of Law and Economics, vol.
    XLV, abril de 2002, Universidad de Chicago.",
    other: "El Banco Mundial (países); CIA World Factbook (países); el Programa de las Naciones Unidas para el Desarrollo (PNUD)
    (Informe sobre Desarrollo Humano); GCIF analiza la utilización del coeficiente de Gini como indicador futuro.",
    subtheme_id: 28,
  },
  {
    title: "Kilometros de vias cada 100.000 habitantes",
    description: "El total de kilómetros por carril de vías públicas dentro de la ciudad (numerador), dividido por 100.000 habitantes de la
    ciudad, expresado en kilómetros cada 100.000 habitantes",
    methodology:"Los kilómetros por carril pueden contarse utilizando un encuadre computarizado, fotografía aérea, o mapas de papel
    existentes, los cuales deben ser verificados por expertos del campo. Mientras que un kilómetro de línea central está
    definido como la longitud de un kilómetro de vía, sin importar la cantidad de carriles de tránsito, un kilómetro por carril
    equivale al número de carriles en un kilómetro de línea central. Los kilómetros por carril se determinan multiplicando los
    kilómetros de línea central por el número de carriles. La definición de vías “públicas” varía de ciudad a ciudad. En muchas
    ciudades, equivale a vías “mantenidas por el Estado”, en cuyo caso los archivos de mantenimiento de la ciudad pueden
    corroborar los kilómetros de línea central y/o los kilómetros por carril. En otras ciudades, este indicador equivale a vías
    pavimentadas, o vías de acceso público, independientemente del pavimento y del estado de mantenimiento.
    El inventario de kilómetros de línea central debe actualizarse una vez al año.
    El total de población de la ciudad puede obtenerse a través de varias fuentes, tales como censos, estimaciones oficiales
    y registros impositivos.
    Consúltese el apartado “Otras organizaciones” para más fuentes de orientación metodológica.",
    positive: "< 300",
    negative: "> 400",
    medium: "300–400",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification: "La densidad de la red de transporte de una ciudad puede brindar información sobre la congestión vehicular, la flexibilidad
    del sistema de transporte y la matriz urbana. Las ciudades con mayor número de kilometraje de transporte suelen ser
    geográficamente más compactas, y tienden a fomentar el uso del transporte público y los modos de transporte no
    motorizados. Dichas ciudades también tienden a ofrecer rutas múltiples entre los puntos de origen y destino, con lo cual
    dispersan el tráfico entre las rutas y de esa forma reducen la congestión en cualquiera de ellas. La medición de cada tipo
    de infraestructura de transporte ayuda a comprender el comportamiento en relación con los viajes.
    La extensión del sistema de transporte puede contradecir los factores que podrían degradar la experiencia del viaje.
    Por ejemplo, una gran cantidad de vías con pavimentos deficitarios o vías no pavimentadas indican que el sistema de
    transporte requiere mejoras. El inventario de kilómetros de línea central no toma en cuenta necesariamente las barreras
    geográficas (como los ríos y montañas) que pueden contribuir a la congestión del tránsito, independientemente de la
    cantidad de infraestructura existente.",
    other: "Fuente del indicador: Global City Indicators: Definitions and Methodology. Documento técnico que respalda la inclusión de
    indicadores en el (GCIF); Banco Mundial y ERM (Washington, D.C., 2007).
    La Iniciativa de Valores de Referencia del Transporte Urbano (UTBI, por sus siglas en inglés) mide los kilómetros por carril
    por cada millón de habitantes y la información se incluye en su Base de Datos sobre Movilidad Urbana.
    Los valores de referencia de las vías y sendas para bicicleta se basan en el análisis de datos obtenidos de la UTBI.
    Los valores de referencia de los pavimentos y vías peatonales se basan en el análisis de datos obtenidos de Alliance for
    Biking & Walking, Bicycling and Walking in the U.S. 2012 Benchmarking Report, enero de 2012.",
    subtheme_id: 29,
  },
  {
    title: "Kilometros de vias dedicados en forma exclusiva al transporte publico cada 100.000 habitantes",
    description: "El total de kilómetros por carril dedicado exclusivamente al recorrido de autobuses y kilómetros de línea central de trenes
    de pasajeros (numerador), dividido por 100.000 habitantes de la ciudad, expresado como kilómetros del sistema de
    transporte cada 100.000 habitantes",
    methodology:"Este indicador se focaliza en la infraestructura dedicada de forma exclusiva al transporte público (autobús de tránsito
    rápido, tren ligero, etc.). Los kilómetros de línea central pueden contarse utilizando un encuadre computarizado, fotografía
    aérea, o mapas de papel existentes, los cuales deben ser verificados por expertos del campo. Un kilómetro de línea central
    se define como la longitud de un kilómetro de vía, sin importar la cantidad de carriles de tránsito.
    El inventario de kilómetros de línea central debe actualizarse una vez al año.
    El total de población de la ciudad puede obtenerse a través de varias fuentes, como censos, estimaciones oficiales y
    registros impositivos.
    Véase el apartado “Otras organizaciones” para más fuentes de orientación metodológica.",
    positive: "> 40",
    negative: "< 10",
    medium: "10–40",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La densidad de la red de transporte de una ciudad puede brindar información sobre la congestión vehicular, la flexibilidad
    del sistema de transporte y la matriz urbana. Las ciudades con mayor número de kilometraje de transporte suelen ser
    geográficamente más compactas, y tienden a fomentar el uso del transporte público, y los modos de transporte no
    motorizados. Dichas ciudades también tienden a ofrecer rutas múltiples entre los puntos de origen y destino, con lo cual
    dispersan el tráfico entre las rutas y de esa forma reducen la congestión en cualquiera de ellas. La medición de cada tipo
    de infraestructura de transporte ayuda a comprender el comportamiento en relación con los viajes.
    La extensión del sistema de transporte puede contradecir los factores que podrían degradar la experiencia del viaje.
    Por ejemplo, una gran cantidad de vías con pavimentos deficitarios o vías no pavimentadas indican que el sistema de
    transporte requiere mejoras. El inventario de kilómetros de línea central no toma en cuenta necesariamente las barreras
    geográficas (como los ríos y montañas) que pueden contribuir a la congestión del tránsito, independientemente de la
    cantidad de infraestructura existente.",
    other: "Fuente del indicador: Global City Indicators: Definitions and Methodology. Documento técnico que respalda la inclusión de
    indicadores en el GCIF; Banco Mundial y ERM (Washington, D.C. ,2007).
    La UTBI mide los kilómetros por carril cada millón de habitantes y la información se incluye en su Base de Datos sobre
    Movilidad Urbana.
    Los valores de referencia de las vías y sendas para bicicleta se basan en el análisis de datos obtenidos de la UTBI.
    Los valores de referencia de los pavimentos y vías peatonales se basan en el análisis de datos obtenidos de Alliance for
    Biking & Walking, Bicycling and Walking in the U.S. 2012 Benchmarking Report, enero de 2012.",
    subtheme_id: 29,
  },
  {
    title: "Kilometros de sendas para bicicleta cada 100.000 habitantes",
    description: "Los kilómetros de línea central de caminos dedicados a bicicletas dentro de la ciudad (numerador), dividido
    por 100.000 habitantes de la ciudad, expresado como kilómetros cada 100.000 habitantes",
    methodology:"Los kilómetros de línea central pueden contarse utilizando un encuadre computarizado, fotografía aérea, o mapas de
    papel existentes, los cuales deben ser verificados por expertos del campo. Un kilómetro de línea central se define como
    la longitud de un kilómetro de vía, sin importar la cantidad de carriles de tránsito. La definición de servicios “públicos”
    para bicicletas varía de ciudad a ciudad. En muchas ciudades equivale a sendas “mantenidas por el Estado”, en cuyo
    caso los archivos de mantenimiento de la ciudad pueden corroborar los kilómetros de línea central. En otras ciudades,
    el indicador equivale a vías pavimentadas, o vías de acceso público, independientemente del pavimento y del estado de
    mantenimiento.
    Las sendas para bicicletas incluyen los carriles para bicicletas señalizados en la vía pública y también los caminos fuera
    de ruta disponibles para peatones o bicicletas.
    El inventario de kilómetros de línea central debe actualizarse una vez al año.
    El total de población de la ciudad puede obtenerse a través de varias fuentes, como censos, estimaciones oficiales y
    registros impositivos.
    Véase el apartado “Otras organizaciones” para más fuentes de orientación metodológica.",
    positive: "> 25",
    negative: "< 15",
    medium: "15–25",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La densidad de la red de transporte de una ciudad puede brindar información sobre la congestión vehicular, la flexibilidad
    del sistema de transporte y la matriz urbana. Las ciudades con mayor número de kilometraje de transporte suelen ser
    geográficamente más compactas, y tienden a fomentar el uso del transporte público y los modos de transporte no
    motorizados. Dichas ciudades también tienden a ofrecer rutas múltiples entre los puntos de origen y destino, con lo
    cual dispersan el tráfico entre las rutas y así reducen la congestión en cualquiera de ellas. La medición de cada tipo de
    infraestructura de transporte ayuda a comprender el comportamiento en relación con los viajes.
    La extensión del sistema de transporte puede contradecir los factores que podrían degradar la experiencia del viaje.
    Por ejemplo, una gran cantidad de vías con pavimentos deficitarios o vías no pavimentadas indican que el sistema
    de transporte requiere mejoras. El inventario de kilómetros por carril no toma en cuenta necesariamente las barreras
    geográficas (como los ríos y montañas) que pueden contribuir a la congestión del tránsito, independientemente de la
    cantidad de infraestructura existente.",
    other: "Fuente del indicador: Global City Indicators: Definitions and Methodology. Documento técnico que respalda la inclusión de
    indicadores en el GCIF; Banco Mundial y ERM (Washington, D.C., 2007).
    La Iniciativa UTBI mide los kilómetros por carril cada millón de habitantes y la información se incluye en su Base de Datos
    sobre Movilidad Urbana.
    Los valores de referencia de las vías y sendas para bicicleta se basan en el análisis de datos obtenidos de la UTBI.
    Los valores de referencia de los pavimentos y vías peatonales se basan en el análisis de datos obtenidos de Alliance for
    Biking & Walking, Bicycling and Walking in the U.S. 2012 Benchmarking Report, enero de 2012.",
    subtheme_id: 29,
  },
  {
    title: "Kilometros de pavimento y via peatonal cada 100.000 habitantes",
    description: "El total de kilómetros de paseo dedicados a la vía peatonal dentro de la ciudad (numerador), dividido por100.000habitantes
    de la ciudad, expresado en kilómetros cada 100.000 habitantes",
    methodology:"Los kilómetros de paseo pueden contarse utilizando un encuadre computarizado, fotografía aérea, o mapas de papel
    existentes, los cuales deben ser verificados por expertos del campo. La definición de servicios peatonales varía de
    ciudad a ciudad. En muchas ciudades equivale a servicios “mantenidos por el Estado”, en cuyo caso los archivos de
    mantenimiento de la ciudad pueden corroborar los kilómetros de paseo. Los servicios peatonales incluyen las vías con
    pavimentos (en cualquier lado), y también los pavimentos fuera de ruta o los caminos disponibles para uso peatonal (los
    caminos para bicicletas/peatones sin especificación deben contarse dos veces, como infraestructura para bicicletas y
    como infraestructura para peatones). Si hay aceras en ambos lados de una carretera, se cuentan individualmente (esto
    significa que 1 km de carretera con aceras en ambos lados cuenta como 2 km de paseo).
    El inventario de kilómetros de paseo debe actualizarse una vez al año.
    El total de población de la ciudad puede obtenerse a través de varias fuentes, como censos, estimaciones oficiales y
    registros impositivos.
    Véase el apartado “Otras organizaciones” para más fuentes de orientación metodológica.",
    positive: "Más de cuatro veces la longitud
    de la red de carreteras",
    negative: "Menos de dos veces la longitud
    de la red de carreteras",
    medium: "Entre dos y cuatro veces la longitud
    de la red de carreteras",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La densidad de la red de transporte de una ciudad puede brindar información sobre la congestión vehicular, la flexibilidad
    del sistema de transporte y la matriz urbana. Las ciudades con mayor número de kilometraje de transporte suelen ser
    geográficamente más compactas, y tienden a fomentar el uso del transporte público y los modos de transporte no
    motorizados. Dichas ciudades también tienden a ofrecer rutas múltiples entre los puntos de origen y destino, con lo
    cual dispersan el tráfico entre las rutas y así reducen la congestión en cualquiera de ellas. La medición de cada tipo de
    infraestructura de transporte ayuda a comprender el comportamiento en relación con los viajes.
    La extensión del sistema de transporte puede contradecir los factores que podrían degradar la experiencia del viaje.
    Por ejemplo, una gran cantidad de vías con pavimentos de mala calidad o vías no pavimentadas indican que el sistema
    de transporte requiere mejoras. El inventario de kilómetros por carril no toma en cuenta necesariamente las barreras
    geográficas (como los ríos y montañas) que pueden contribuir a la congestión del tránsito, independientemente de la
    cantidad de infraestructura existente.",
    other: "Fuente del indicador: Global City Indicators: Definitions and Methodology, documento técnico que respalda la inclusión de
    indicadores en el GCIF; Banco Mundial y ERM (Washington, D.C., 2007).
    La Iniciativa UTBI mide los kilómetros por carril cada millón de habitantes y la información se incluye en su Base de Datos
    sobre Movilidad Urbana.
    Los valores de referencia de las vías y sendas para bicicleta se basan en el análisis de datos obtenidos de la UTBI.
    Los valores de referencia de los pavimentos y vías peatonales se basan en el análisis de datos obtenidos de Alliance for
    Biking & Walking, Bicycling and Walking in the U.S. 2012 Benchmarking Report, enero de 2012.",
    subtheme_id: 29,
  },
  {
    title: "Distrubucion modal(especialmente transporte publico)",
    description: "Cantidad de usuarios que trabajan en la ciudad en cuestión que generalmente eligen el transporte público (incluye taxis)
    como medio de transporte principal para ir al trabajo (numerador) dividido por la cantidad total de viajes al trabajo
    (denominador)",
    methodology:"Este indicador incluye a los usuarios que trabajan en la ciudad en cuestión, independientemente del lugar donde vivan.
    Incluso cuando no viven en la ciudad en cuestión, utilizan los recursos de transporte de la ciudad, y por ende, producen
    un impacto en todo el sistema de transporte.
    La clasificación de este indicador debe basarse en el uso del transporte público en relación con todos los modos de viaje.
    Sin embargo, dada la importancia de una selección modal balanceada, se debe recoger información sobre todos los
    modos de viaje. Los siguientes valores de referencia ofrecen orientación para determinar una combinación sostenible:
    Modo Verde Amarillo Rojo
    Transporte público (incluye taxis) > 65% 50%–65% < 50%
    Bicicleta > 5% 2%–5% < 2%
    Viaje a pie > 20% 10%–20% < 10%
    Motocicleta < 10% 10%–15% > 15%
    Automóvil de uso personal (incluye furgonetas
    privadas y excluye motocicletas y camiones)

    < 35% 35–60% > 60%
    Los modos que abarcan vehículos de más de un solo ocupante (non-SOV, por sus siglas en inglés) incluyen automóviles
    compartidos, autobuses, minibuses, trenes, tranvías, trenes ligeros, transbordadores, motocicletas, bicicletas, viajes a
    pie y otros modos.
    Las fuentes de datos más comunes para este indicador son las encuestas sobre viajes que reúnen información sobre la
    frecuencia de los viajes, su duración y los modos de transporte, a partir de una muestra estadísticamente relevante de
    la población de la ciudad. Las encuestas generalmente se realizan en intervalos irregulares (principalmente debido al
    costo y al tiempo que la tarea requiere). Sin embargo, las encuestas están intrínsecamente sujetas a problemas como el
    sesgo muestral y a los errores de los participantes. En consecuencia, la metodología de la encuesta debe planificarse,
    probarse y verificarse cuidadosamente antes de su implementación. Tampoco queda claro si una proporción más alta del
    uso de modos que no incluyen vehículos de un solo ocupante indica necesariamente una ciudad más “activa”. Un mayor
    uso de vehículos de un solo ocupante podría reflejar un mayor nivel económico, mientras que la dependencia extrema del
    transporte público puede indicar mayores niveles de pobreza y amontonamiento.
    Una forma común de encuesta consiste en llevar un registro de viajes. Los individuos o familias utilizan un diario o
    cuaderno para ingresar información que incluya, por ejemplo, el modo de transporte escogido, la hora, la distancia y la
    duración de cada viaje.
    Cuando se utilizan distintos modos, el indicador debe reflejar el modo de transporte principal, ya sea en base a la duración
    del viaje en el modo escogido o a la distancia recorrida en ese modo. Por ejemplo, si una persona conduce un vehículo
    propio desde su hogar hasta una estación de tren suburbana (en 5 minutos); luego viaja en tren durante 30 minutos hacia
    el centro de la ciudad, y posteriormente viaja en autobús durante 5 minutos hasta la oficina, se considera que el medio de
    transporte principal de esa persona es el tren de pasajeros.
    Este tipo de información también se obtiene a partir de censos generales de población realizados en intervalos de tiempo
    regulares.",
    positive: "> 65%",
    negative: "50%–65%",
    medium: "< 50%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El modo de transporte utilizado para viajar al trabajo es un indicador clave de la política de transporte, la congestión
    vehicular, la matriz urbana y el uso de la energía. Las ciudades donde el uso de vehículos personales es menor suelen
    fomentar el uso del transporte público, y son geográficamente más compactas. El menor uso de vehículos de un solo
    ocupante se relaciona cada vez más con un menor consumo de energía y una emisión inferior de químicos productores
    de humo.",
    other: "La información sobre selección modal es recopilada por ciudades y países a nivel mundial. Las organizaciones no
    municipales e iniciativas como el Programa Global de Indicadores Urbanos de UN-Habitat, el BAsD, Cities Environment
    Reports on the Internet (CEROI), la UTBI, y los Indicadores comunes europeos también recogen datos similares.",
    subtheme_id: 29,
  },
  {
    title: "Antigüedad promedio de la flota del transporte público (en años)",
    description: "Antigüedad promedio de la flota del transporte público (en años)",
    methodology:"Este es un indicador indirecto de dos condiciones del sistema de transporte: en primer lugar, el nivel de contaminación
    que emiten los autobuses, los minibuses y los taxis compartidos (“colectivos”), con la suposición de que las tecnologías
    tradicionales constituyen fuentes más altas de contaminación, y de que son más ineficientes con respecto al consumo de
    combustible. En segundo lugar, se puede asumir que los nuevos vehículos son más seguros. En tercer lugar, se consideran
    el nivel de comodidad registrado y la calidad del transporte público, con la suposición de que los usuarios valoran viajar
    en vehículos nuevos.
    Una fuente de información es el registro municipal, en el cual se debe dejar constancia de la antigüedad (o del modelo)
    de los vehículos con licencia para brindar el servicio de transporte público. Si el registro no está actualizado o no se
    encuentra disponible, la información también puede obtenerse directamente de las empresas de transporte. Sin embargo,
    esto implica asumir el desafío de seleccionar una muestra representativa de vehículos para prevenir la distorsión del
    indicador.",
    positive: "< 6",
    negative: "> 12",
    medium: "6–12",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Es preferible que la flota de la ciudad sea lo más nueva posible para garantizar seguridad, niveles bajos de emisión
    y comodidad. No obstante, los vehículos representan inversiones a largo plazo para sus dueños, y por lo general se
    renuevan sólo si la normativa local así lo requiere o si reparar el vehículo añejo deja de ser una inversión rentable.
    Las ciudades pueden reducir la antigüedad promedio de los vehículos a través de una normativa que fije la antigüedad
    máxima para el funcionamiento del transporte público. Las normativas pueden variar en las diferentes ciudades, pero
    los sistemas de autobuses implementados recientemente establecen una antigüedad límite de 12 años. Puede debatirse
    si esta debe ser más alta o más baja en función de la calidad del vehículo, ya que no existe ningún estándar al respecto
    dentro de la industria.
    El indicador mide los niveles de contaminación y comodidad. Si bien la medición para cada atributo no es perfecta, puede
    realizarse rápidamente a través de las bases de datos de los registros de vehículos existentes.
    Puede argumentarse que el indicador debería abarcar la flota completa de vehículos en la ciudad (autobuses y vehículos
    privados). Sin embargo, es más probable que se establezca un registro preciso de autobuses debido a la naturaleza del
    servicio público que estos ofrecen. De manera similar, la capacidad del sector público para limitar la edad de los vehículos
    de uso personal se ve restringida por la diversidad de propietarios y niveles de ingreso. Probablemente, el sector público
    cuente con instrumentos normativos para exigir los requisitos de antigüedad de los vehículos que brindan el servicio de
    transporte público.",
    other: "La antigüedad límite del vehículo es utilizada por muchas empresas de tránsito en la zona y su cumplimiento puede
    exigirse a través de distintos instrumentos normativos, como los contratos de funcionamiento o las licencias de ruta.",
    subtheme_id: 30,
  },
  {
    title: "Víctimas mortales por accidentes de tránsito cada 1.000 habitantes",
    description: "La cifra anual de víctimas mortales por accidentes de tránsito de cualquier tipo (numerador), dividida por 1.000 habitantes
    de la ciudad (denominador), expresada como la cantidad de muertes por accidentes de tránsito cada 1.000 habitantes",
    methodology:"Cada año, en una fecha estipulada, se calcula la cifra anual de víctimas mortales por accidentes de tránsito y se la
    divide por 1.000 habitantes de la ciudad. El resultado se expresa como la cantidad de muertes cada 1.000 habitantes. El
    indicador cuenta las muertes que se producen debido a cualquier causa directa relacionada con el transporte (choques,
    mal tiempo, hechos violentos, etc.) y sobre cualquier modo de transporte (automóvil, transporte público, viajes a pie o
    en bicicleta, etc.). Este indicador debe computar las muertes directamente relacionadas con un accidente de tránsito que
    tenga lugar dentro de los límites de la ciudad, incluso si la muerte no se produce al momento del accidente pero resulta
    directamente atribuible al hecho.",
    positive: "< 0,1",
    negative: "> 0,2",
    medium: "0,1–0,2",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los índices de accidentes de tránsito —y específicamente los índices de mortalidad— sirven como indicadores de la
    seguridad general del sistema de transporte, de la complejidad de la red de autopistas, del volumen de leyes de tránsito
    y de la efectividad de su cumplimiento (especialmente para peatones), de la calidad de la flota del transporte (público
    y privado), y del estado de las vías. Las muertes por accidentes de tránsito representan el tipo de falla más grave de la
    seguridad vial, lo cual justifica que las ciudades se focalicen en las necesidades más urgentes de su seguridad vial.
    Las víctimas mortales por accidentes de tránsito se analizan como representativas de todas las heridas sufridas por
    accidentes de tránsito. Si bien muchas heridas leves nunca se declaran —y por ende no pueden calcularse–, las muertes
    siempre se informan. Sin embargo, cabe aclarar que las diferencias respecto del estado de las autopistas, de los vehículos
    motorizados y de la naturaleza de las leyes de tránsito puede modificar la conexión existente entre heridas y muertes.
    Por ejemplo, el índice de mortalidad por accidentes automovilísticos (cada 100 millones de millas recorridas) en Estados
    Unidos disminuyó de 1,73 a 1,45, debido, en parte, a las mejoras en el diseño de los vehículos y a las normativas que
    exigen el uso de cinturón de seguridad. Estas mejoras y el cumplimiento de las leyes no son tan comunes en otros países.
    Las ciudades y los países usan distintas definiciones de causalidad, específicamente relacionadas con la cantidad de
    tiempo que puede transcurrir entre el accidente de tránsito y la muerte.",
    other: "La información sobre víctimas mortales por accidentes de tránsito es recopilada por ciudades y países a nivel mundial.
    Las organizaciones no municipales e iniciativas como el Programa Global de Indicadores Urbanos de UN-Habitat, el BAsD,
    CEROI, la UTBI, y los Indicadores Comunes Europeos también recogen datos similares.",
    subtheme_id: 31,
  },
  {
    title: "Velocidad promedio de viaje en via publica principal dutante la hora pico",
    description: "La velocidad promedio de viaje de todos los vehículos motorizados de uso personal y vehículos del transporte público que
    utilizan las vías (excepto, por ejemplo, los trenes y trolebuses), a lo largo de todas las “vías públicas” definidas por lugar,
    durante la hora pico de viaje (generalmente, durante la mañana y la tarde)",
    methodology:"Para obtener el indicador se calcula la velocidad promedio de viaje en las principales vías públicas durante la hora pico
    de los días hábiles. Para un cálculo preciso y significativo es necesario que los habitantes de la ciudad respondan algunas
    preguntas importantes:
    • ¿Qué vías se consideran parte de la “vía pública”? Las autopistas principales (las de alta velocidad, o las vías de
    acceso controlado) son una elección segura, pero no todas las ciudades tienen este tipo de infraestructura. En
    algunas ciudades, la vía más ancha puede ser la principal arteria de tráfico o estar especialmente diseñada para
    velocidades reducidas o servicios locales.
    • ¿Cuántas estaciones de monitoreo son necesarias para registrar de forma correcta la velocidad “promedio” de
    viaje? Esta es una pregunta que deben responder los ingenieros de tránsito altamente capacitados, y es individual
    para cada vía en cada ciudad. Un único monitor que capture la velocidad en un solo punto en determinada vía no
    podría capturar de forma adecuada la velocidad promedio de viaje a lo largo de toda la autopista, y menos la de una
    red de carreteras principales.
    • ¿Cuántos días por año —y qué días de la semana— deberían monitorearse?
    • ¿Qué tipo de equipo debe emplearse para realizar el monitoreo de velocidad?
    • Los bucles magnéticos debajo del pavimento no siempre producen mediciones precisas, y las tiras de neumáticos
    están diseñadas para un uso temporario. Los registradores de datos pueden instalarse en vehículos de transporte
    público.",
    positive: "> 30",
    negative: "< 15",
    medium: "15–30",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las velocidades de viaje son un indicador de la eficiencia y capacidad general de la red de transporte. Las ciudades con
    velocidades de viaje más altas en hora pico tienen por lo general una adecuada capacidad de autopistas para movilizar
    el tráfico de forma eficiente.",
    other: "La Ciudad de Porto Alegre recoge datos de este tipo al igual que la UTBI, y los datos forman parte de su Base de datos
    sobre movilidad en las ciudades.",
    subtheme_id: 32,
  },
  {
    title: "Canitdad de automoviles per capita",
    description: "Cantidad de automóviles de uso personal per cápita.",
    methodology:"La cantidad de automóviles de uso personal per cápita es igual al total de automóviles registrados dividido por el total
    de la población.
    La cifra no incluye automóviles, camiones ni furgonetas que se utilicen para la entrega de bienes y el suministro de
    servicios de empresas comerciales. No obstante, incluye automóviles de uso personal de empresas comerciales. La cifra
    no abarca taxis.",
    positive: "< 0,3",
    negative: "> 0,4",
    medium: "0,3–0,4",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La cantidad de automóviles, especialmente en comparación con otros indicadores como la velocidad y la longitud de
    las vías, puede servir como indicador del uso de vehículos. La infraestructura nunca se ajusta a las necesidades de la
    cantidad existente de vehículos. La sostenibilidad debería desalentar el uso ineficiente de automóviles y fomentar medios
    de transporte más eficientes, como los transportes de servicio público y los autos compartidos.
    La cantidad de automóviles depende de muchos factores, por lo que debe tenerse cuidado al utilizar la información.
    Algunas ciudades latinoamericanas limitan la cantidad de vehículos que pueden circular en determinados horarios, lo
    cual podría inducir a la población con mayor nivel de ingresos a adquirir más vehículos para compensar las restricciones.",
    other: "Indicador 30 del GCIF: “Número de automóviles personales per cápita”.",
    subtheme_id: 32,
  },
  {
    title: "Sistemas de planificación y administración de transporte",
    description: "Este indicador tiene por objetivo establecer si la ciudad tiene un sistema de planificación y administración adecuado. Se
    mide a partir de la respuesta a tres preguntas:
    1. ¿Hay alguna encuesta reciente (de dos años de antigüedad como máximo) de origen/destino que abarque el área
    urbana o metropolitana?
    2. ¿Hay un plan maestro de transporte publicado que se base en los resultados de la encuesta u otros estudios de
    respaldo?
    3. ¿Ha implementado la ciudad un sistema de administración del transporte, que incluya distintos indicadores para
    medir y monitorear el sistema de transporte?",
    methodology:"El indicador se establece a través de entrevistas con funcionarios de la ciudad y funcionarios de agencias y empresas de
    transporte que operan en el área.
    En muchas ocasiones, la ciudad tiene estos instrumentos de planificación y administración pero no están implementados
    ni se están utilizando activamente. Debe prestarse especial atención al respecto cuando se realizan las entrevistas.",
    positive: "La ciudad tiene los tres
    elementos",
    negative: "La ciudad no posee una encuesta de
    origen/destino que no tenga más de
    dos años de antigüedad al momento
    de medir el indicador.",
    medium: "La ciudad tiene una encuesta de origen/
    destino reciente y tiene o se encuentra
    en proceso de diseñar y publicar un
    plan maestro de transporte basado en la
    encuesta u otros documentos de respaldo.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La base de todo sistema de transporte sostenible de una ciudad requiere un marco de planificación de transporte adecuado
    además de un marco institucional capaz de implementar y administrar el plan. Como se mencionó anteriormente, estos
    elementos existen en muchas ciudades, pero no están implementados ni se están utilizando activamente.
    El primer indicador de un enfoque “formal” respecto del transporte es la existencia de una encuesta de origen/destino
    y de un mecanismo para actualizarla. Según la ciudad, podría resultar una tarea costosa, por lo que la existencia de una
    encuesta y un mecanismo de actualización constituye un reflejo del nivel de compromiso de la ciudad y/o las autoridades
    regionales con el asunto. Además, los datos arrojados por dicha encuesta son esenciales para el diseño de un plan
    maestro de transporte adecuado. Por ende, si la ciudad no tiene una encuesta de origen/destino, se la incluye en la
    categoría roja. Lo mismo ocurre si no hay otros instrumentos de planificación y gestión disponibles.
    Cuando una ciudad tiene una encuesta y un plan maestro de transporte basados en los datos de transporte y en los
    patrones que proporciona, pero no cuenta con un “líder” poderoso y visible que ejecute el plan e implemente sus políticas,
    el plan se incluirá en la categoría amarilla. Esto se debe a que la economía política del transporte urbano requiere que las
    instituciones fuertes administren las políticas, normativas y disposiciones. La falla de muchas ciudades latinoamericanas
    consiste en que, a pesar de contar con políticas de transporte, su marco institucional es débil y sólo puede administrar
    una parte del sistema. La presencia de una autoridad que mantenga distancia con la administración municipal, bajo un
    marco especial de funcionamiento y contratación, puede hacer la diferencia entre un marco de planificación adecuado y
    un marco de planificación adecuado que se implementa. Por ende, cuando no se haya implementado un sistema de control
    de transporte, la ciudad será incluida en la categoría amarilla.
    Es posible que el costo y la complejidad que implican introducir los elementos de planificación de transporte aquí
    analizados sean mayores que los que muchas ciudades latinoamericanas pueden afrontar. Además, mientras que estos
    elementos son necesarios en economías urbanas capaces de financiar niveles más altos de transporte público, en ciudades
    donde el transporte está subsidiado o donde no resulta económico para la mayoría de los ciudadanos, implementar
    estos elementos puede aumentar el costo de oportunidad de tomar medidas en otras áreas de sostenibilidad urbana. En
    consecuencia, quienes están a cargo de establecer este indicador en cualquier ciudad, deben actuar con criterio prudente.",
    other: "",
    subtheme_id: 33,
  },
  {
    title: "Indice de asequibilidad",
    description: "Índice de asequibilidad (%) = Cantidad de viajes x Costo promedio por viaje/Ingreso per cápita del quintil más humilde de la población",
    methodology:"Total de viajes/Cantidad de viajes: Se han realizado muy pocos estudios acerca de la proporción de viaje urbano deseable
    en lugar de la proporción real. Sin embargo, el análisis de los pocos estudios realizados indicó un mínimo esperable de
    aproximadamente 60 viajes de ida al mes por persona. Para una persona con empleo, la cifra podría incluir aproximadamente
    40 viajes incluidos la ida al trabajo y el regreso, y otros 20 viajes de ida por mes realizados por distintas razones: visitas a la
    familia, consultas al médico, salidas al cine o asuntos personales. Por cuestiones de simplicidad, se utiliza un promedio de 60
    viajes de ida por mes como cantidad de viajes a incluirse en el índice, salvo que se disponga de información más específica.
    Costo promedio por viaje: Debido a que el índice aquí presentado debe ser consistente entre muchas ciudades, se
    utiliza una medida estándar del costo para un único viaje, sobre la base de un boleto por día o por hora cuando el último
    resulte más económico. Los boletos que sirven para períodos más extensos, como aquellos que rinden una semana o mes
    completo de viaje, no se han tenido en cuenta, debido a que implican costos anticipados más altos que serían difíciles de
    absorber para un pasajero de bajos ingresos.
    Ingresos per cápita: Ingresos per cápita del quintil más humilde de la población.
    El costo promedio por viaje y los ingresos per cápita deberían fijarse en la misma moneda (por ejemplo, en dólares de EE.UU.).
    Basado en Carruthers, R., M. Dick y A. Saurkar (2005), Affordability of Public Transport in Developing Countries,
    Transport Papers TP-3, Washington D.C.: Grupo del Banco Mundial. (Disponible en http://siteresources.worldbank.org/
    INTTRANSPORT/214578–1099319223335/20460038/TP-3_affordability_final.pdf.)",
    positive: "Hasta 5%",
    negative: "> 10%",
    medium: "5%–10%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El índice, de naturaleza cuantitativa, tiene por objetivo brindar una referencia cualitativa sobre el costo que deben
    afrontar los más pobres para poder viajar y satisfacer sus necesidades. La asequibilidad consiste en la capacidad para
    realizar los viajes necesarios al trabajo, a la escuela, a los hospitales u otros servicios sociales, y para visitar a otros
    miembros de la familia o realizar viajes urgentes sin tener que sacrificar otras actividades esenciales.
    Los valores de referencia de asequibilidad presentan varios problemas. El problema principal es que el nivel de gastos
    en transporte medido como porcentaje de los ingresos puede no ser directamente proporcional al nivel de vida. Por
    ende, no significa que los hogares que gastan menos del 10% de los ingresos en transporte sean necesariamente más
    ricos que quienes gastan más. Sin embargo, es preciso establecer valores de referencia que definan qué se entiende por
    “asequible”. Los valores de referencia de este tipo son arbitrarios y están sujetos a otras objeciones. Por cuestiones de
    simplicidad, los valores de referencia se fijan en un 10%, a pesar de las posibles limitaciones.
    El índice de asequibilidad no toma en cuenta la posible modificación de tarifas producto de las respuestas a la oferta
    necesarias para abastecer la cantidad estipulada de viajes tenidos en cuenta. Por ejemplo, si cada persona realizara 60
    viajes por mes, la demanda agregada de transporte público probablemente sería mayor a la demanda actual. Así, las
    tarifas de equilibrio también serían distintas, excepto que existan economías de escala que sean constantes en la oferta
    de transporte público. Por cuestiones de simplicidad, los cálculos de equilibrio serán pasados por alto.
    Basado en Carruthers, R., M. Dick y A. Saurkar (2005); Serebrisky, T., A. Gómez-Lobo, N. Estupiñán y R. Muñoz-Raskin
    (2009), “Affordability and Subsidies in Public Urban Transport: What Do We Mean, What Can Be Done?” Transport Reviews.",
    other: "",
    subtheme_id: 34,
  },
  {
    title: "Relacion empleo/vivienda",
    description: "La relación empleo/vivienda se refiere a la distribución aproximada de las oportunidades de empleo y población activa a
    lo largo de un área geográfica. Generalmente se mide en términos de proporción de empleos por hogar.",
    methodology:"El indicador debe medirse para un área específica de la ciudad (por ejemplo, el distrito central de negocios). Cuanto más
    próxima a 1:1 sea la relación, más equilibrada será el área, debido a que la mayoría de los empleos ofrecidos son llevados
    a cabo por gente que vive allí. Cuanto más se aleja de esta relación, mayor es el número de personas que deben viajar
    desde áreas distantes para realizar su trabajo.
    El indicador se establece dividiendo la cantidad de empleos por la cantidad de unidades de vivienda ubicadas dentro del
    área. Por ejemplo, si un área tiene 5 empleos y hay 4 casas, el valor del indicador será 1,25. El resultado también puede
    expresarse en términos proporcionales, en cuyo caso el resultado será 1,25:1.
    El estándar recomendado, fijado como objetivo, y los rangos de empleo en relación con las unidades de vivienda se basan
    en la suposición de que la cantidad promedio de trabajadores por hogar es de aproximadamente 1,5. Sin embargo, esta
    cifra puede variar de comunidad a comunidad. Algunos hogares tienen dos o más trabajadores, mientras que en otros no
    hay ninguno. De ser posible, la medida estándar debe basarse en el análisis de los datos locales de trabajadores por hogar.
    La disponibilidad de datos debe guiar la elección del método para medir el equilibrio entre empleo y vivienda y también
    el área que se medirá, excepto que exista un interés en un aspecto puntual del equilibrio empleo-vivienda que justifique
    realizar un esfuerzo extra para obtener datos. Deben usarse los datos de viviendas y empleo provenientes de la zona de

    análisis de tráfico (TAZ, por sus siglas en inglés), si están disponibles, o un radio censal para calcular la relación empleo-
    vivienda en subáreas de una jurisdicción.

    Cuando se respalda una política de equilibrio entre empleo y vivienda, es necesario tener en cuenta que dicha política
    no implica necesariamente densidades más grandes, es decir, las políticas de equilibrio entre empleo y vivienda son
    “de densidad neutra”. Las políticas de empleo-vivienda sólo sugieren que un área geográfica determinada debería tener
    empleos y viviendas. Deben tenerse en cuenta los factores cualitativos y también los cuantitativos.
    ¿Cuál(es) área(s) de la ciudad se debe medir?
    Las áreas de la ciudad que se debe medir para este indicador son las dos donde se genera la mayoría de los viajes y donde
    tienen su destino. Esto permite definir políticas para el desarrollo de la vivienda o del empleo para los casos en los cuales
    la vivienda o el empleo no sean equilibrados.
    Normalmente, las áreas que constituyen el destino de la mayoría de los viajes abarcan el distrito central de negocios,
    y las áreas donde se genera la mayoría de los viajes son las que se utilizan sólo como áreas residenciales. Dentro de
    estas últimas, las zonas donde vive un gran número de ciudadanos en situación de pobreza son aquellas en las cuales se
    debería llevar a cabo el análisis, porque la movilidad de muchas personas dependería del transporte público.
    ¿Cómo determinar el área/las áreas que se deben medir?
    Los distritos centrales de negocios de la ciudad son normalmente delimitados por el plan maestro de la ciudad o el plan
    maestro de transporte. Habitualmente están delimitados como áreas de uso mixto. El analista debe establecer los dos
    o tres (depende del tamaño de la ciudad) distritos centrales de negocios más importantes. Las áreas residenciales que
    generan los viajes y concentran números más grandes de ciudadanos en situación de pobreza se pueden definir mediante
    una cartografía de la distribución del Índice del Desarrollo Humano (IDH) en la ciudad. Los datos del censo suelen
    recogerse en “distritos del censo” y casi todos los departamentos responsables para el censo incluyen una delimitación
    geográfica de estos distritos. A la medida de un análisis estadístico, se puede determinar el IDH para estos mismos
    distritos, creando una gradación que puede cubrir un IDH muy bajo (0,0–0,63), un IDH bajo (0,64–0,67), un IDH medio
    (0,68–0,72) y un IDH alto (0,73–0,82). Este indicador debe medirse en las dos áreas con el IDH más bajo.
    Basado en: i) Weitz, Jerry (2003), Jobs Housing Balance, American Planning Association Advisory Service Report No
    . 516 y ii)

    Planning for Sustainable Travel, en www.plan4sustainabletravel.org.",
    positive: "1,3:1 a 1,5:1",
    negative: "< 1,3:1 y > 1,7:1",
    medium: "1,5:1 a 1,7:1",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las tendencias reflejan que la gente conduce distancias más grandes y hacia un mayor número de destinos debido a los
    patrones de uso único del suelo que generalmente se desarrollan en las áreas metropolitanas. Los estudios han demostrado
    que a las comunidades mejor planificadas, de uso mixto, con una relación equilibrada entre la demanda de empleos y
    la cantidad y el tipo de empleados que habitan dentro de sus límites se les puede atribuir por lo menos un tercio de las
    distancias de viaje reducidas, y por ende, también de tiempos de viaje (Urban Land Institute, 1999). Las comunidades
    planificadas en función de un equilibrio entre empleos y viviendas también pueden contribuir a la reducción del tamaño
    de las áreas urbanizadas y a una mayor eficiencia de la infraestructura pública y de los servicios que se brindan.
    La relación empleo-vivienda constituye una herramienta de planificación que los gobiernos locales pueden utilizar para
    alcanzar un equilibrio entre la cantidad de empleos y hogares en su jurisdicción. Es una técnica de planificación más que
    una herramienta normativa. Sin embargo, el concepto puede utilizarse en normativas locales sobre uso del suelo y en
    informes de desarrollo (a lo largo de toda la ciudad) de gran escala.
    Las técnicas de empleo-vivienda se desarrollan de mejor manera no de forma aislada, sino como parte de otro estudio
    o programa, como las iniciativas de crecimiento inteligente, las comisiones especiales de vivienda o los informes, las
    iniciativas de desarrollo económico, los pronósticos sobre crecimiento general, o los planes de transporte. También es
    más eficiente, en lo que respecta a los costos, realizar un análisis de empleo-vivienda como parte de otro estudio o
    iniciativa de planificación.
    El equilibrio entre empleo y vivienda debe considerarse un objetivo de mediano o largo plazo que la comunidad puede
    alcanzar en forma creciente a través de distintas medidas locales que se desarrollen con el tiempo.
    Una estrategia de equilibrio entre empleo y vivienda constituye un método importante para colaborar con objetivos de
    desarrollo y transporte local.",
    other: "El GCIF está implementando este indicador. El indicador se utiliza en muchas divisiones de planificación urbana en
    ciudades desarrolladas y también en ciudades en desarrollo.",
    subtheme_id: 35,
  },
  {
    title: "Días para obtener una licencia de negocios",
    description: "Tiempo requerido para obtener una licencia de negocios inicial (NO el tiempo total que demanda iniciar un negocio).",
    methodology:"El tiempo se computa en días calendario. El tiempo comienza con la primera presentación de la solicitud o pedido, y
    finaliza una vez que la compañía ha recibido la licencia de negocios (por ejemplo: incluye el tiempo para realizar una
    consulta con un notario o el tiempo de espera una vez presentados los documentos). Se sobreentiende que el empresario
    no ha tenido contacto previo con ninguno de los funcionarios. El tiempo mínimo para un procedimiento es de 1 día.
    Basado en Doing Business “The Business Start-up Process Definitions” del Banco Mundial. (Disponible en http://www.
    doingbusiness.org/~/media/GIAWB/Doing%20Business/Documents/Methodology/Survey-Instruments/DB2013/Starting_
    survey_en.pdf.)",
    positive: "< 12",
    negative: "> 20",
    medium: "12–20",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los altos costos de puesta en marcha representan en muchos casos el obstáculo más importante para comenzar un nuevo
    negocio o formalizar un negocio existente y generalmente afectan en mayor medida a las pequeñas y medianas empresas
    (PyME). Los altos costos de puesta en marcha limitan los emprendimientos, la innovación y la formalización del negocio.",
    other: "El Subíndice de Costos de Entrada del Índice de Competitividad Municipal de El Salvador (de la Agencia de los Estados
    Unidos para el Desarrollo Internacional, USAID) utiliza “duración para emitir permisos de operación (días)” además de
    “duración para esperar otros permisos relacionados con el negocio (días)”, “espera efectiva para que el negocio comience
    a operar (días)”, y otros indicadores. El Informe de Competitividad Global (Foro Económico Mundial) utiliza “tiempo
    requerido para comenzar un negocio” además de “cantidad de procedimientos requeridos para comenzar un negocio”.
    El Ease of Doing Business Index (Corporación Financiera Internacional y Banco Mundial) utiliza “días para comenzar un
    negocio”.",
    subtheme_id: 36,
  },
  {
    title: "Existencia de una plataforma logistica",
    description: "La ciudad brinda servicios especializados exclusivamente para las operaciones de logística en distintas actividades.",
    methodology:"Una plataforma logística es un área definida dentro de la cual todas las actividades relativas al transporte, a la logística y
    a la distribución de bienes, tanto para el tránsito nacional como internacional, son llevadas a cabo por varios operadores.
    Su gestión está a cargo de un solo órgano y puede ser pública o privada, y cuenta con todos los servicios públicos para
    realizar las operaciones descriptas anteriormente.
    En otras palabras, podemos definir una plataforma logística como una zona especializada que cuenta con la infraestructura
    y los servicios necesarios para facilitar la complementariedad modal y los servicios de valor agregado a la carga, donde
    distintos agentes coordinan sus acciones en beneficio de la competitividad de los productos que utilizan la infraestructura.
    Es importante distinguir los distintos tipos de plataformas logísticas en función de su complejidad operativa e integración
    operacional:
    1. Centros de distribución unimodal.
    2. Zonas logísticas.
    3. Plataformas multimodales.
    Los centros de distribución unimodal son infraestructuras que actúan como un almacén y se orientan principalmente a la
    gestión del flujo de mercaderías y del inventario asociado. La gestión de esta infraestructura puede estar a cargo de una
    o de múltiples empresas, sin que esto implique necesariamente algún grado de integración de las operaciones. Este tipo
    de infraestructura suele ser unimodal y estar principalmente orientado al transporte terrestre por carretera.
    Las zonas logísticas implican un mayor grado de integración de operaciones mediante actividades de consolidación,
    localización y redireccionamiento de inventarios. Esta infraestructura incluye puntos de concentración de tráfico y de
    ruptura de carga, para conectarla con modos de transporte distintos. Como es evidente, estas zonas incorporan al menos
    dos modos de transporte, por lo que es posible implementar estrategias de postergación geográfica (o distribución) y
    tránsito directo (cross docking). Ejemplos típicos son los centros de carga aérea o las zonas de actividades logísticas
    portuarias.
    Por último, las plataformas logísticas multimodales son nodos logísticos que conectan diferentes modos de transporte,
    donde el énfasis del proceso está en los servicios de valor agregado a la carga y no en el modo de transporte utilizado.
    Este tipo de infraestructura se conoce también con el nombre de infraestructura central, y está usualmente ligada
    a la existencia de un puerto para aprovechar economías de escala en las rutas internacionales. Su función nodal no
    solo incluye actividades relativas al transporte, sino que agrega actividades logísticas y de distribución de cobertura
    nacional e internacional. Por lo general, son llevadas a cabo por varios operadores. Debido a los grandes volúmenes y a
    su excelente ubicación, es posible implementar en ellas casi la totalidad de las estrategias de postergación (geográfica,
    de manufactura y de ensamblaje).
    Basado en CEPAL (2009), “Logistic Platforms: Conceptual Elements and the Role of the Public Sector” y European
    Association of Freight Villages EUROPLATFORMS.",
    positive: "Hay una plataforma logística
    diseñada e implementada para
    el transporte marítimo, aéreo y
    terrestre.",
    negative: "No se ha diseñado ninguna
    plataforma logística.",
    medium: "Se ha diseñado una plataforma
    logística para al menos un tipo
    de transporte (marítimo, aéreo o
    terrestre).",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Producto de los profundos cambios en la economía global en general, y en particular en los sistemas de producción
    y distribución de mercadería, la concepción misma de la logística ha variado hasta convertirse en un motor de la
    competitividad de la industria y del comercio. La logística avanzada, definida como la sincronización de las actividades
    de múltiples organizaciones participantes en la cadena logística y de transporte, permite el surgimiento de sistemas
    logísticos complejos, basados en la sincronización de procesos y la retroalimentación de información que dan origen a
    esquemas multimodales de transporte definidos en función de las características de la carga, el tiempo, la distancia y la
    geografía que deben recorrer, y que aprovechan las ventajas de cada modo de transporte en beneficio de la competitividad
    de la carga. En este sentido, las plataformas logísticas han mostrado ser de suma importancia no solo para enfrentar los
    problemas de congestión portuaria, sino además para enfrentar los desafíos que imponen las estrategias de postergación
    y tránsito directo que apuntan a minimizar los costos logísticos totales, y la creciente volatilidad de los mercados de
    consumo, donde la integración con el modo aéreo resulta fundamental en el caso de productos de mayor valor agregado o
    que poseen ciclos de vida muy acotados. Además, este tipo de infraestructura permite aprovechar ciertas economías de
    aglomeración, en cuanto a los servicios que requieren quienes operan en dichas plataformas. También ayuda a disminuir
    las externalidades del transporte, como la congestión y la contaminación.
    Se ha logrado un progreso significativo en el desarrollo de la infraestructura y su productividad en América Latina y el
    Caribe, incrementando los estándares de calidad y eficiencia respectivamente. Sin embargo, un tema aún no resuelto, y
    que resulta clave para el desarrollo del sector exportador, es el de la implementación de servicios logísticos de calidad,
    que apoyen la competitividad nacional mediante una reducción efectiva de los costos logísticos y de transporte.
    Basado en CEPAL (2009), “Logistic Platforms: Conceptual Elements and the Role of the Public Sector”.",
    other: "",
    subtheme_id: 37,
  },
  {
    title: "PIB per capita de la ciudad",
    description: "Medición del rendimiento económico per cápita. PIB de la ciudad dividido por la población de la ciudad. El PIB de la
    ciudad es igual al producto total de la ciudad según lo establecido en los procedimientos contables del país. Puede
    computarse como el total de ingresos o valor agregado (salarios más excedente de negocios, impuestos e importaciones)
    o como la demanda final total (consumo más inversiones y exportaciones). El producto de la ciudad expresado en
    dólares estadounidenses (numerador) dividido por la población de la ciudad (denominador), expresado en dólares
    estadounidenses.
    Basado en la descripción del indicador de GCIF: “City product per capita”.",
    methodology:"El producto anual de la ciudad se calcula con uno de estos métodos:
    • El método A consiste en calcular el producto nacional en cada sector de la industria (clasificación estándar industrial)
    y luego multiplicarlo por los índices de salarios diferenciales a nivel ciudad, para cada sector de la industria.
    • El método B consiste en utilizar las cifras de ingresos de la ciudad y en multiplicar la razón del producto nacional
    bruto (PNB) por el total de ingresos por vivienda a nivel nacional. Este método parte de la base de que la razón PNB/
    ingresos por vivienda es la misma a nivel municipal y nacional. Hasta ahora, se ha empleado en la mayoría de los
    informes sobre indicadores de la ciudad de UN-Habitat.
    Se considera que el método A es preferible. El método empleado para calcular el producto de la ciudad debe informarse
    claramente en los resultados.
    Posteriormente se convierte el producto de la ciudad a dólares estadounidenses y se lo divide por el total de la población
    actual de la ciudad para obtener una cifra per cápita, expresada en dólares estadounidenses. Para realizar la conversión
    de la moneda local, pueden utilizarse los índices publicados por el Banco de la Reserva Federal de Nueva York: http://
    www.ny.frb.org/markets/foreignex.html.
    Este indicador depende de las agencias de cada gobierno nacional responsables de recoger datos pertinentes del PNB y
    de la naturaleza precisa de los datos disponibles a nivel de cada ciudad.
    Basado en la descripción del indicador de GCIF: “City product per capita”.",
    positive: "> US$9.000",
    negative: "US$3.000–US$9.000",
    medium: "< US$3.000",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El PIB per cápita representa una medida de la productividad del valor de mercado y de los ingresos de los habitantes, y
    sirve para indicar la capacidad de los habitantes para comprar bienes y servicios que pueden mejorar su calidad de vida.
    El Informe de Competitividad Mundial clasifica los países en tres etapas de desarrollo: lo impulsado por factores (incluye
    tres países de ALC: Bolivia, Haití y Nicaragua); lo impulsado por la eficiencia (incluye nueve países de ALC); y lo impulsado
    por la innovación (no son países de ALC), y dos etapas de transición (cinco países de ALC están en transición entre la etapa
    1 y la etapa 2, y siete países ALC están en transición entre la etapa 2 y la etapa 3). A excepción de los países que dependen
    en gran medida de recursos minerales, estas clasificaciones se basan en el PIB per cápita, de la siguiente forma: Etapa de
    desarrollo impulsado por factores (1) < US$2.000; Transición entre la etapa 1 y la etapa 2: US$2.000–US$2.999; Etapa
    de desarrollo impulsado por la eficiencia (2), US$3.000–US$8.999; Transición entre la etapa 2 y la etapa 3, US$9.000-
    US$17.000; Etapa de desarrollo impulsado por la innovación (3), > US$17.000. Debido a que la mayor cantidad de países
    de ALC está en la etapa de desarrollo impulsado por la eficiencia, y el resto casi en la transición hacia esta etapa o hacia
    la próxima, los valores de referencia aquí expresados se basan en las divisiones entre estas categorías. El verde indica
    una ciudad con una economía impulsada por la innovación, o en transición a este tipo de economía; el amarillo señala una
    economía impulsada por la eficiencia, y el rojo indica una economía que aún es, por lo menos parcialmente, impulsada
    por factores.",
    other: "GCIF; UN-Habitat; BAsD; EuroStat Urban Audit; Informe de Competitividad Mundial (Foro Económico Mundial).",
    subtheme_id: 38,
  },
  {
    title: "Tasa de Desempleo promedio anual",
    description: "El total de desempleados dividido por el total de la fuerza de trabajo. La tasa de desempleo representa el porcentaje de
    la fuerza de trabajo que busca empleo de forma activa pero que no logra encontrar empleo en un tiempo determinado.",
    methodology:"El total de la población económicamente activa que durante el período de referencia de la encuesta estaba disponible
    para trabajar y buscando empleo, pero no estaba en un empleo en relación de dependencia ni por cuenta propia, se divide
    por la población que alcanza la edad especificada para medir la fuerza de trabajo.
    Los trabajadores desalentados —aquellos que no buscan empleo de forma activa porque creen que las posibilidades
    de encontrar un empleo son extremadamente bajas— no se cuentan como desempleados ni como parte de la fuerza de
    trabajo.
    Basado en la descripción del indicador de GCIF: “City Unemployment Rate”.",
    positive: "< 7%",
    negative: "> 12%",
    medium: "7%–12%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La tasa de desempleo es un indicador esencial para la solidez de la economía y más en general de la sociedad. Cuando el
    crecimiento económico es fuerte, la tasa de desempleo suele ser baja. Cuando la economía está estancada o en recesión,
    el desempleo suele ser más alto. Un alto nivel de desempleo generalmente resulta en una baja calidad de vida de la
    población y en un aumento de los índices de delitos.",
    other: "GCIF; Banco Mundial (países); Bureau of Labor Statistics (áreas metropolitanas de Estados Unidos).",
    subtheme_id: 39,
  },
  {
    title: "Empleo informal como porcentaje de empleo total",
    description: "Porcentaje de la población económicamente activa (PEA) que trabaja en un empleo informal según la definición de la
    Organización Internacional del Trabajo (OIT).",
    methodology:"Estos datos se obtienen a través de encuestas sobre la fuerza de trabajo.
    De acuerdo con la OIT, “el empleo informal comprende el número total de empleos informales tal como se definen en los
    subpárrafos (2) a (5) abajo, ya se ocupen estos en empresas del sector formal, empresas del sector informal, o en hogares,
    durante un período de referencia determinado”.
    (2) Como se indica en la matriz adjunta, el empleo informal incluye los siguientes tipos de empleos:
    i. Trabajadores por cuenta propia dueños de sus propias empresas del sector informal (casilla 3).
    ii. Empleadores dueños de sus propias empresas del sector informal (casilla 4).
    iii. Trabajadores familiares auxiliares, independientemente de si trabajan en empresas del sector formal o informal
    (casillas 1 y 5).
    iv. Miembros de cooperativas de productores informales (casilla 8).
    v. Asalariados que tienen empleos informales (tal como se definen en el subpárrafo (5) abajo) ya que estén empleados
    por empresas del sector formal, por empresas del sector informal, o por hogares que los emplean como trabajadores
    domésticos asalariados (casillas 2, 6 y 10).
    vi. Trabajadores por cuenta propia que producen bienes exclusivamente para el propio uso final de su hogar (casilla
    9), si están ocupados de acuerdo con el párrafo 9 (6) de la Resolución sobre estadísticas de la PEA, del empleo,
    del desempleo y del subempleo adoptada por la Decimotercera CIET.
    (3) Los trabajadores por cuenta propia, empleadores, miembros de cooperativas de productores, trabajadores familiares
    auxiliares y asalariados se definen de acuerdo con la última versión de la Clasificación Internacional de la Situación en
    el Empleo (CISE).
    (4) Se consideran como informales las cooperativas de productores, que no están formalmente constituidas en entidades
    legales y que también satisfacen los otros criterios de las empresas del sector informal especificados en la Resolución
    sobre las estadísticas del empleo en el sector informal adoptada por la Decimoquinta CIET.
    (5) Se considera que los asalariados tienen un empleo informal si su relación de trabajo, de derecho o de hecho, no está
    sujeta a la legislación laboral nacional, el impuesto sobre la renta, la protección social o determinadas prestaciones
    relacionadas con el empleo (preaviso al despido, indemnización por despido, vacaciones anuales pagadas o licencia
    pagada por enfermedad, etc.). Las razones pueden ser las siguientes: la no declaración de los empleos o de los asalariados;
    empleos ocasionales o empleos de limitada corta duración; empleos con un horario o un salario inferior a un límite
    especificado (por ejemplo para cotizar a la seguridad social); el empleador es una empresa no constituida en sociedad o
    una persona miembro de un hogar; el lugar de trabajo del asalariado se encuentra fuera de los locales de la empresa del
    empleador (por ejemplo, los trabajadores fuera del establecimiento y sin contratos de trabajo); o empleos a los cuales
    el reglamento laboral no se aplica, no se hace cumplir o no se hace respetar por otro motivo. Los criterios operativos
    para definir empleos asalariados informales deberían determinarse en función de las circunstancias nacionales y de la
    disponibilidad de información.
    (6) Para fines del análisis y la formulación de políticas, podría ser útil desagregar los varios tipos de empleos informales
    listados en el párrafo 3 (2) arriba, sobre todo los desempeñados por asalariados. Tal tipología y las definiciones
    correspondientes deberían elaborarse dentro del marco de trabajos futuros a los niveles internacional y nacional con
    respecto a las clasificaciones de la situación en el empleo.
    4. Cuando existan, los asalariados que tienen empleos formales en empresas del sector informal (casilla 7 de la matriz
    adjunta) deberían excluirse del empleo informal.
    5. El empleo informal fuera del sector informal comprende los tipos de empleos siguientes:
    i. Asalariados que tienen empleos informales (tal como se definen en el párrafo 3 (5) arriba) en empresas del sector
    formal (casilla 2) o como trabajadores domésticos asalariados empleados por hogares (casilla 10).
    ii. Trabajadores familiares auxiliares que trabajan en empresas del sector formal (casilla 1).
    iii. Trabajadores por cuenta propia que producen bienes exclusivamente para el propio uso final de su hogar (casilla
    9), si están ocupados de acuerdo con el párrafo 9 (6) de la Resolución sobre estadísticas de la PEA, del empleo, del
    desempleo y del subempleo adoptada por la Decimotercera CIET.
    6. Los países que no tienen estadísticas sobre el empleo en el sector informal, o a los cuales no les parece relevante
    una clasificación del empleo por tipo de unidad de producción, podrían elaborar, cuando lo deseen, estadísticas sobre
    el empleo informal especificando definiciones adecuadas de empleos informales de trabajadores por cuenta propia,
    empleadores y miembros de cooperativas de productores. Alternativamente, la medición del empleo informal podría
    limitarse a empleos asalariados.",
    positive: "< 20%",
    negative: "> 35%",
    medium: "20%–35%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La informalidad está directamente relacionada con empleos de baja calidad, de alto riesgo y con protección social
    inadecuada. También puede obstaculizar la capacidad del gobierno para recaudar impuestos y exigir el cumplimiento de
    otras disposiciones.",
    other: "OIT; OCDE.",
    subtheme_id: 40,
  },
  {
    title: "Suscripciones a internet de banda ancha fija",
    description: "Número de suscripciones de acceso fijo a Internet de banda ancha (por cada 100 habitantes) con velocidades de 256
    kbps o superiores. Esto incluye DSL, fibra óptica, conexiones fijas a través de cable módem, y excluye conexiones por
    teléfono móvil.",
    methodology:"Esta información generalmente puede obtenerse a través de los proveedores del servicio de Internet.",
    positive: "> 15%",
    negative: "< 7%",
    medium: "7%–15%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La banda ancha tiene un efecto multiplicativo en el PIB, la productividad y el empleo. De acuerdo con un estudio reciente
    del BID de 26 países de América Latina y el Caribe, un incremento del 10% en el número de suscripciones a Internet de
    banda ancha cada 100 habitantes genera, en promedio, aumentos del PIB del 3,19% y de la productividad en un 2,61%,
    y eleva la cifra de empleos a 67.016.
    La medición del indicador de suscripciones a Internet de banda ancha fija es uno de los principales indicadores de las
    Tecnologías de la Información y Comunicación (ICT, por sus siglas en inglés) que brinda una base de información a partir
    de la cual el municipio puede evaluar su situación de conectividad con respecto a la infraestructura, asequibilidad,
    acceso, uso, y oportunidades de intervención para aprovechar los beneficios que resultan del mayor uso de banda ancha.
    Washington, D.C.: Basado en García Zaballos, A. y R. López-Rivas (2003), “Socioeconomic Impact of Broadband in LAC
    Countries” (BID).",
    other: "La UIT y el Informe de Competitividad Mundial (Foro Económico Mundial) utilizan suscripciones a Internet de banda
    ancha fija (por cada 100 habitantes). El Banco Mundial utiliza “Abonados a Internet por banda ancha fija (cada 100
    habitantes)”. GCIF utiliza el número de conexiones a Internet por cada 100.000 habitantes.",
    subtheme_id: 41,
  },
  {
    title: "Suscripciones a internet de banda ancha movil",
    description: "Número de dispositivos móviles (como por ejemplo, celulares, tablets y smartphones) con un paquete de suscripción a
    datos para acceder a Internet con velocidades de 256 kbps o superiores, por cada 100 habitantes. Incluye suscripciones
    móviles a través de tarjetas de datos o módem USB.",
    methodology:"Esta información generalmente puede obtenerse a través de los proveedores del servicio de Internet.",
    positive: "> 20%",
    negative: "< 10%",
    medium: "10%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La banda ancha tiene un efecto multiplicativo en el PIB, la productividad y el empleo. De acuerdo con un estudio reciente
    del BID de 26 países de América Latina y el Caribe, un incremento del 10% en el número de suscripciones a Internet de
    banda ancha por cada 100 habitantes genera, en promedio, 67.016 nuevos empleos y aumentos del 3,19% en el PIB y
    del 2,61% en la productividad. Si bien América Latina y el Caribe tiene una alta penetración de celulares en el mercado,
    las suscripciones de banda ancha móvil todavía son escasas. La mayoría de las personas utilizan celulares para realizar
    llamadas de voz, pero no para acceder a Internet.
    La medición de suscripciones de banda ancha móvil y su evolución permite al municipio evaluar el uso de banda ancha
    móvil en relación con el uso de telefonía móvil para identificar posteriormente problemáticas (asequibilidad y cobertura)
    y oportunidades de intervención, uso y crecimiento.
    Washington, D.C.: Basado en García Zaballos, A. y R. López-Rivas (2003), “Impacto socioeconómico de la banda ancha
    en América Latina y el Caribe” (BID).",
    other: "Informe de Competitividad Mundial (Foro Económico Mundial). La UIT utiliza suscripciones móviles estándares con acceso
    a transmisiones de datos a velocidades de banda ancha. La OCDE utiliza la suscripción de banda ancha inalámbrica. En
    la región de ALC, solo México tiene datos disponibles.",
    subtheme_id: 41,
  },
  {
    title: "Suscripciones a telefonos moviles",
    description: "Número de suscripciones a teléfonos móviles por cada 100 habitantes (incluye suscripciones en las modalidades de
    prepago y pospago).",
    methodology:"Esta información generalmente puede obtenerse a través de los proveedores del servicio de Internet.",
    positive: "> 90%",
    negative: "< 60%",
    medium: "60%–90%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Entre 2002 y 2010, la introducción promedio de teléfonos móviles en el mercado en ALC se quintuplicó, y hoy en día
    supera el 90%. Si bien ALC tiene un elevado nivel de suscripciones a teléfonos celulares, las suscripciones se realizan
    solo para hacer llamadas de voz. Sin embargo, en ALC existiría una gran oportunidad para aumentar la conectividad por
    banda ancha si los teléfonos se utilizaran para la transmisión de datos además de para hacer llamadas de voz.
    La medición de suscripciones de teléfonos móviles y su evolución permite al municipio evaluar el uso de teléfonos
    móviles en relación con el uso de banda ancha móvil para identificar posteriormente problemáticas y oportunidades de
    intervención, uso y crecimiento.",
    other: "El Banco Mundial, la UIT, el Informe de Competitividad Mundial (Foro Económico Mundial), y los Objetivos de Desarrollo
    del Milenio de las Naciones Unidas utilizan las suscripciones a teléfonos celulares móviles (cada 100 habitantes). GCIF
    utiliza el número de conexiones a teléfonos celulares por cada 100.000 habitantes.",
    subtheme_id: 42,
  },
  {
    title: "Tasa de alfabetismo de adulto",
    description: "El porcentaje de la población mayor de 15 años (excepto que el país lo establezca de otra forma), que pueden leer, escribir
    y comprender un texto breve y simple sobre su vida cotidiana.",
    methodology:"Los datos sobre alfabetismo pueden obtenerse de censos de población, encuestas de viviendas y encuestas de alfabetismo.
    El total de la población se calcula a partir de los censos nacionales o de modelos de encuesta. Sin embargo, no todos los
    censos ni encuestas incluyen preguntas específicas para evaluar el alfabetismo. En los países en los que no se incluyen
    preguntas sobre alfabetismo, se toma en cuenta el nivel educativo de las personas (años de escolaridad) para evaluar el
    nivel de alfabetismo. Resulta habitual considerar analfabetos a los habitantes sin educación escolar y alfabetos a quienes
    cursaron el 5o grado de la escuela primaria. Muchas encuestas de viviendas, incluidas las Encuestas de Indicadores
    Múltiples por Conglomerados de Unicef, las Demographic and Health Surveys (Encuestas Demográficas y de Salud) de
    USAID y ICF International, los Core Welfare Indicators Questionnaire surveys (Cuestionarios sobre Indicadores Básicos del
    Bienestar) en África y los Estudios de Medición del Nivel de Vida del Banco Mundial, recogen datos sobre alfabetismo
    que pueden servir como información complementaria para los países sin censo reciente. Sin embargo, las definiciones no
    están necesariamente estandarizadas.
    El método de cálculo habitual consiste en dividir el número de personas alfabetizadas mayores de 15 años por el total
    de la población en el mismo grupo de edad y multiplicar el total por 100. Debido a que los datos sobre alfabetismo no
    siempre están disponibles en todos los países y censos, el Instituto de Estadísticas de la Organización de las Naciones
    Unidas para la Educación, la Ciencia y la Cultura (Unesco) utiliza técnicas de modelación para producir estimaciones
    anuales en base a la información sobre alfabetismo obtenida de censos y encuestas nacionales.
    Las mediciones de alfabetismo abarcan desde la simple pregunta “¿Sabes leer y escribir?” hasta pruebas diseñadas
    para evaluar las habilidades de lecto-escritura. En algunos casos, el alfabetismo se mide abiertamente en censos de
    población, ya sea bajo confesión propia o la suposición de que la gente sin escolaridad es analfabeta, lo cual representa
    una dificultad para la comparación de resultados a nivel internacional. La comparación que se realiza con el tiempo,
    incluso con respecto a la misma encuesta, también puede representar un problema, debido a que las definiciones de
    alfabetismo utilizadas en las encuestas no están estandarizadas. La última edición de los Principios y Recomendaciones
    para los Censos de Población y Habitación de las Naciones Unidas recomienda a los países no adoptar una medición
    representativa basada en el nivel educativo. En cambio, recomienda que las preguntas sobre alfabetismo se realicen e
    incluyan en los censos nacionales y encuestas de viviendas, o como parte de las encuestas posteriores al censo.
    Basado en el Programa de las Naciones Unidas para los Asentamientos Urbanos (2004), Urban Indicators Guidelines
    (p.18), “Indicator 10: Literacy Rate”.",
    positive: "> 90%",
    negative: "< 80%",
    medium: "80%–90%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El alfabetismo constituye uno de los objetivos principales de la educación primaria. Esta habilidad es un requisito
    previo para la mayoría de los tipos de aprendizajes y un factor básico para poder desenvolverse en la sociedad moderna,
    especialmente en las áreas urbanas. El alfabetismo brinda independencia e influye en gran medida en la capacidad para
    entender y comunicarse. Mejora la capacidad para tomar decisiones, así se trate de entender la etiqueta de un producto
    o votar, y deviene en mejoras en otros aspectos de la calidad de vida, como la salud y los ingresos.
    Conforme a un estudio de la Unesco, titulado El Impacto social y económico del analfabetismo, la pérdida de productividad
    (ingresos por empleo) como resultado del analfabetismo es lo suficientemente habitual como para justificar su erradicación
    no solo como un objetivo social, sino como una prioridad económica que brinda beneficios netos mediante la generación
    de sus propios recursos financieros. Por ende, la erradicación del analfabetismo debe tomarse como una inversión más
    que como un gasto.
    Basado en Martínez, R. y A. Fernández (2010), Impacto social y económico del analfabetismo (CEPAL y Unesco).",
    other: "Banco Mundial, Índice de Desarrollo Humano (Programa de las Naciones Unidas para el Desarrollo), Banco Asiático de
    Desarrollo, Banco Africano de Desarrollo, UN-Habitat, Organización de las Naciones Unidas para la Educación, la Ciencia
    y la Cultura (Unesco) y los Objetivos de Desarrollo del Milenio de las Naciones Unidas utilizan la tasa de alfabetismo de
    los jóvenes de 15–24 años de edad.",
    subtheme_id: 43,
  },
  {
    title: "Porcentaje de estudiantes con un nivel satisfactorio en pruebas estandarizadas de lectura",
    description: "Porcentaje de estudiantes de grado x de educación primaria con un nivel satisfactorio en pruebas estandarizadas
    nacionales (o locales) de lectura, desglosado por género.",
    methodology:"La cantidad de estudiantes de un grado determinado que recibieron una calificación satisfactoria en una prueba
    estandarizada de lectura se divide por el número total de estudiantes de dicho grado que recibió una calificación por la
    prueba. Esto se realiza para la totalidad de los estudiantes, los estudiantes de sexo masculino y los estudiantes de sexo
    femenino. No existen valores de referencia internacionales específicos para este indicador porque los resultados solo
    pueden considerarse de forma relativa con respecto a otros estudiantes que rindieron la misma prueba (es decir, una
    calificación superior en un país puede simplemente indicar que la prueba en cuestión era más fácil). En este sentido,
    se prefieren las pruebas estandarizadas nacionales a las pruebas estaduales o provinciales, mientras que las pruebas
    estandarizadas locales solo deberían tomarse como último recurso y, en tal caso, hacerlo con precaución.",
    positive: "Valor similar al de ciudades
    ejemplares del país
    (cuyos estudiantes rindieron la
    misma prueba)",
    negative: "Valor inferior al de
    ciudades pares del país
    (cuyos estudiantes rindieron la
    misma prueba)",
    medium: "Valor similar al de
    ciudades pares del país
    (cuyos estudiantes rindieron la
    misma prueba)",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Actualmente, las calificaciones de las pruebas estandarizadas constituyen uno de los indicadores más utilizados en
    educación. Sin embargo, se debe tener cuidado al emplear este valor como indicador de la calidad de la educación
    proporcionada por las escuelas. En realidad, las pruebas estandarizadas miden tres aspectos: lo que los estudiantes
    aprenden en la escuela, lo que los estudiantes aprenden fuera de la escuela, y las habilidades intelectuales naturales
    de los estudiantes. Las escuelas solo tienen control sobre uno de estos tres factores importantes del desempeño de los
    estudiantes en las pruebas estandarizadas. Puede ser mejor considerar el desempeño en la prueba estandarizada como
    un indicador general de logro académico (es decir, de lo que el estudiante sabe) atribuible a diversos factores, en lugar
    de como un indicador de calidad de una institución educativa particular. Además, dado que solo es posible examinar una
    pequeña porción del conocimiento total del estudiante, gran parte del desempeño de los estudiantes en las pruebas en
    relación con la influencia que las escuelas pueden tener depende de la correspondencia entre el programa de estudios
    de cada escuela con las preguntas específicas que se formulen en la prueba. Uno de los beneficios de hacer hincapié en
    las pruebas de matemática y lectura en contraposición con las pruebas de otras materias es que estas son capacidades
    básicas y de amplia aplicación que no presentan grandes variaciones según el programa de estudios.
    El desglose de las calificaciones por género puede ayudar a identificar las brechas en la educación según el género.
    Basado en Foley, E. et al., Beyond Test Scores: Leading Indicators for Education (Annenberg Institute for School Reform, Brown
    University); disponible enhttp://annenberginstitute.org/pdf/LeadingIndicators.pdf, y Popham, J. W. (1999), “Why Standardized
    Tests Don’t Measure Educational Quality,” Educational Leadership: Using Standards and Assessments, Vol. 53, No. 6, marzo;
    disponible en http://www.ascd.org/publications/educational-leadership/mar99/vol56/num06/Why-Standardized-Tests-Don’t-
    Measure-Educational-Quality.aspx.",
    other: "GCIF actualmente analiza la utilización de desempeño en pruebas estandarizadas como indicador futuro.",
    subtheme_id: 43,
  },
  {
    title: "Porcentaje de estudiantes con un nivel satisfactorio en prubas estandarizadas de matemática",
    description: "Porcentaje de estudiantes de grado x de educación primaria con un nivel satisfactorio en pruebas estandarizadas
    nacionales (o locales) de matemática, desglosado por género.",
    methodology:"La cantidad de estudiantes de un grado determinado que recibieron una calificación satisfactoria en una prueba
    estandarizada de matemática se divide por el número total de estudiantes de dicho grado que recibió una calificación
    por la prueba. Esto se realiza para la totalidad de los estudiantes, los estudiantes de sexo masculino y los estudiantes de
    sexo femenino. No existen valores de referencia internacionales específicos para este indicador porque los resultados
    solo pueden considerarse de forma relativa con respecto a otros estudiantes que rindieron la misma prueba (es decir,
    una calificación superior en un país puede simplemente indicar que la prueba en cuestión era más fácil). En este sentido,
    se prefieren las pruebas estandarizadas nacionales a las pruebas estaduales o provinciales, mientras que las pruebas
    estandarizadas locales solo deberían tomarse como último recurso y, en tal caso, hacerlo con precaución.",
    positive: "Valor similar al de ciudades
    ejemplares del país (cuyos
    estudiantes rindieron la misma
    prueba)",
    negative: "Valor inferior al de
    ciudades pares del país
    (cuyos estudiantes rindieron la
    misma prueba)",
    medium: "Valor similar al de
    ciudades pares del país
    (cuyos estudiantes rindieron la
    misma prueba)",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Actualmente, las calificaciones de pruebas estandarizadas constituyen uno de los indicadores más utilizados en
    educación. Sin embargo, se debe tener cuidado al emplear este valor como indicador de la calidad de la educación
    proporcionada por las escuelas. En realidad, las pruebas estandarizadas miden tres aspectos: lo que los estudiantes
    aprenden en la escuela, lo que los estudiantes aprenden fuera de la escuela, y las habilidades intelectuales naturales
    de los estudiantes. Las escuelas solo tienen control sobre uno de estos tres factores importantes del desempeño de los
    estudiantes en las pruebas estandarizadas. Puede ser mejor considerar el desempeño en la prueba estandarizada como
    un indicador general de logro académico (es decir, de lo que el estudiante sabe) atribuible a diversos factores, en lugar
    de como un indicador de calidad de una institución educativa particular. Además, dado que solo es posible examinar una
    pequeña porción del conocimiento total del estudiante, gran parte del desempeño de los estudiantes en las pruebas en
    relación con la influencia que las escuelas pueden tener depende de la correspondencia entre el programa de estudios
    de cada escuela con las preguntas específicas que se formulen en la prueba. Uno de los beneficios de hacer hincapié en
    las pruebas de matemática y lectura en contraposición con las pruebas de otras materias es que estas son capacidades
    básicas y de amplia aplicación que no presentan grandes variaciones según el programa de estudios.
    El desglose de las calificaciones por género puede ayudar a identificar las brechas en la educación según el género.
    Basado en Foley, E. et al., Beyond Test Scores: Leading Indicators for Education (Annenberg Institute for School Reform, Brown
    University); disponible enhttp://annenberginstitute.org/pdf/LeadingIndicators.pdf, y Popham, J. W. (1999), “Why Standardized
    Tests Don’t Measure Educational Quality,” Educational Leadership: Using Standards and Assessments, Vol. 53, No. 6, marzo;

    disponible en http://www.ascd.org/publications/educational-leadership/mar99/vol56/num06/Why-Standardized-Tests-Don’t-
    Measure-Educational-Quality.aspx.",
    other: "GCIF actualmente analiza la utilización de desempeño en pruebas estandarizadas como indicador futuro.",
    subtheme_id: 43,
  },
  {
    title: "Relacion estudiantes/docentes",
    description: "El número de estudiantes matriculados en la escuela primaria (numerador) se divide por el número equivalente de
    docentes regulares de escuela primaria de tiempo completo (denominador), expresada como una razón (ratio).
    La escuela primaria hace referencia a la escuela de enseñanza básica, generalmente para niños de entre 6 y 12 años de
    edad o de 1o grado a 5o grado, aunque en algunos sistemas educativos puede haber también un 6o grado.",
    methodology:"La información sobre la cantidad anual equivalente de docentes regulares de escuela primaria de tiempo completo
    (educación básica) y la cantidad de estudiantes matriculados en escuelas primarias (educación básica) se obtiene del
    sistema de educación pública local o del ministerio de educación.
    Si las geografías de los distritos escolares y la ciudad son diferentes, se deberá utilizar el mejor criterio posible para
    relacionar los datos sobre estudiantes y docentes con la cuestión de los límites de la ciudad.
    La matrícula de un estudiante de tiempo parcial debería considerarse como una matrícula de tiempo completo. En otras
    palabras, un estudiante que asiste a la escuela medio día puede contarse como un estudiante de día completo. Si una ciudad
    elige registrar las matrículas equivalentes de tiempo completo (FTE, por sus siglas en inglés), en las que dos estudiantes de
    medio día se consideran equivalentes a una matrícula de estudiante de tiempo completo, se deberá dejar constancia de ello.
    La cantidad de docentes regulares y otro personal educativo (por ejemplo, auxiliares docentes, consejeros escolares) no
    debe incluir administradores o personal no docente. No se debe incluir a docentes y personal de guardería o educación
    preescolar. Se debe dividir por 5 la cantidad de días que trabaja cada docente. Por ejemplo, si se conoce esta información,
    un docente que trabaja un día por semana debe contabilizarse como 0,2 docentes, uno que trabaja 3 días por semana
    debe contabilizarse como 0,6 docentes.
    Luego, el número de estudiantes debe dividirse por el número de docentes y el resultado debe expresarse como una razón.",
    positive: "< 15:1",
    negative: "> 25:1",
    medium: "Entre 15:1 y 25:1",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La razón estudiantes-docentes es un indicador que señala si la disponibilidad de docentes y la fortaleza y calidad del
    sistema educativo resultan adecuadas.
    Restringir la medida a razones de escuelas primarias simplificará la recolección de datos y la preparación de informes.
    La definición propuesta no incluye establecimientos educativos privados, los cuales pueden ser importantes en algunas
    ciudades.
    Sin embargo, a nivel nacional, incluir los datos de sectores educativos públicos y privados en el mismo indicador no tiene
    efecto apreciable alguno en la razón estudiantes-docentes.
    La proporción alumnos-maestro refleja la carga de trabajo del docente y la disponibilidad del maestro para con sus
    alumnos. Cuanto más baja es la proporción alumnos-maestro ratio estudiantes-docentes, mayor es la disponibilidad
    del maestro para ayudar a sus alumnos. La proporción alumnos-maestro tiene implicancias no solo para el costo de la
    educación, sino también para su calidad. Los mayores logros educativos se correlacionan con una menor proporción
    alumnos-maestro.
    Basado en la descripción del indicador de GCIF “Student/teacher ratio”.",
    other: "GCIF, FCM, Centro Internacional de Estadísticas de Educación, Organización de las Naciones Unidas para la Educación, la
    Ciencia y la Cultura (Unesco), Montreal, Toronto, Vancouver, Bogotá.",
    subtheme_id: 43,
  },
  {
    title: "Porcentaje de la población de 3 a 5 años de edad que recibe servicios integrales de desarrollo infantil temprano",
    description: "Porcentaje de la población de entre 3 y 5 años de edad que recibe servicios integrales de desarrollo de la primera infancia.",
    methodology:"La cantidad de niños de entre 3 y 5 años de edad que recibe servicios integrales de desarrollo de la primera infancia se
    divide por la población total de niños de entre 3 y 5 años.
    Los programas de educación preescolar y guardería de la primera infancia se caracterizan por contar con una gran cantidad
    de modalidades y dependencias o estructuras de gestión (formal o no formal). Con respecto al sector estadual, existe una
    amplia gama de programas dirigidos por los ministerios de salud, trabajo, bienestar social, familia y educación, o por
    organismos responsables de la política de educación de la primera infancia. Muchas otras iniciativas relacionadas con esta
    etapa educativa son administradas por empresas privadas, instituciones religiosas, organizaciones no gubernamentales
    y agencias de cooperación internacional.
    Las leyes sobre educación de la primera infancia varían de país a país. Para un resumen de estas leyes y de los planes de
    acción por país de América Latina, véanse las páginas 33 y 93–95, respectivamente, del informe de la Unesco (2010),
    Atención y educación de la primera infancia, informe regional: América Latina y el Caribe (disponible en http://portal.unesco.
    org/geography/es/ev.php-URL_ID=13512&URL_DO=DO_TOPIC&URL_SECTION=201.html).",
    positive: "> 80%",
    negative: "< 60%",
    medium: "60%–80%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La atención física y emocional en los primeros años de vida tiene efectos decisivos y de largo plazo en el desarrollo
    de los niños y de su capacidad de aprender y manejar sus emociones. Los niños que crecen en entornos con riesgo
    de malnutrición, abuso, maltrato, violencia, estrés y falta de estimulación se ven afectados, en consecuencia, por
    condiciones que tienen un impacto negativo sobre su capacidad de aprender, y por ende sobre su capacidad de lograr
    buenos resultados en el ámbito escolar. Los niños necesitan habilidades sociales, emocionales e intelectuales más
    complejas, que son importantes para su desarrollo e inserción íntegra en la sociedad.
    Las políticas y los marcos legales de la mayor parte de los países de la región reflejan claramente que se comprenden la
    importancia del componente educativo durante la primera infancia y la creencia de que el aprendizaje comienza en el
    nacimiento, y reconocen al mismo tiempo la importancia del efecto preventivo y compensatorio de las dificultades en el
    aprendizaje y el desarrollo y de las desventajas educativas y sociales. La educación inicial, preescolar o en guarderías
    comprende el período de atención y educación de los niños menores de seis años que se brinda fuera del contexto
    familiar. Esto incluye tipos de atención y educación amplios que abordan las necesidades de los niños desde sus primeras
    semanas de vida hasta su ingreso a la escuela primaria.
    Según la Unesco, en 2007 la tasa bruta regional de escolarización de los niños de 3 a 5 años de edad en América Latina
    fue del 65% (valor de referencia amarillo) y del 80,9% en América del Norte y Europa (valor de referencia verde). (Unesco,
    Atención y educación de la primera infancia, informe regional: América Latina y el Caribe, 2010)..",
    other: "Digest of Education Statistics (National Center for Education Statistics, Estados Unidos). TransMonEE utiliza datos sobre
    niños que reciben cuidados en guarderías (relación bruta, porcentaje de niños de entre 0 y 2 años de edad) y educación
    preescolar (tasas netas, porcentaje de la población de entre 3 y 6 años de edad) para países de Europa del Este.",
    subtheme_id: 44,
  },
  {
    title: "Porcentaje de la población de entre 6 y 11 años de edad matrículada en la escuela",
    description: "Porcentaje de la población de entre 6 y 11 años de edad que está matriculada en la escuela.",
    methodology:"La cantidad de niños de entre 6 y 11 años de edad matriculados en la escuela se divide por la población total de niños de
    entre 6 y 11 años de edad.
    Es importante que la población en el numerador se refiera a la misma población que en el denominador (es decir, el
    numerador hace referencia a niños de entre 6 y 11 años de edad que viven en el municipio y están matriculados en la
    escuela, mientras que el denominador hace referencia a todos los niños de entre 6 y 11 años de edad que viven en el
    municipio). Así, el valor de este indicador nunca debe superar el 100%. Se debe dar cuenta de cualquier apartamiento de
    esta definición puesto que tiene implicaciones críticas para la interpretación de los datos.",
    positive: "> 98%",
    negative: "< 95%",
    medium: "95%–98%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El beneficio de utilizar este indicador es que muestra el porcentaje de niños de 6 a 11 años de edad que están matriculados
    en la escuela, es decir, revela el porcentaje de niños escolarizados a una edad en la que deben estar en la escuela. Por
    otra parte, dividir la cantidad de estudiantes de cualquier edad que están matriculados en la escuela primaria por la
    población de niños de entre 6 y 11 años de edad puede resultar confuso ya que, por ejemplo, el porcentaje resultante
    podría ser de 100% (o más), cuando es posible que no todos los niños de entre 6 y 11 años de edad estén matriculados
    en la escuela (o incluso que ninguno lo esté). Este es un problema típico en lugares en los que los niños no asisten a la
    escuela regularmente a lo largo de su infancia y, en consecuencia, hay estudiantes de mayor edad y adultos que ocupan
    lugares en la escuela primaria, mientras que los niños en edad escolar aún no lo hacen.",
    other: "GCIF utiliza el porcentaje de la población en edad escolar que está matriculada en la escuela. El Informe de Competitividad
    Global (Foro Económico Mundial) utiliza la tasa neta de matriculación a la educación primaria.",
    subtheme_id: 44,
  },
  {
    title: "Porcentaje de la población de entre 12 y 15 años de edad matrículada en la escuela",
    description: "Porcentaje de la población de entre 12 y 15 años de edad matriculada en la escuela.",
    methodology:"La cantidad de niños de entre 12 y 15 años de edad matriculados en la escuela se divide por la población total de niños
    de entre 12 y 15 años de edad.
    Es importante que la población en el numerador se refiera a la misma población que en el denominador (es decir, el
    numerador hace referencia a niños de entre 12 y 15 años de edad que viven en el municipio y están matriculados en la
    escuela, mientras que el denominador hace referencia a todos los niños de entre 12 y 15 años de edad que viven en el
    municipio). Así, el valor de este indicador nunca debe superar el 100%. Se debe dar cuenta de cualquier apartamiento de
    esta definición puesto que tiene implicaciones críticas para la interpretación de los datos.",
    positive: "> 98%",
    negative: "< 95%",
    medium: "95%–98%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El beneficio de utilizar este indicador es que revela precisamente qué porcentaje de niños de 12 a 15 años de edad está
    matriculado en la escuela. Los valores altos para indicadores que dividen la cantidad de estudiantes de cualquier edad en
    un nivel particular de escolarización por la población que debería estar en ese nivel a menudo ocultan problemas de flujo.",
    other: "GCIF utiliza el “percentage of school-aged population enrolled in school”. El Informe de Competitividad Global (Foro
    Económico Mundial) utiliza la “net secondary education enrollment rate”.",
    subtheme_id: 44,
  },
  {
    title: "Porcentaje de la población de entre 16 y 18 años de edad matrículada en la escuela",
    description: "Porcentaje de la población de entre 16 y 18 años de edad matriculada en la escuela",
    methodology:"La cantidad de niños de entre 16 y 18 años de edad matriculados en la escuela se divide por la población total de niños
    de entre 16 y 18 años de edad.
    Es importante que la población en el numerador se refiera a la misma población que en el denominador (es decir, el
    numerador hace referencia a jóvenes de entre 16 y 18 años de edad que viven en el municipio y están matriculados en la
    escuela, mientras que el denominador hace referencia a todos los jóvenes de entre 16 y 18 años de edad que viven en el
    municipio). Así, el valor de este indicador nunca debe superar el 100%. Se debe dar cuenta de cualquier apartamiento de
    esta definición puesto que tiene implicaciones críticas para la interpretación de los datos.
    Los datos sobre inscripción escolar son generalmente registrados por el ministerio de educación o se obtienen de
    encuestas y censos. Si los datos administrativos no están disponibles, pueden utilizarse los datos de encuestas en
    hogares, aunque estas generalmente miden la asistencia según lo informado por los propios estudiantes en lugar de las
    inscripciones registradas por las escuelas. Entre las encuestas internacionales, las Encuestas de Indicadores Múltiples
    por Conglomerados y las Demographic and Health Surveys (y también, a veces, los Estudios de Medición de Estándares de
    Vida y Core Welfare Indicators Questionnaire Surveys en África) proporcionan datos sobre asistencia escolar.",
    positive: "> 80%",
    negative: "< 60%",
    medium: "60%–80%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El beneficio de utilizar este indicador es que revela precisamente qué porcentaje de jóvenes de 16 a 18 años de edad está
    matriculado en la escuela.",
    other: "El Sociómetro del BID utiliza el porcentaje de la población de entre 16 y 18 años de edad que asiste a la escuela secundaria.
    El Banco Mundial emplea el porcentaje de inscripción neta a la escuela secundaria (relación entre las personas en edad
    de asistir a la escuela secundaria que están matriculadas en dicho nivel educativo y la población total en edad de asistir
    a la escuela secundaria). GCIF utiliza “porcentaje de la población en edad escolar que está matriculada en la escuela”. El
    Informe de Competitividad Global (Foro Económico Mundial) utiliza la tasa neta de inscripción a la educación primaria.",
    subtheme_id: 44,
  },
  {
    title: "Cupos universitarios por cada 100.000 personas",
    description: "Cantidad de cupos universitarios cada 100.000 habitantes.",
    methodology:"Este indicador se calcula utilizando la siguiente fórmula:
    (Número total de cupos en instituciones de educación superior en la ciudad)/(Población de la ciudad/100.000)",
    positive: "> 5.000",
    negative: "< 2.500",
    medium: "2.500–5.000",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Este es un indicador de la capacidad de la ciudad de satisfacer las necesidades de educación superior de su población.
    Es más probable que las personas estudien una carrera universitaria si pueden asistir a universidades dentro de sus
    propias ciudades.",
    other: "GCIF utiliza la cantidad de títulos de educación superior cada 100.000 habitantes. El Banco Mundial utiliza el porcentaje
    bruto de inscripción a instituciones terciarias (inscripción total en educación terciaria independientemente de la edad,
    expresada como un porcentaje de la población total del grupo etario de cinco años que sigue a la edad en que se termina
    la escuela secundaria).",
    subtheme_id: 45,
  },
  {
    title: "Tasa de homicidios (por cada 100.000 habitantes)",
    description: "Número anual de homicidios por cada 100.000 habitantes",
    methodology: "Quien recolecta los datos debe de anotar si las estadísticas utilizadas incluyen o no los homicidios no intencionales. Los
    homicidios intencionales abarcan todas aquellas muertes deliberadamente causadas por una persona a otra, incluidos
    los infanticidios. Los homicidios no intencionales son aquellas muertes causadas por una persona a otra de forma no
    deliberada. Esto incluye el homicidio involuntario, pero excluye los accidentes de tránsito que provocan la muerte de una
    persona. Esta definición es la que utiliza la División de Estadísticas de las Naciones Unidas.
    El BID define los “homicidios” como las lesiones intencionales que ocasiona una persona a otra y le provocan la muerte.
    Los datos pueden obtenerse de la policía o de otras autoridades de aplicación de la ley. También puede verificarse la
    información con expertos de seguridad y ONG de derechos humanos. La policía no siempre registra los homicidios con
    precisión. En particular, los homicidios ocurridos en el hogar a veces se denuncian como suicidios o accidentes.
    Basado en la descripción del indicador de GCIF: “Number of Homicides per 100,000 Population” ",
    positive: "< 10",
    negative: "> 25",
    medium: "10-25",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los índices delictivos proporcionan información útil sobre el nivel de seguridad en una ciudad, aunque pueden ser
    difíciles de comparar debido a diferencias entre las definiciones de homicidio empleadas en los distintos países, o incluso
    dentro del mismo país, y también debido a que puede haber una diferencia entre las cifras oficiales y la realidad. En este
    sentido, la tasa de homicidios es uno de los mejores indicadores de seguridad porque es más probable que se denuncien
    los homicidios que otros delitos, dado que involucra la muerte de una persona (aunque no siempre se denuncia la muerte
    como un homicidio).
    Los homicidios, así como otros delitos violentos, tienen un impacto negativo muy significativo sobre el desarrollo
    sostenible. El fenómeno del delito compromete la dignidad humana, crea un clima de temor y afecta la calidad de vida.
    El indicador también puede utilizarse como medida para la adhesión al estado de derecho, un componente de la buena
    gobernabilidad.
    Basado en Naciones Unidas (2007), “Indicators of Sustainable Development: Guidelines and Methodologies,” p. 51.",
    other: "UN-Habitat incluye homicidio intencional y no intencional; la Oficina de las Naciones Unidas contra la Droga y el Delito
    (UNODC) utiliza la cantidad de homicidios intencionales por cada 100.000 habitantes (para países y la ciudad más
    grande del país), cifra que obtiene de los Estudios de las Naciones Unidas sobre Tendencias Delictivas y Funcionamiento
    de los Sistemas de Justicia Penal, la OMS, la OPS, Eurostat, Interpol, las oficinas nacionales de estadísticas y la policía
    nacional. El Banco Mundial utiliza el número de homicidios intencionales (por cada 100.000 personas) a nivel país.
    Los homicidios intencionales (por cada 100.000 habitantes) son también un indicador esencial de la Comisión de las
    Naciones Unidas sobre el Desarrollo Sostenible.",
    subtheme_id: 46,
  },
  {
    title: "Porcentaje de mujeres que han sufrido violencia fisica de parte de una pareja o ex pareja en los ultimos 12 meses",
    description: "Cantidad de mujeres de entre 15 y 49 años de edad que alguna vez han tenido pareja y han sufrido violencia física de
    parte de su pareja actual o ex pareja en los últimos 12 meses/Cantidad total de mujeres de entre 15 y 49 años de edad que
    alguna vez ha tenido pareja, expresada como porcentaje.",
    methodology: "Esta información se recolecta a través de encuestas, no de informes policiales.
    Se entiende por parejas a los cónyuges, novios y novias actuales o pasados.
    La violencia física se define como el uso intencional de fuerza física con el potencial de causar la muerte, discapacidades,
    lesiones o daños. La violencia física incluye, entre otras cosas, arañar, empujar, arrojar cosas, tomar fuertemente alguna
    parte del cuerpo, morder, asfixiar, sacudir, dar cachetadas, golpear, quemar, utilizar armas, y utilizar ataduras o la fuerza,
    el cuerpo o el tamaño propio contra otra persona. La violencia sexual y las amenazas están excluidas de esta categoría.
    Típicamente se define “una mujer que alguna vez ha tenido pareja” como una mujer alguna vez casada, una mujer que ha
    cohabitado con un hombre alguna vez, o que alguna vez ha tenido una pareja sexual regular.
    Basado en la definición de violencia física de los Centros para el Control y la Prevención de Enfermedades en “Intimate
    Partner Violence: Definitions” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/definitions.
    html), y OMS, Estudio multipaís de la OMS sobre salud de la mujer y violencia doméstica contra la mujer (disponible en http://
    www.who.int/gender/violence/who_multicountry_study/en/index.html).",
    positive: "< 6%",
    negative: "> 9%",
    medium: "6%–9%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En Estados Unidos los costos de las violaciones, el ataque físico y el acoso por parte de la pareja superan los
    US$5.800 millones cada año, de los cuales cerca de US$4.100 millones corresponden a la atención directa de la
    salud mental y médica. Los costos totales de la violencia de pareja también incluyen cerca de US$900 millones en
    productividad perdida en razón del trabajo remunerado y tareas domésticas para las víctimas de violencia de pareja
    no fatal, y US$9000 millones en salarios de por vida para las víctimas de homicidios por violencia de pareja. La parte
    más grande de los costos surge de la victimización de los ataques físicos, dado que ese tipo de violencia de pareja es la
    más frecuente. El componente más importante de los costos relacionados con la violencia de pareja es el de la atención
    médica, que representa más de dos tercios de los costos totales.
    Basado en el Departamento de Salud y Servicios Humanos, Centros para el Control y la Prevención de Enfermedades,
    National Center for Injury Prevention and Control (2003), Costs of Intimate Partner Violence Against Women in the United
    States, p. 2.
    En Estados Unidos 1 de cada 4 mujeres (24,3%) y 1 de cada 7 hombres (13,8%) de 18 años o más han sido víctimas de
    violencia física severa por parte de sus parejas a lo largo de sus vidas (Black et al., 2011).
    Basado en la definición de violencia física del Centro para el Control y la Prevención de Enfermedades en “Intimate
    Partner Violence: Consequences” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/
    consequences.html).
    Las estadísticas de UN Mujeres indican que la frecuencia de la violencia física de pareja es significativamente mayor
    en los países latinoamericanos que en Estados Unidos (véase http://www.unifem.org/attachments/gender_issues/violence_
    against_women/vaw-pevalence-matrix-2011-es.pdf).
    La violencia de pareja está asociada con numerosos efectos físicos, reproductivos, psicológicos y sociales negativos, así
    como conductas de salud negativas.
    Basado en la definición de violencia física del Centro para el Control y la Prevención de Enfermedades en “Intimate Partner
    Violence: Consequences” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/consequences.
    html).",
    other: "La Entidad de las Naciones Unidas para la Igualdad de Género y el Empoderamiento de las Mujeres (UN Mujeres); Centros
    para el Control y la Prevención de Enfermedades.",
    subtheme_id: 46,
  },
  {
    title: "Porcentaje de mujeres que han sufrido violencia fisica de parte de una pareja o ex pareja alguna vez en su vida",
    description: "Cantidad de mujeres de entre 15 y 49 años de edad que alguna vez han tenido pareja y alguna vez sufrieron violencia
    física de parte una pareja actual o ex pareja/Cantidad total de mujeres de entre 15 y 49 años de edad que alguna vez han
    tenido pareja, expresada como porcentaje.",
    methodology: "Esta información se recolecta a través de encuestas, no de informes policiales.
    Se entiende por parejas a los cónyuges, novios y novias actuales o pasados.
    La violencia física se define como el uso intencional de fuerza física con el potencial de causar la muerte, discapacidades,
    lesiones o daños. La violencia física incluye, entre otras cosas, arañar, empujar, arrojar cosas, tomar fuertemente alguna
    parte del cuerpo, morder, asfixiar, sacudir, dar cachetadas, golpear, quemar, utilizar armas, y utilizar ataduras o la fuerza,
    el cuerpo o el tamaño propio contra otra persona. La violencia sexual y las amenazas están excluidas de esta categoría.
    Típicamente se define “una mujer que alguna vez ha tenido pareja” como una mujer que alguna vez ha estado casada, una
    mujer que ha cohabitado con un hombre, o que ha tenido una pareja sexual regular.
    Basado en la definición de violencia física de los Centros para el Control de Enfermedades en “Intimate Partner Violence:
    Definitions” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/definitions.html), y Organización
    Mundial de la Salud, Estudio multipaís de la OMS sobre salud de la mujer y violencia doméstica contra la mujer (disponible en
    http://www.who.int/gender/violence/who_multicountry_study/en/index.html).",
    positive: "< 14%",
    negative: "> 25%",
    medium: "14%–25%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En Estados Unidos los costos de las violaciones, ataque físico y acoso por parte de la pareja superan los US$5.800millones
    cada año, de los cuales cerca de US$4.100 millones corresponden a atención directa de la salud mental y médica. Los
    costos totales de la violencia de pareja también incluyen cerca de 900 millones en productividad perdida en razón
    de trabajo remunerado y tareas domésticas para las víctimas de violencia de pareja no fatal, y US$900 millones en
    salarios de por vida para las víctimas de homicidios por violencia de pareja. La parte más grande de los costos surge de
    la victimización de los ataques físicos, dado que ese tipo de violencia de pareja es la más frecuente. El componente más
    importante de los costos relacionados con la violencia de pareja es el de la atención médica, que representa más de dos
    tercios de los costos totales.
    Basado en el Departamento de Salud y Servicios Humanos, Centros para el Control y la Prevención de Enfermedades,
    National Center for Injury Prevention and Control (2003), Costs of Intimate Partner Violence Against Women in the United
    States, p. 2.
    En Estados Unidos, 1 de cada 4 mujeres (24,3%) y 1 de cada 7 hombres (13,8%) de 18 años o más han sido víctimas de
    violencia física severa por parte de sus parejas a lo largo de sus vidas (Black et al., 2011).
    Basado en la definición de violencia física del Centro para el Control y la Prevención de Enfermedades en “Intimate
    Partner Violence: Consequences” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/
    consequences.html).
    Las estadísticas de UN Mujeres indican que la frecuencia de la violencia física de pareja es significativamente mayor en
    países latinoamericanos que en Estados Unidos (véase http://www.unifem.org/attachments/gender_issues/violence_against_
    women/vaw-pevalence-matrix-2011-es.pdf).
    La violencia de pareja está asociada con numerosos efectos físicos, reproductivos, psicológicos y sociales negativos, así
    como conductas de salud negativas.
    Basado en la definición de violencia física del Centro para el Control y la Prevención de Enfermedades en “Intimate Partner
    Violence: Consequences” (disponible en http://www.cdc.gov/ViolencePrevention/intimatepartnerviolence/consequences.
    html).",
    other: "La Entidad de las Naciones Unidas para la Igualdad de Género y el Empoderamiento de las Mujeres (UN Mujeres); Centros
    para el Control y la Prevención de Enfermedades.",
    subtheme_id: 46,
  },
  {
    title: "Robos por cada 100.000 habitantes",
    description: "Cantidad anual de robos (robos con violencia o amenaza de violencia) por cada 100.000 habitantes.",
    methodology: "“Robo” significa la privación del bien de una persona por parte de otra que supera la resistencia de la primera mediante la
    fuerza o amenaza de fuerza. Siempre que resulte posible, la categoría “robo” debe incluir los robos (de carteras o bolsos)
    y robos con violencia, aunque debe excluir la ratería y la extorsión.
    Las encuestas sobre victimización proporcionan datos más precisos sobre las tasas de robo que los datos de la policía,
    dado que los robos no siempre se denuncian.
    Basado en la definición de robo del Repositorio de Datos del Observatorio de Seguridad Ciudadana de la Organización
    de los Estados Americanos (OEA) (disponible en http://www.oas.org/dsp/observatorio/database/indicatorsdetails.
    aspx?lang=en&indicator=193).",
    positive: "< 300",
    negative: "> 1.000",
    medium: "300–1.000",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los delitos violentos tienen un impacto negativo considerable sobre el desarrollo sostenible. El fenómeno del delito
    compromete la dignidad humana, crea un clima de temor y afecta la calidad de vida. El indicador también puede utilizarse
    como medida para la adhesión al estado de derecho, un componente de la buena gobernabilidad.
    Basado en Naciones Unidas (2007), “Indicators of Sustainable Development: Guidelines and Methodologies”, p. 51.",
    other: "El Centro de Estudios en Seguridad Ciudadana de la Universidad de Chile sugiere el uso de este indicador en “Uso de
    indicadores para evaluar el funcionamiento policial”. La UNODC utiliza el indicador de robos por cada 100.000 habitantes
    a nivel nacional, considerando la cantidad de robos denunciados a la policía. Los Uniform Crime Reports del FBI, que se
    basan en datos provistos por autoridades de aplicación de la ley, incluyen robos (cantidad de delitos conocidos por
    cada 100.000 habitantes), por tamaño de la población en ciudades.",
    subtheme_id: 46,
  },
  {
    title: "Hurtos por cada 100.000 habitantes",
    description: "Cantidad de hurtos (robos no violentos) por cada 100.000 habitantes.",
    methodology: "El hurto es la apropiación ilegal, el despojo, el desprendimiento o la privación de un bien en posesión real o virtual de
    una persona por parte de otra. Ejemplos de esta práctica son los hurtos de partes de motores de automóviles o bicicletas,
    los hurtos en tiendas, la ratería, o el robo de un bien o artículo que se efectúa sin fuerza o violencia o por defraudación.
    Están incluidos los intentos de hurto, pero se excluyen la malversación de fondos, las estafas, las falsificaciones, la
    defraudación mediante cheques, etc.
    Las encuestas sobre victimización proporcionan datos más precisos sobre las tasas de hurto que los datos de la policía,
    dado que los hurtos no siempre se denuncian.
    Basado en la definición de larceny-theft de los Uniform Crime Reports del FBI (disponible en http://www.fbi.gov/about-us/
    cjis/ucr/crime-in-the-u.s/2011/crime-in-the-u.s.-2011/property-crime/larceny-theft).",
    positive: "< 3.000",
    negative: "> 5.000",
    medium: "3.000–5.000",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los hurtos pueden tener un impacto negativo considerable sobre el desarrollo sostenible. El fenómeno del delito
    compromete la dignidad humana, crea un clima de temor y afecta la calidad de vida. El indicador también puede utilizarse
    como medida para la adhesión al estado de derecho, un componente de la buena gobernabilidad.
    Basado en Naciones Unidas (2007), “Indicators of Sustainable Development: Guidelines and Methodologies”, p. 51.",
    other: "Los Uniform Crime Reports del FBI, que se basan en datos provistos por autoridades de aplicación de la ley, incluyen hurtos
    (cantidad de delitos conocidos por cada 100.000 habitantes), por tamaño de la población en ciudades.",
    subtheme_id: 46,
  },
  {
    title: "Porcentaje de ciudadanos que se sienten seguros",
    description: "Porcentaje de ciudadanos que responden que se sienten seguros o muy seguros.",
    methodology: "Este indicador se obtiene a través de encuestas.",
    positive: "< 60%",
    negative: "> 60%",
    medium: "30%–60%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La percepción de inseguridad puede obstaculizar la inversión y crear un clima de temor que afecta la calidad de vida
    y hace a la población más vulnerable a las amenazas y la corrupción. El fenómeno del delito compromete la dignidad
    humana, crea un clima de temor y afecta la calidad de vida. El indicador también puede utilizarse como medida para la
    adhesión al estado de derecho, un componente de la buena gobernabilidad.
    Basado en Naciones Unidas (2007),“Indicators of Sustainable Development: Guidelines and Methodologies”, p. 51.",
    other: "Red Colombiana de Ciudades Cómo Vamos. En “Uso de indicadores para evaluar el funcionamiento policial”, el Centro de
    Estudios en Seguridad Ciudadana de la Universidad de Chile recomienda el uso del indicador “Porcentaje de la población
    que cree que será víctima de un delito en los próximos 12 meses”. Latinobarómetro pregunta “¿Cuán frecuentemente
    se preocupa usted de que pueda llegar a ser víctima de un delito con violencia?” GCIF está considerando utilizar la
    percepción de seguridad como indicador futuro.",
    subtheme_id: 47,
  },
  {
    title: "Porcentaje de la población que fue victima del crimen en los ultimos 12 meses",
    description: "El porcentaje de personas que responden “sí” a la pregunta “¿Ha sido víctima de un delito en los últimos 12 meses?”
    (Determinado a través de una encuesta.)",
    methodology: "El porcentaje de personas de 18 años de edad o más que responden afirmativamente cuando se les pregunta si fueron
    víctimas de algún delito en los últimos 12 meses, lo hayan denunciado o no.
    Estos datos se obtienen a través de encuestas y no de informes policiales, y dependen de la percepción del encuestado
    de qué se considera un delito y su conocimiento de las leyes aplicables.",
    positive: "< 10%",
    negative: "> 30%",
    medium: "10%–30%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Diferentes ciudades sufren más ciertos tipos de delitos que de otros. Este indicador proporciona una idea general del nivel
    de delito en cualquier ciudad y toma en cuenta delitos más pequeños así como delitos más severos que se capturan en
    indicadores más específicos como la tasa de homicidios. Es un indicador de percepción y, por ello, revela la experiencia
    y la sensación de inseguridad de los residentes de las ciudades.
    El fenómeno del delito compromete la dignidad humana, crea un clima de temor y afecta la calidad de vida. El indicador
    también puede utilizarse como medida para la adhesión al estado de derecho, un componente de la buena gobernabilidad.
    Basado en Naciones Unidas (2007), “Indicators of Sustainable Development: Guidelines and Methodologies,” p. 51.",
    other: "Observatorio Hemisférico de Seguridad de la OEA, alertamerica.org; Estudio Internacional sobre Víctimas de Delitos;
    Instituto Nacional de Justicia de Estados Unidos (National Crime Victimization Survey).",
    subtheme_id: 46,
  },
  {
    title: "Esprenza de vida al nacer",
    description: "La cantidad promedio de años que vivirá un grupo de personas nacidas en el mismo año, si se mantienen a lo largo de
    todas sus vidas las mismas condiciones de salud y vida existentes al momento del nacimiento.
    Basado en la definición de CIA Factbook y la Organización para la Cooperación y el Desarrollo Económicos (OCDE),
    también empleada por GCIF.",
    methodology: "La esperanza de vida al nacer se calcula utilizando una tabla de vida que toma en cuenta la población y la cantidad de
    muertes de personas de diferentes edades (diferentes años de nacimiento) en un año determinado.",
    positive: "> 74",
    negative: "< 70",
    medium: "70–74",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La esperanza de vida refleja el nivel de mortalidad general de una población. La esperanza de vida está íntimamente
    relacionada con las condiciones de salud, que constituyen una parte integral del desarrollo. La mortalidad es también una
    de las variables que determinan el tamaño de las poblaciones humanas y su potencial de crecimiento futuro.
    La esperanza de vida al nacer también es una medida de la calidad general de vida en un país y resume la tasa de
    mortalidad a todas las edades. También se la puede considerar como indicativa del potencial retorno sobre la inversión
    en capital humano y es necesaria para el cálculo de diversas medidas actuariales.
    Los años de vida también se consideran un fin por sí mismos.
    Basado en la descripción del indicador de GCIF “Average life expectancy”.",
    other: "GCIF; Banco Mundial; OMS; PNUD; OCDE; Informe de Competitividad Global (Foro Económico Mundial); CIA Factbook; la
    mayoría de las dependencias gubernamentales que se ocupan de la salud o las estadísticas poblacionales (por ejemplo,
    en Estados Unidos, la División de Censos y el Centro Nacional de Estadísticas de Salud – Centros de Prevención y Control
    de Enfermedades).",
    subtheme_id: 48,
  },
  {
    title: "Esprenza de vida al nacer de la población masculina",
    description: "Promedio de esperanza de vida al nacer de la población masculina de la ciudad.",
    methodology: "La esperanza de vida al nacer se calcula utilizando una tabla de vida que toma en cuenta la población y la cantidad de
    muertes de personas de diferentes edades (diferentes años de nacimiento) en un año determinado.",
    positive: "> 70",
    negative: "< 64",
    medium: "64-70",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La esperanza de vida refleja el nivel de mortalidad general de una población. La esperanza de vida está íntimamente
    relacionada con las condiciones de salud, que constituyen una parte integral del desarrollo. La mortalidad es también una
    de las variables que determinan el tamaño de las poblaciones humanas y su potencial de crecimiento futuro.
    La esperanza de vida al nacer también es una medida de la calidad general de vida en un país y resume la tasa de
    mortalidad a todas las edades. También se la puede considerar como indicativa del potencial retorno sobre la inversión
    en capital humano y es necesaria para el cálculo de diversas medidas actuariales.
    Los años de vida también se consideran un fin por sí mismos.
    Desglosar la esperanza de vida por sexo ayuda a señalar la existencia de problemas de salud específicos según el género
    y puede ayudar a identificar las brechas entre géneros en la atención médica.
    Basado en la descripción del indicador de GCIF “Average life expectancy”.",
    other: "La mayoría de las dependencias gubernamentales que se ocupan de la salud o las estadísticas poblacionales (por ejemplo,
    en Estados Unidos, la División de Censos y el Centro Nacional de Estadísticas de Salud – Centros de Prevención y Control
    de Enfermedades); PNUD; OMS; Banco Mundial; OCDE; Libro de Hechos de la CIA.",
    subtheme_id: 48,
  },
  {
    title: "Esprenza de vida al nacer de la población femenina",
    description: "La esperanza de vida al nacer se calcula utilizando una tabla de vida que toma en cuenta la población y la cantidad de
    muertes de personas de diferentes edades (diferentes años de nacimiento) en un año determinado.",
    methodology: "La esperanza de vida al nacer se calcula utilizando una tabla de vida que toma en cuenta la población y la cantidad de
    muertes de personas de diferentes edades (diferentes años de nacimiento) en un año determinado.",
    positive: "> 76",
    negative: "< 70",
    medium: "70-76",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La esperanza de vida refleja el nivel de mortalidad general de una población. La esperanza de vida está íntimamente
    relacionada con las condiciones de salud, que constituyen una parte integral del desarrollo. La mortalidad es también una
    de las variables que determinan el tamaño de las poblaciones humanas y su potencial de crecimiento futuro.
    La esperanza de vida al nacer también es una medida de la calidad general de vida en un país y resume la tasa de
    mortalidad a todas las edades. También se la puede considerar como indicativa del potencial retorno sobre la inversión
    en capital humano y es necesaria para el cálculo de diversas medidas actuariales.
    Los años de vida también se consideran un fin por sí mismos.
    Desglosar la esperanza de vida por sexo ayuda a señalar la existencia de problemas de salud específicos según el género
    y puede ayudar a identificar las brechas entre géneros en la atención médica.
    Basado en la descripción del indicador de GCIF “Average life expectancy”.",
    other: "La mayoría de las dependencias gubernamentales que se ocupan de la salud o las estadísticas poblacionales (por ejemplo,
    en Estados Unidos, la División de Censos y el Centro Nacional de Estadísticas de Salud – Centros de Prevención y Control
    de Enfermedades); PNUD; OMS; Banco Mundial; OCDE; Libro de Hechos de la CIA.",
    subtheme_id: 48,
  },
  {
    title: "Tasa de mortalidad de niños menores de 5 años (cada 1.000 nacidos vivos)",
    description: "Probabilidad de que un niño nacido en un año específico muera antes de llegar a los 5 años de edad, expresado como tasa
    cada 1.000 nacidos vivos.",
    methodology: "La tasa de mortalidad de niños menores de 5 años no es, estrictamente, una tasa (es decir, la cantidad de muertes
    dividida por la población en riesgo durante un cierto período de tiempo), sino una probabilidad de muerte que se obtiene
    de una tabla de vida y se expresa como una tasa cada 1.000 nacidos vivos.
    Las tasas de mortalidad específicas para la edad entre los niños e infantes se calculan a partir de los datos de nacimiento
    y muerte que se obtienen de los bancos de datos de registros civiles, censos y/o encuestas de hogares. Las estimaciones
    que se basan en datos de encuestas de hogares se obtienen directamente (mediante la historia del nacimiento, como
    en las Encuestas Demográficas y de Salud) o indirectamente (método de Brass, como en las Encuestas de Indicadores
    Múltiples por Conglomerados, Unicef). Luego se suman los datos para los niños menores de 5 años y se expresan como
    una tasa cada 1.000 nacidos vivos. A nivel de la ciudad, la mejor fuente de datos es el sistema completo de registro civil,
    dado que registra por lo menos el 90% de los hechos relacionados con la vida de la población. Dichos sistemas no son
    comunes en los países en desarrollo, de modo que las estimaciones pueden obtenerse de modelos de encuestas o lograrse
    mediante la aplicación de técnicas de estimaciones directas e indirectas a los datos de registros, censos o encuestas.
    Basado en la descripción del indicador de GCIF “Under age five mortality per 1,000 live births”.",
    positive: "< 20",
    negative: "> 30",
    medium: "20–30",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La tasa de mortalidad de niños menores de 5 años es un indicador destacado del nivel de salud de un niño y del desarrollo
    general en las ciudades. La mortalidad infantil es un indicador del estado de una ciudad como un lugar saludable o
    no saludable para vivir. Asimismo, las tasas de mortalidad son algunos de los indicadores utilizados con mayor
    frecuencia para comparar los niveles de desarrollo socioeconómico entre países. Mejorar la tasa de mortalidad infantil
    es un componente vital de los Objetivos de Desarrollo del Milenio puesto que reducir la mortalidad infantil también se
    considera un fin en sí mismo.",
    other: "Ciudades: Belo Horizonte, Porto Alegre, São Paulo, Montreal, Toronto, Vancouver y Bogotá; GCIF; la mayoría de las
    dependencias gubernamentales que se ocupan de la salud o las estadísticas poblacionales (por ejemplo, en Estados
    Unidos, la División de Censos y el Centro Nacional de Estadísticas de Salud – Centros de Prevención y Control de
    Enfermedades); Unicef; PNUD; OMS; Banco Mundial.",
    subtheme_id: 49,
  },
  {
    title: "Medicos cada 100.000 habitantes",
    description: "La cantidad de médicos cuyo lugar de trabajo se encuentra en la ciudad, expresada como el número de médicos
    cada 100.000 habitantes de la ciudad.",
    methodology: "La cantidad de médicos se determina en una fecha acordada localmente. La cantidad de médicos se divide por el
    resultado de la población total de la ciudad dividida por 100.000. El resultado se expresa como el número de médicos
    cada 100.000 habitantes.
    Para este indicador, se consideran médicos a aquellos que se gradúan de cualquier institución educativa o facultad de
    medicina y cuyo lugar de trabajo se encuentra en la ciudad.
    A fin de considerar a los doctores con un trabajo de tiempo parcial en hospitales y consultorios, deben aplicase
    equivalentes de tiempo completo (FTE, por sus siglas en inglés). Las ciudades informan la cantidad de médicos en base a
    registros administrativos, como los de los médicos matriculados de la ciudad. La información también puede obtenerse
    de censos, estadísticas sobre la fuerza de trabajo u otras encuestas sobre ocupación.
    A medida que los sistemas se vuelven más avanzados, un buen sistema con la combinación justa de prestadores de nivel
    medio (licenciados en enfermería y asistentes médicos) y médicos, y un programa de prevención robusto con fácil acceso
    a cuidados primarios para pacientes ambulatorios puede necesitar menos camas en hospitales y menos médicos, y aun
    así estar capacitado para generar resultados de salud igualmente buenos o incluso mejores.
    Basado en la escripción del indicador de GCIF “Number of physicians per 100,000 population”.",
    positive: "> 2",
    negative: "< 2",
    medium: "0,75–2",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La disponibilidad de médicos es un indicador importante de la fortaleza del sistema de salud de una ciudad. Hay pruebas
    de que el número de médicos guarda una relación positiva con la cobertura de inmunización, la prestación de servicios
    de salud primarios y la supervivencia de bebés, niños y madres (OMS, Estadísticas Sanitarias Mundiales del año 2006).",
    other: "GCIF; OMS; PNUD (cada 10.000 personas); Banco Mundial (cada 1.000 personas); OCDE (cada 1.000 personas).",
    subtheme_id: 49,
  },
  {
    title: "Camas de hospital cada 100.000 habitantes",
    description: "La cantidad de camas en hospitales de la ciudad para pacientes internados, expresada como el número de camas de
    hospital cada 100.000 habitantes de la ciudad.",
    methodology: "Se determina el número total anual de camas en hospitales públicos y privados de la ciudad para pacientes internados.
    La población de la ciudad luego se divide por 100.000 y ese resultado se divide nuevamente por la cantidad de camas
    en hospitales públicos de la ciudad para pacientes internados. El resultado se expresa como el número de camas en
    hospitales para pacientes internados cada 100.000 habitantes de la ciudad. Las camas de hospital incluyen las camas
    para personas internadas y del área de maternidad. Además, esto comprende las camas en guardias que estén cerradas
    por motivos como falta de personal de salud, trabajos de construcción, etc. También incluye las camas para pacientes
    internados que requieren asistencia continua, incubadoras y cuidados especiales. Sin embargo, no incluye las camas en
    guarderías, las camas para pacientes antes de que reciban la anestesia, las camas para recuperación postoperatoria,
    las camas para familiares del paciente, las cunas para bebés nacidos sin complicaciones, ni las camas para personal del
    hospital. Las cunas y camillas de parto también están excluidas.
    A medida que los sistemas se vuelven más avanzados, un buen sistema con la combinación justa de prestadores de nivel
    medio (licenciados en enfermería y asistentes médicos) y médicos, y un programa de prevención robusto con fácil acceso
    a cuidados primarios para pacientes ambulatorios puede necesitar menos camas en hospitales y menos médicos, y aun
    así estar capacitado para generar resultados de salud igualmente buenos o incluso mejores.
    Basado en la descripción del indicador de GCIF “Cantidad de camas en hospitales para pacientes internados
    cada 100.000 habitantes” y en Urban Audit – Methodological Handbook, 2004.",
    positive: "> 100",
    negative: "< 50",
    medium: "50–100",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La cantidad de camas en hospitales para pacientes internados es uno de los pocos indicadores disponibles que monitorean
    el nivel de la prestación de servicios de salud. La prestación del servicio es una parte importante de los sistemas de salud,
    y la densidad de camas en hospitales es uno de los pocos indicadores que pueden obtenerse en todo el mundo (OMS,
    Estadísticas Sanitarias Mundiales del año 2006).",
    other: "GCIF; OMS; PNUD (cada 10.000 personas); Banco Mundial (cada 1.000 personas).",
    subtheme_id: 49,
  },
  {
    title: "Existencia de un proceso de planificación participativa",
    description: "Un proceso de planificación participativa se lleva a cabo en colaboración con las organizaciones de la comunidad y la
    participación ciudadana.",
    methodology: "Esta información debe verificarse a través de expertos en urbanismo y formadores de políticas urbanas involucrados en
    la planificación de una ciudad. Pueden provenir del departamento de planificación de la ciudad o del ministerio nacional
    responsable del desarrollo urbano. Cualquier cambio importante que haya ocurrido durante los últimos cinco años debe
    mencionarse y explicarse.",
    positive: "Esta información debe verificarse a través de expertos en urbanismo y formadores de políticas urbanas involucrados en
    la planificación de una ciudad. Pueden provenir del departamento de planificación de la ciudad o del ministerio nacional
    responsable del desarrollo urbano. Cualquier cambio importante que haya ocurrido durante los últimos cinco años debe
    mencionarse y explicarse.",
    negative: "La planificación no es
    completamente participativa:
    a) no existe un marco legal; b) no
    se consulta a los grupos de interés
    y, por lo tanto, c) no se recogen
    opiniones; d) no hay difusión;
    e) no hay información nueva para
    incorporar a los objetivos y las
    metas del plan.",
    medium: "La planificación no es
    completamente participativa:
    a) es parte del marco legal nacional
    aunque no parte del marco legal
    subnacional; b) no se consulta a
    todos los grupos de interés; las
    opiniones no se recogen de forma
    metódica; d) los resultados se
    difunden parcialmente; e) algunos
    resultados se incorporan a los
    objetivos y las metas del plan.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La participación ciudadana en el gobierno local es una parte importante de la democracia y la autodeterminación.
    También da lugar a una base de apoyo local fuerte para el gobierno, que puede monitorear de mejor forma las necesidades
    de los ciudadanos, mantener un control atento de las funciones, y representar los deseos de toda la ciudadanía.
    Basado en UN-Habitat (2004), Urban Indicators Guidelines, “Check-list 8: Citizens’ Participation,” p. 51.",
    other: "UN-Habitat utiliza un indicador similar (“Participación ciudadana”).",
    subtheme_id: 50,
  },
  {
    title: "Existencia de un presupuesto participativo y porcentaje del presupuesto que se denomina a través de la participacion de la sociedad civil",
    description: "La participación de la sociedad civil en la planificación del presupuesto municipal y el porcentaje del presupuesto que se
    determina a través de la participación de la sociedad civil.",
    methodology: "Esta información debe verificarse a través de expertos en urbanismo y formadores de políticas urbanas involucrados en
    la planificación de una ciudad. Pueden provenir del departamento de planificación de la ciudad o del ministerio nacional
    responsable del desarrollo urbano. Cualquier cambio importante que haya ocurrido durante los últimos cinco años debe
    mencionarse y explicarse.
    La preparación de un presupuesto participativo es un proceso democrático en el que los miembros de una comunidad
    deciden directamente cómo gastar una parte del presupuesto público. La mayoría de los ejemplos involucran a gobiernos
    de ciudades que han sometido a las asambleas ciudadanas las decisiones sobre presupuesto municipal, como las relativas
    a prioridades generales y la elección de nuevas inversiones. En otros casos, tanto estados como condados, escuelas,
    universidades, autoridades de las áreas de vivienda y coaliciones de grupos comunitarios han utilizado el recurso del
    presupuesto participativo para abrir las decisiones sobre el gasto público a la participación democrática.
    Los miembros de la comunidad toman decisiones sobre presupuesto a través de una serie anual de asambleas y reuniones
    locales. Existen numerosos modelos de presupuestos participativos, pero la mayoría sigue un proceso básico: diagnóstico,
    análisis, toma de decisiones, implementación y monitoreo.
    1. Los habitantes identifican las necesidades prioritarias locales, generan ideas para responder a estas necesidades y
    eligen representantes de presupuestos para cada comunidad.
    2. Estos representantes analizan las prioridades locales y desarrollan proyectos concretos para abordar las
    necesidades prioritarias, junto con expertos en la materia.
    3. Los habitantes votan a cuál de estos proyectos se otorgará financiamiento.
    4. El gobierno implementa los proyectos elegidos.
    5. Los habitantes monitorean la implementación de los proyectos del presupuesto.
    Por ejemplo, si los habitantes identifican la necesidad de espacios recreativos como prioridad, los representantes del
    presupuesto pueden desarrollar una propuesta para una nueva cancha de básquet. Los habitantes luego votan sobre esta
    y otras propuestas, y si aprueban la cancha de básquet, la ciudad financiará su construcción.
    En 1998 la ciudad brasileña de Porto Alegre comenzó el primer proceso de presupuesto participativo íntegro para el
    presupuesto municipal. Allí unas 50.000 personas participan año a año para decidir sobre un 20% del presupuesto de
    la ciudad. Desde 1989 el mecanismo de presupuesto participativo se ha extendido a más de 1.200 ciudades de América
    Latina, América del Norte, Asia, África y Europa. En Estados Unidos y Canadá, esto incluye procesos de presupuesto
    participativo en Toronto, Montreal, Guelph y Chicago.",
    positive: "La sociedad civil participa para
    determinar por lo menos un 10% del
    presupuesto total.",
    negative: "No hay presupuesto participativo.",
    medium: "La sociedad civil participa para
    determinar una porción igual o
    menor al 10% del presupuesto total.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Funcionarios electos, organizaciones comunitarias, académicos e instituciones internacionales como las Naciones
    Unidas y el Banco Mundial han declarado que los presupuestos participativos constituyen un modelo a seguir por los
    gobiernos democráticos. ¿Por qué?
    • Da voz y voto a los miembros de una comunidad
    Se escucha más a las personas comunes y corrientes, se les da la posibilidad de tomar decisiones reales.
    • Mejora las decisiones y las hace más equitativas
    Los habitantes locales conocen mejor lo que necesitan, y de esta manera el dinero del presupuesto se redistribuye
    a las comunidades con mayores necesidades.
    • Desarrolla ciudadanos activos y democráticos
    Los miembros de la comunidad, los empleados y los trabajadores aprenden acerca de la democracia ejerciéndola.
    Logran una mejor comprensión de asuntos políticos complejos y necesidades comunitarias.
    • Construye comunidades y fortalece organizaciones comunitarias
    Las personas logran conocer a sus vecinos y se sienten más conectados con su ciudad. Las organizaciones locales
    pasan menos tiempo haciendo lobby y más tiempo decidiendo ellos mismos sobre las políticas. Las asambleas
    presupuestarias conectan a los grupos y atraen a nuevos miembros.
    • Conecta a políticos y constituyentes
    Los políticos construyen relaciones más cercanas con sus constituyentes. Los miembros de la comunidad logran
    conocer a los funcionarios y gobiernos locales electos.
    • Hace al gobierno más responsable y eficiente
    Cuando los miembros de la comunidad deciden sobre el gasto público en asambleas públicas, hay menos
    posibilidades de que tengan lugar hechos de corrupción, se malgaste el dinero o se produzcan reacciones públicas
    negativas.
    Basado en Participatory Budgeting Project (disponible en http://www.participatorybudgeting.org).",
    other: "La Rede Brasileira de Orçamento Participativo (Red Brasileña de Presupuesto Participativo), que incluye 63 ciudades
    miembros brasileñas y 18 ciudades adicionales en el proceso de unirse (véase la lista completa en http://www.anfermed.
    com.br/redeop/newop/?page_id=54%20%E2%80%8E) utiliza un indicador similar (véase el punto 3.2.1 en http://www.
    anfermed.com.br/redeop/newop/?page_id=65) para su banco de datos, así como indicadores más detallados.
    La Red Argentina de Presupuesto Participativo incluye 44 ciudades argentinas.
    Orçamento Participativo (Portugal) mantiene un observatorio nacional de presupuesto participativo que incluye, en la
    actualidad, 14 ciudades portuguesas.
    Presupuestosparticipativos.com cuenta con una red de 117 ciudades españolas y cuenta con hojas informativas acerca de
    muchas de ellas, lo que incluye la proporción del presupuesto que se analiza de forma participativa.",
    subtheme_id: 50,
  },
  {
    title: "Sesiones públicas de rendición de cuentas por año",
    description: "Número de sesiones por año en las que el gobierno municipal comparte públicamente información acerca de su gestión.",
    methodology: "El gobierno municipal (el gabinete del intendente o alcalde) reúne información de cada unidad operativa, la consolida,
    prepara un informe, la presenta al consejo y la hace pública.",
    positive: "Más de una sesión pública de
    rendición de cuentas por año",
    negative: "No hay sesiones públicas anuales de
    rendición de cuentas",
    medium: "Una sesión pública anual de
    rendición de cuentas",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El justificación para este indicador se basa en el principio de rendición de cuentas.",
    other: "",
    subtheme_id: 51,
  },
  {
    title: "Existencia de un presupuesto plurianual",
    description: "La ciudad tiene un presupuesto plurianual con al menos dos años de ingresos y gastos planificados y se utiliza para
    establecer los futuros requisitos presupuestarios de los servicios existentes, evaluar las implicaciones de cambios
    futuros de políticas y nuevos programas en términos de recursos, y asignar recursos dentro de restricciones fiscales.",
    methodology: "• Paso 1: Proyecciones de ingresos totales. Determinación de techos fiscales y macroeconómicos consistentes con
    la estabilidad macroeconómica y las prioridades de políticas (y la preparación de un documento de política fiscal).
    • Paso 2: Alineación de políticas y objetivos bajo restricciones de recursos (de arriba hacia abajo). Techos sectoriales
    plurianuales.
    • Paso 3: Preparación de estrategias sectoriales plurianuales.
    • Paso 4: Conexión de políticas, recursos y medios por sector (de abajo hacia arriba).
    • Paso 5: Conciliación de las proyecciones con los recursos. Estimación de los costos de los programas existentes
    bajo techos plurianuales, y luego nuevos programas y políticas.
    • Distinción entre programas nuevos y existentes y proyección, en primer lugar, del costo de los programas
    existentes (estimaciones de línea de base) para determinar si hay espacio fiscal disponible para introducir
    nuevos programas.
    • En un momento apropiado del proceso de preparación del presupuesto, se lleva a cabo una “revisión del gasto”
    y se determina qué programas alcanzaron las metas y por qué, y se toman decisiones sobre su modificación,
    expansión o eliminación (las “revisiones de gastos” también incluyen la posibilidad de evaluar un subgrupo de
    programas cada año mediante metodologías más completas y rigurosas tales como análisis de costo-beneficio).
    • Paso 6: Conciliación de la estrategia política con los recursos disponibles.",
    positive: "La ciudad tiene un presupuesto
    proyectado para los
    próximos tres años.",
    negative: "El presupuesto de la ciudad
    es solo para un año.",
    medium: "La ciudad tiene un presupuesto
    proyectado para los
    próximos dos años.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Un enfoque de mediano plazo para el presupuesto puede ayudar a mantener el control de los gastos, mejorar la eficiencia
    y asistir en la respuesta a las prioridades. Esto comprende un sistema robusto de estimaciones adelantadas de gastos
    que brinda a las dependencias cierta seguridad de que sus programas recibirán el financiamiento adecuado. Al reducir la
    incertidumbre sobre el financiamiento anual, el proceso de preparación del presupuesto puede luego concentrarse más
    en los cambios de políticas y mejorar la efectividad de los programas.
    Basado en Arizti, P. et al. (2009), “Performance-Informed Budgeting in Latin America: Experiences and Opportunities”
    (Banco Mundial).",
    other: "Numerosos países trabajan ahora dentro de un marco de presupuestos plurianuales. El Banco Mundial ha estudiado el
    marco presupuestario plurianual para Brasil, Chile, Colombia y México.",
    subtheme_id: 52,
  },
  {
    title: "Remuneracion del personal basada en un sistema de indicadores de desempeño",
    description: "Los sueldos del personal se basan en parte en un sistema de indicadores de desempeño.",
    methodology: "La remuneración basada en el desempeño consiste en un reconocimiento económico individual directamente asociado al
    logro de objetivos. El reconocimiento puede tener lugar mediante ascensos, remuneración diferenciada y bonificaciones
    anuales, entre otros estímulos.
    Se debe distinguir la remuneración basada en el desempeño de los incentivos no monetarios individuales, ya que estos
    últimos son mecanismos que consisten en el reconocimiento no económico individual directamente asociado al logro de
    objetivos. El reconocimiento puede consistir, por ejemplo, en hacer notar los logros individuales de forma pública (dentro
    de la institución).
    Basado en BID (2012), PET-BL PRODEV Evaluation Tool Manual and Questionnaire for the Report on the New Baseline.",
    positive: "La remuneración de por lo
    menos un 40% del personal
    incorpora los resultados de una
    evaluación basada en un sistema
    de indicadores de desempeño.",
    negative: "La remuneración del personal
    no se relaciona con un sistema
    de indicadores de desempeño
    o la remuneración de menos
    del 10% del personal incorpora
    los resultados de una evaluación
    basada en un sistema de
    indicadores de desempeño.",
    medium: "La remuneración de entre
    un 10% y un 40% del personal
    incorpora los resultados de una
    evaluación basada en un sistema
    de indicadores de desempeño.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los sistemas de remuneración basados en el desempeño ayudan a atraer y retener a los mejores trabajadores y a
    incentivar un buen desempeño. También pueden contribuir a lograr una mayor transparencia y justicia en el sistema
    remunerativo del gobierno.",
    other: "La Oficina de Gestión de Personal de Estados Unidos (OPM, por sus siglas en inglés) analizó los sistemas de remuneración
    basados en el desempeño del gobierno federal de forma sistemática en su informe anual, Alternative Personnel Systems
    in the Federal Government: A Status Report on Demonstration Projects and Other Performance-Based Pay Systems del
    año 2008. PRODEV utiliza “sistemas de remuneración y evaluación del personal que incentiva la obtención de resultados
    organizacionales”.",
    subtheme_id: 53,
  },
  {
    title: "Existencia de sistemas electronicos para el seguimiento de la gestión municipal",
    description: "Existen sistemas electrónicos instalados para hacer un seguimiento del cumplimiento de las metas y los objetivos de la
    municipalidad.",
    methodology: "Se debe preguntar a la gestión del gobierno municipal si existe algún sistema para hacer un seguimiento del cumplimiento
    de las metas y los objetivos de la municipalidad. Si la respuesta es positiva, se debe hacer una descripción específica del
    sistema.",
    positive: "Existe un sistema electrónico que
    mide el progreso y los resultados de
    la gestión municipal.",
    negative: "No existe un sistema de rendición
    de cuentas que mida el progreso
    ni los resultados de la gestión
    municipal.",
    medium: "Existe un sistema que mide el
    progreso y los resultados de la
    gestión municipal pero es manual.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"LHacer un seguimiento del progreso de la gestión municipal incrementa la transparencia y es uno de los primeros pasos
    para el proceso de incentivación. Registrar y presentar el progreso de un municipio de forma electrónica hace más
    eficiente el ingreso y la difusión de esta información.",
    other: "",
    subtheme_id: 53,
  },
  {
    title: "Sistema electronico de adquisiciones",
    description: "El gobierno municipal utiliza un sistema electrónico para llevar a cabo las adquisiciones y contrataciones.",
    methodology: "No existe una metodología única. Depende de la legislación sobre contrataciones del país.
    Por lo general, las municipalidades utilizan el sistema de contratación adoptado por el país.",
    positive: "Existe un sistema electrónico de
    contrataciones en línea abierto al
    público y que, al menos, difunde
    públicamente las solicitudes de
    propuestas y los resultados de las
    licitaciones públicas.",
    negative: "El gobierno municipal no cuenta
    con un sistema electrónico de
    contrataciones.",
    medium: "Existe un sistema electrónico
    de contrataciones pero no
    difunde los resultados de
    las licitaciones públicas.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"E-procurement, es decir, el uso de tecnologías de la información y la comunicación (TIC) en las contrataciones públicas,
    facilita el acceso a ofertas públicas e incrementa la competencia. También mejora la transparencia del ciclo de
    contrataciones, lo que faculta a ciudadanos y empresas para responsabilizar más a las autoridades públicas. Además, el
    uso de TIC en contrataciones públicas puede reducir las cargas administrativas y los costos tanto para gobiernos como
    para empresas. Los canales electrónicos también pueden conducir a un ciclo de orden más corto e incrementar los niveles
    de cumplimiento, y de esta manera ayudar potencialmente a disminuir los precios.
    Basado en OCDE (2011), “E-procurement”, en Government at a Glance 2011.",
    other: "OCDE (Encuesta sobre contrataciones públicas de 2010).",
    subtheme_id: 53,
  },
  {
    title: "Indice de transparencia",
    description: "Puntaje por país extraído del Índice de Percepción de la Corrupción de Transparencia Internacional (TI) o puntaje
    municipal extraído de un índice de transparencia nacional para municipalidades, si lo hubiere.",
    methodology: "Cada año, en su Índice de Percepción de la Corrupción (CPI, por sus siglas en inglés), TI clasifica a los países según
    la percepción del nivel de corrupción del sector público. Es un índice compuesto, con una combinación de encuestas
    que extraen datos relacionados con hechos de corrupción recogidos por numerosas instituciones de buena reputación.
    El CPI refleja las opiniones de observadores de todo el mundo, lo que incluye expertos que viven y trabajan en los países/
    territorios evaluados. Para que se incluya un país/territorio en el CPI, debe haber como mínimo tres fuentes de datos
    disponibles para dicho país.
    La corrupción es el abuso del poder confiado a alguien para la obtención de un beneficio personal. Esta es la definición
    de trabajo empleada por TI, y se aplica tanto a los sectores públicos como privados. El CPI se centra en la corrupción
    del sector público, es decir, la corrupción que involucra a funcionarios públicos, empleados públicos o políticos. Las
    fuentes de datos que se utilizan para confeccionar el índice incluyen preguntas relacionadas con el abuso del poder
    público y se focalizan en sobornos a funcionarios públicos, sobornos para contrataciones públicas y malversación de
    fondos públicos, y en preguntas tendientes a investigar la fortaleza y eficacia de los esfuerzos contra la corrupción en
    el sector público. Como tal, el índice cubre tanto los aspectos administrativos como políticos de la corrupción. Cuando
    se confecciona el índice, se combinan los puntajes obtenidos de las fuentes de datos para los países/territorios (según
    preguntas específicas relacionadas con la corrupción) y se calcula un puntaje único para cada país.
    El CPI del año 2011 utilizó 17 fuentes de datos de 13 instituciones. La información empleada para el CPI de 2011 abarca los
    datos de encuestas de esas fuentes reunidos entre diciembre de 2009 y septiembre de 2011. El CPI incluye únicamente
    fuentes que proporcionen un puntaje para un grupo de países/territorios y que midan la percepción de la corrupción en
    el sector público. TI se asegura de que las fuentes empleadas sean de la más alta confianza. Para calificar, el método de
    recolección de datos debe estar bien documentado y la metodología debe publicarse para permitir una evaluación de su
    confiabilidad. Una lista completa de fuentes de datos, preguntas frecuentes y el tipo de entrevistados para cada país/
    territorio se encuentra disponible en el documento de descripción de fuentes del CPI.
    El puntaje de un país/territorio indica el nivel percibido de corrupción en el sector público de ese país en una escala
    de 0 a 10, en la que 0 significa que se percibe al país como muy corrupto y 10 significa que se percibe al país como
    muy transparente. La ubicación de un país en el índice muestra su posición en relación con los demás países/territorios
    incluidos en el índice. Es importante tener en cuenta que la posición de un país puede cambiar simplemente por el ingreso
    de nuevos países al índice o la salida de otros.
    En algunos países existen índices de transparencia por municipalidad que miden la transparencia o corrupción a nivel
    municipal. Estos pueden emplearse en lugar del Índice de Percepción de la Corrupción de TI o como complemento de
    este. Esto puede resultar especialmente útil si se recolectan los datos en ciudades comparables dentro del mismo país.",
    positive: "> 6",
    negative: "< 3",
    medium: "3,0–6,0.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Generalmente, la corrupción comprende actividades ilegales que salen a la luz fundamentalmente debido a escándalos,
    investigaciones o procedimientos legales. Por ello, es difícil determinar los niveles absolutos de corrupción en países
    o territorios sobre la base de datos empíricos irrefutables. Mecanismos que tienen ese fin, como la comparación de
    sobornos denunciados, el número de procedimientos legales iniciados o los casos judiciales directamente asociados con
    hechos de corrupción, no pueden tomarse como indicadores definitivos de los niveles de corrupción. En lugar de ello,
    estos mecanismos demuestran la efectividad de los fiscales, tribunales o medios de prensa para investigar y exponer los
    hechos de corrupción. Un método confiable de compilar datos comparables de países consiste en tomar las percepciones
    de aquellas personas que estén en condiciones de ofrecer evaluaciones de corrupción en el sector público de un país
    determinado.
    Basado en el Índice de Percepción de la Corrupción de TI, (disponible en http://www.transparency.org/cpi2011/in_detail).",
    other: "TI informa anualmente el puntaje para cada uno de los países prestatarios del BID, excepto Belice. La sección de TI en
    Colombia, Transparencia Por Colombia, cuenta con un índice de transparencia a nivel municipal. Transparencia Venezuela
    también tiene un sistema indicador de transparencia municipal (SITM, Sistema de Indicadores de Transparencia Municipal).
    USAID ha preparado un índice de transparencia a nivel municipal para los municipios de El Salvador. La sección mexicana
    de TI, Transparencia Mexicana, ha creado un índice de la buena gobernabilidad y corrupción a nivel estadual. Associação
    de Contas Abertas en Brasil también cuenta con un índice de transparencia a nivel estadual.",
    subtheme_id: 54,
  },
  {
    title: "Porcentaje de cuentas de la municipalad que son auditas",
    description: "Numerador: cantidad de cuentas del gobierno municipal que se auditan independientemente del grupo interno de
    auditores. Denominador: cantidad total de cuentas del gobierno municipal.",
    methodology: "El porcentaje de cuentas auditadas del gobierno municipal se determina mediante la división de la cantidad de cuentas
    del gobierno municipal auditadas independientemente del grupo de auditores internos por la cantidad total de cuentas
    del gobierno municipal.
    La entidad fiscalizadora superior de cada país puede contar con esta información.",
    positive: "Está auditado más del 50% de las
    cuentas del gobierno municipal",
    negative: "Está auditado menos del 30% de las
    cuentas del gobierno municipal",
    medium: "Está auditado del 30% al 50% de
    las cuentas del gobierno municipal",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En las auditorías se obtienen rendiciones de cuentas e información transparente esencial sobre programas de gobierno.
    Las auditorías de gobierno proporcionan el análisis y la información objetiva que se requiere para tomar las decisiones
    necesarias con el fin de ayudar a lograr un mejor futuro. El concepto de rendición de cuentas para el uso de los recursos
    públicos y la autoridad gubernamental es clave para los procesos de gobierno democrático. Las auditorías de gobierno
    son esenciales para rendir cuentas a legisladores, organismos de supervisión, autoridades de gobierno y el público en
    general. En virtud de su tipo y alcance, las auditorías ofrecen una evaluación independiente, objetiva y no partidaria de la
    administración, el desempeño, o el costo de las políticas, los programas o las operaciones de gobierno.
    Basado en la Oficina de Rendición de Cuentas de Gobierno de Estados Unidos (2011), Government Auditing Standards
    (disponible en http://www.gao.gov/assets/590/587281.pdf).",
    other: "Este indicador es muy común en la gestión financiera pública. Véase la herramienta subnacional en www.pefa.org.",
    subtheme_id: 54,
  },
  {
    title: "Porcentaje de empresas municipales cuya cuentas son auditadas por un tercero",
    description: "Numerador: cantidad de empresas municipales cuyas cuentas son auditadas por terceros externos e independientes.
    Denominador: cantidad total de empresas municipales.",
    methodology: "El porcentaje de empresas municipales cuyas cuentas son auditadas por un tercero se determina mediante la división de
    la cantidad de empresas municipales cuyas cuentas son auditadas por terceros externos e independientes por la cantidad
    total de empresas municipales.
    Todas las municipalidades deben saber qué empresas municipales someten sus cuentas a auditorías efectuadas por
    terceros.",
    positive: "Del 80% al 100%
    de las empresas municipales es
    auditado por una organización
    privada independiente.",
    negative: "Menos del 50%
    de las empresas municipales
    es auditado.",
    medium: "Del 80% al 100% de las empresas
    municipales es auditado, aunque
    no por una organización privada
    independiente, o bien entre
    el 50% y el 80% de las empresas
    municipales es auditado por una
    organización privada independiente.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En las auditorías se obtienen rendiciones de cuentas e información transparente esencial sobre programas de gobierno.
    Las auditorías de gobierno proporcionan el análisis y la información objetiva que se requiere para tomar las decisiones
    necesarias con el fin de ayudar a lograr un mejor futuro. El concepto de rendición de cuentas para el uso de los recursos
    públicos y la autoridad gubernamental es clave para los procesos de gobierno democrático. Las auditorías de gobierno
    son esenciales para rendir cuentas a legisladores, organismos de supervisión, autoridades de gobierno y el público en
    general. En virtud de su tipo y alcance, las auditorías ofrecen una evaluación independiente, objetiva y no partidaria de la
    administración, el desempeño, o el costo de las políticas, los programas o las operaciones de gobierno.
    Basado en la Oficina de Rendición de Cuentas de Gobierno de los Estados Unidos (2011), Government Auditing Standards
    (disponible en http://www.gao.gov/assets/590/587281.pdf).",
    other: "",
    subtheme_id: 55,
  },
  {
    title: "Ingresos propios como porcentaje de los ingresos totales",
    description: "Porcentaje de los ingresos del gobierno local que se originan en tarifas, multas e impuestos permitidos por la ley respecto
    de la totalidad de los ingresos, incluidos aquellos proporcionados por otros niveles de gobierno. Esto solo incluye
    ingresos operativos o recurrentes determinados a través de métodos tales como pagos a partir de fórmulas (por ejemplo,
    la repatriación del impuesto a las ganancias), donaciones otorgadas desde niveles más altos de gobierno (incluidos los
    gobiernos nacionales o estaduales) y otros tipo de transferencias financieras que pueden estar vinculadas a la prestación
    de servicios específicos.",
    methodology: "El monto total de los fondos obtenidos a través de aranceles por permisos, tarifas de usuario por servicios urbanos
    e impuestos recaudados únicamente con fines municipales, divididos por todos los ingresos operativos o recurrentes,
    incluidos aquellos transferidos a la ciudad por otros niveles de gobierno, multiplicado por 100.
    Basado en la descripción del indicador de GCIF “Ingresos propios como porcentaje de ingresos totales”.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Inferior en comparación con
    ciudades pares",
    medium: "Similar a ciudades
    pares en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En un nivel muy básico, este indicador mide el grado en que la ciudad depende de los ingresos proporcionados por otros
    niveles de gobierno para prestar sus servicios al público.
    La diferencia entre sus propios ingresos y las transferencias de niveles de gobierno superiores ofrece una indicación
    de la viabilidad, la independencia y el control de una ciudad sobre sus propios recursos y, en alguna medida, mide su
    planificación financiera y su efectividad de gestión.
    Basado en la descripción del indicador de GCIF “Ingresos propios como porcentaje de ingresos totales”.",
    other: "GCIF; Índice de Gobernabilidad Urbana de UN-Habitat (UGI, por sus siglas en inglés).",
    subtheme_id: 55,
  },
  {
    title: "Transferencias totales como porcentaje de los ingresos totales",
    description: "Transferencias totales de otros niveles de gobierno como porcentaje de los ingresos totales",
    methodology: "El indicador representa los recursos que el gobierno local recibe de otros niveles de gobierno (regional/provincial/
    estadual/nacional/federal) para determinar su participación en los ingresos totales del gobierno local. En algunos casos,
    las transferencias tienen usos específicos asignados. Esta estimación incluye todas las transferencias sin considerar si
    tienen o no usos específicos asignados.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Inferior en comparación con
    ciudades pares",
    medium: "Similar a ciudades
    pares en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las municipalidades tienden a tener mayor autonomía en la medida en que dependen menos de la obtención de
    transferencias. Además, numerosas municipalidades de América Latina y el Caribe tienen gastos cada vez mayores,
    aunque no incrementan, en la misma medida, las recaudaciones que generan. Por ello, este tipo de transferencias cubre
    la brecha resultante. Esto da lugar a problemas de sostenibilidad.
    Basado en BID (s/f), Ingresos Municipales en Centroamérica.",
    other: "El Departamento Nacional de Planeación de Colombia; el Estado de Connecticut (“Municipal Fiscal Indicators”): ingresos
    intergubernamentales; el Departamento de Servicios Legislativos de Maryland (“County and Municipal Revenue Sources”):
    ingresos intergubernamentales (subsidios federales, subsidios estaduales y otros subsidios); Canadian Tax Foundation
    (Kitchen, H., “Canadian Municipalities: Fiscal Trends and Sustainability”): subsidios (condicionales e incondicionales).",
    subtheme_id: 55,
  },
  {
    title: "Transferencias con usos específicos asignados como porcentaje de las transferencias totales",
    description: "Transferencias con usos específicos asignados como porcentaje de las transferencias totales.",
    methodology: "Las transferencias que solo pueden utilizarse bajo las condiciones establecidas por el gobierno nacional u otros niveles de
    gobierno (además del municipal) deben identificarse a través de las reglamentaciones actuales de cada país. El indicador
    se calcula dividiendo las transferencias condicionales por el total de las transferencias recibidas, y multiplicando el
    resultado por 100.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Inferior en comparación con
    ciudades pares",
    medium: "Similar a ciudades
    pares en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las transferencias con usos específicos asignados limitan la autonomía y capacidad de una municipalidad de establecer
    prioridades, especialmente en municipalidades que dependen fuertemente de esas transferencias. Debido a las directivas
    nacionales, en muchos casos las transferencias se destinan a sectores preestablecidos, lo que limita la autonomía del
    gobierno local en decisiones sobre el uso de estos recursos. Esto restringe las posibilidades de los gobiernos locales de
    invertir en servicios públicos e infraestructura en su localidad. Este indicador intenta medir la autonomía que los líderes
    locales tienen en la gestión de los recursos transferidos.",
    other: "Canadian Tax Foundation (Kitchen, H., “Canadian Municipalities: Fiscal Trends and Sustainability”): subsidios (condicionales
    e incondicionales).",
    subtheme_id: 55,
  },
  {
    title: "Ingresos de otras fuentes (donantes externos) como porcentaje de los ingresos totales",
    description: "Ingresos por fuente: Otros (donantes externos)/Ingresos totales.",
    methodology: "Los ingresos de los donantes externos se identifican al ver la información fiscal del municipio, sumando todos los
    ingresos obtenidos en un año de fuentes diferentes a las fuentes de ingresos propios del municipio y transferencias de
    otros niveles de gobierno dentro del país (nacional, estatal, etc.) y dividiendo esta cifra por los ingresos totales del
    municipio para ese año.",
    positive: "Similar a las ciudades ejemplares
    (ciudades con las mejores
    prácticas del país)",
    negative: "Similar a las ciudades
    pares en el país",
    medium: "Superior en comparación
    con las ciudades pares",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Las municipalidades tienden a tener mayor autonomía en la medida en que dependen menos de transferencias y donantes.",
    other: "El Banco Mundial utiliza subsidios y otras fuentes de ingresos como indicadores del sector público a nivel nacional.",
    subtheme_id: 55,
  },
  {
    title: "Recuperacion de costos de empresas de presentacion de servicios publicos",
    description: "Porcentaje del costo de la prestación de servicios públicos (provistos a través de la municipalidad o empresas municipales)
    que es recuperado a través de tarifas que se cobran a los consumidores (por agua, sistema de alcantarillado, recolección
    de residuos sólidos, electricidad).",
    methodology: "Para la estimación de este indicador, se deben identificar en primer lugar aquellos servicios que son prestados por la
    municipalidad, ya sea directamente o a través de empresas municipales constituidas para tal fin. Una vez identificado
    esto, se debe proceder a determinar cuánto cuesta la provisión del servicio (gastos operativos, que abarcan: personal,
    operación de equipos, vehículos, alquileres, etc.) y, en caso de que se cobre alguna tarifa por la prestación del servicio,
    cuánto recibe la municipalidad o a la empresa municipal por este concepto. Luego se dividen el costo sobre el recaudo y
    esta cifra se multiplica por 100.",
    positive: "> 90%",
    negative: "> 50%",
    medium: "> 50% y < 90%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La recuperación del costo de la prestación de servicios públicos indica la sostenibilidad fiscal de la prestación de dichos
    servicios. Esto proporciona la base fiscal para la expansión y las mejoras de servicios adicionales, lo que en algunos
    casos puede resultar clave para brindar acceso a las personas que actualmente carecen del servicio o que reciben un
    servicio de mala calidad.",
    other: "",
    subtheme_id: 56,
  },
  {
    title: "Impuestos recaudados como porcentaje de los impuestos facturados",
    description: "La relación entre los impuestos recaudados sobre el total de impuestos facturados.",
    methodology: "Se identifican todos los ingresos generados por la recaudación de impuestos, se dividen por el monto de impuestos
    facturados, y esta cifra se multiplica por 100.
    Basado en la descripción del indicador de GCIF “Own-source revenue as a percent of total revenues”.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Inferior en comparación con
    ciudades pares",
    medium: "Similar a ciudades
    pares en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"La recaudación de impuestos es la fuente principal de ingresos para todos los niveles de gobierno, incluidas las ciudades.
    Este indicador mide la efectividad de los organismos recaudadores de impuestos y tiene por objetivo mensurar la
    efectividad de la capacidad de gestión financiera de una ciudad. En alguna medida, también demuestra la voluntad de los
    ciudadanos de pagar sus impuestos.
    Basado en la descripción del indicador de GCIF “Ingresos propios como porcentaje de los ingresos totales”.",
    other: "GCIF; el Estado de Connecticut (“Indicadores Fiscales Municipales”); el UGI de UN-Habitat utiliza un indicador similar
    denominado porcentaje de ingresos locales obligatorios efectivamente recaudados por el gobierno local.
    Basado en la descripción del indicador de GCIF “Own-source revenue as a percent of total revenues”.",
    subtheme_id: 56,
  },
  {
    title: "Impuestos de desempeño y metas para el seguimiento de la ejecucíon del presupuesto",
    description: "Existencia de indicadores de desempeño y metas para el seguimiento de la ejecución del presupuesto",
    methodology: "Se debe verificar la siguiente información: si existen indicadores de desempeño y metas para el seguimiento del
    presupuesto, si se les monitorea de forma periódica, y si los resultados se incorporan al presupuesto del año siguiente.",
    positive: "Existen indicadores de desempeño
    y metas con monitoreos periódicos,
    y los resultados se incorporan en
    el siguiente presupuesto.",
    negative: "No existen indicadores de
    desempeño ni metas para
    monitorear el presupuesto.",
    medium: "Existen indicadores de desempeño
    y metas, pero sin monitoreos
    periódicos, o los resultados no
    se incorporan en el siguiente
    presupuesto.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Un sistema de indicadores y metas para acompañar al presupuesto ayuda a garantizar que el dinero se gaste de forma tal
    que produzca los resultados deseados. Además, provee transparencia y responsabilidad al proceso de preparación de un
    presupuesto y permite una asignación de recursos más efectiva.",
    other: "Dipres de Chile (véase dipres.cl).
    Secretaría de Hacienda y Crédito Público de México (SHCP) (véase shcp.gob.mx).",
    subtheme_id: 57,
  },
  {
    title: "Gasto corriente como porcentaje del gasto total",
    description: "El gasto corriente total durante el año anterior (el numerador) dividido por el gasto total incurrido por la ciudad durante
    el mismo período expresado como un porcentaje.",
    methodology: "Este indicador debe incluir gastos operativos; es decir, gastos continuos. Esto debe dividirse por el gasto presupuestado
    total y multiplicarse por 100. Las cifras utilizadas para este cálculo deben tomarse directamente de los estados financieros
    auditados de la ciudad sin enmiendas ni modificaciones.
    Basado en la descripción del indicador de GCIF “Capital spending as percentage of total expenditures”.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Superior en comparación con
    ciudades pares",
    medium: "Similar a ciudades pares
    en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Una ciudad que gasta una gran parte de su presupuesto en costos operativos puede carecer de la capacidad financiera
    para invertir en formas que apoyarían su crecimiento y desarrollo futuro. Sin embargo, el análisis debe considerar las
    particularidades de cada país. En algunos casos, las competencias asignadas a los gobiernos locales pueden involucrar
    una serie de gastos operativos para su correcta ejecución (por ejemplo, la recolección de basura). En muchos países de
    la región, las competencias locales en inversiones en capital son limitadas y, por lo tanto, los gastos operativos tienden
    a ser altos. Si el gasto corriente como porcentaje del gasto total del municipio es alto en comparación con el de las
    ciudades pares, se requerirá una revisión detallada de los distintos rubros del gasto operativo para determinar posibles
    deficiencias.",
    other: "GCIF utiliza el gasto de capital como porcentaje del gasto total.",
    subtheme_id: 57,
  },
  {
    title: "Gasto de capital como porcentaje del gasto total",
    description: "El gasto total sobre activos fijos del año anterior (el numerador) dividido por el gasto total de la ciudad durante el mismo
    período, expresado como un porcentaje.",
    methodology: "Se utilizan los gastos anuales sobre activos fijos y esta cifra se divide por el gasto total (operativo y de capital) de la
    ciudad de ese mismo período.
    No se espera que los activos fijos se consuman o conviertan en efectivo en el transcurso normal de los negocios. Se
    trata de bienes de largo plazo, más permanentes o “fijos”, como terrenos, edificios, equipos, instalaciones, mobiliario y
    mejoras a bienes en locación.
    Las cifras utilizadas para este cálculo deben tomarse directamente de los estados contables auditados de la ciudad sin
    enmiendas ni modificaciones.
    Este indicador debe considerarse junto con el indicador Coeficiente del Servicio de la Deuda para comprender la
    capacidad de la ciudad de mantener su gasto de capital. El nivel de gasto de capital con relación al gasto recurrente puede
    reflejar la capacidad financiera de la ciudad de invertir en bienes de capital necesarios para respaldar su crecimiento y
    desarrollo futuros.
    Basado en la descripción del indicador de GCIF “Gasto de capital como porcentaje del gasto total”.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Superior en comparación con
    ciudades pares",
    medium: "Similar a ciudades pares
    en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El monto del gasto de capital de la ciudad expresado como porcentaje del gasto total anual de la ciudad es un indicador de
    la capacidad que tiene una ciudad para atender las demandas de sus ciudadanos en servicios públicos e infraestructura.
    Nuevamente, es importante evaluar este indicador dentro del contexto de cada país, pues en muchos países de la región
    las municipalidades no tienen competencias en inversión en capital, ya que esto tiende a ser responsabilidad de un nivel
    superior de gobierno (provincia, estado, departamento o nación).",
    other: "GCIF.",
    subtheme_id: 57,
  },
  {
    title: "Tasa de crecimiento anual del gasto corriente",
    description: "Tasa promedio de crecimiento anual de los gastos operativos de los últimos cinco años.",
    methodology: "A partir de los gastos operativos de los cinco años previos, se estima la tasa de crecimiento promedio. Para ello, se calcula
    la tasa de crecimiento año por año y luego se promedian los resultados. La tasa de crecimiento se estima a partir del
    crecimiento absoluto en gastos operativos entre dos años, dividiendo por el valor del gasto operativo en el año inicial, y
    se multiplica por 100. En caso de que no exista información disponible para cinco años, se determinará un promedio del
    periodo disponible.",
    positive: "Similar a lo ejemplar (ciudades con
    las mejores prácticas del país)",
    negative: "Superior en comparación con
    ciudades pares",
    medium: "Similar a ciudades pares
    en el país",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Los gastos operativos crecientes pueden llevar a problemas fiscales futuros. No basta con mirar el nivel absoluto o
    relativo de los gastos operativos, sino que se requiere examinar la tendencia que muestra este rubro en el tiempo. Ello
    permite identificar si lo observado en el indicador anterior es fruto de determinada coyuntura o si es el resultado de una
    tendencia persistente en el gasto.",
    other: "",
    subtheme_id: 57,
  },
  {
    title: "Alineación del presupuesto con el plan",
    description: "Determinar si el presupuesto de la ciudad incluye los objetivos de su plan de desarrollo con indicadores de resultados.",
    methodology: "Un primer nivel de alineación es el de los programas. Los programas de cada uno de los instrumentos, el plan y el
    presupuesto, deben ser los mismos.
    Un segundo nivel de alineación es el de los proyectos. Los proyectos de cada uno de los instrumentos, el plan y el
    presupuesto, deben ser los mismos. Si esta información no está disponible a nivel del proyecto, este nivel no se considera.
    Un tercer nivel de alineación es el de los objetivos de los programas. Los del plan de la ciudad deben coincidir y ser los
    mismos que los objetivos de los programas que financia el presupuesto municipal.",
    positive: "Más del 70% de los programas
    del presupuesto de la ciudad
    coincide con los del plan de
    desarrollo o del gobierno.",
    negative: "Menos del 30% de los programas
    del presupuesto coincide con los
    del plan de desarrollo, o bien
    no existe tal plan.",
    medium: "De un 30% a un 70% de los
    programas del presupuesto coincide
    con el plan de desarrollo.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"Un presupuesto estrechamente alineado con el plan de la ciudad indica que se están implementando las metas establecidas
    por la ciudad y que estas están recibiendo apoyo financiero.",
    other: "Gobiernos subnacionales en Brasil.",
    subtheme_id: 57,
  },
  {
    title: "Pasivos contingentes como porcentaje de los ingresos propios",
    description: "Total de pasivos contingentes exigibles en los próximos cinco años como porcentaje de los ingresos propios en el mismo
    período.",
    methodology: "Los pasivos contingentes son pasivos en los que puede o no puede incurrir una entidad en función del resultado de un hecho
    futuro, como es el caso de un juicio. Si bien estos pasivos deben de registrarse en las cuentas del gobierno y señalarse en
    el balance general, esta no es una práctica común en América Latina y el Caribe. Como resultado, los gobiernos locales de
    la región podrían enfrentarse a posibles tensiones fiscales y ni el gobierno local ni el gobierno nacional son conscientes
    de su verdadera situación fiscal debido a los pasivos contingentes. Para conocer los pasivos contingentes de un gobierno
    local, se debe revisar si están siendo reportados dentro de los pasivos o, en el caso de aquellos que no estén siendo
    reportados, determinar cuáles podrían representar un problema serio en el corto y mediano plazo. Es importante también
    verificar el período de exigibilidad de dichos pasivos. Para determinar su importancia relativa, se debe comparar el
    monto de los pasivos contingentes exigibles en los próximos cinco años, dividirlo por los ingresos propios en ese período
    y multiplicarlo por 100. Ingresos propios son los ingresos totales menos las transferencias.",
    positive: "> 90%",
    negative: "< 75%",
    medium: "75%–90%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En muchos casos los principales riesgos de la gestión fiscal de una ciudad surgen de los llamados pasivos contingentes;
    es decir, aquellos pasivos que no necesariamente aparecen en el balance del gobierno municipal porque no son exigibles
    en un corto plazo pero que podrían ser un riesgo en caso de que se hagan realidad. Dentro de estos pasivos se encuentran
    las obligaciones pensionales que tenga a su cargo el gobierno municipal o la posible quiebra que implicaría el mal manejo
    de una empresa del orden municipal.",
    other: "El estado de Connecticut registra información sobre obligaciones de pensiones junto con pasivos actuariales acumuladas
    (AAL, por sus siglas en inglés), porcentaje de AAL financiado, y porcentaje de la contribución realizada para los planes de
    pensión de beneficios definidos para las municipalidades de Connecticut.",
    subtheme_id: 58,
  },
  {
    title: "Coeficiente del servicio de la deuda",
    description: "El coeficiente del servicio de la deuda es el coeficiente de los gastos del servicio de la deuda como porcentaje de los
    ingresos propios de una municipalidad. Un número bajo puede indicar la creciente capacidad de una municipalidad de
    solicitar préstamos o la decisión de esta de limitar su deuda para permitir el financiamiento de otras áreas de servicio.",
    methodology: "El coeficiente del servicio de la deuda se calcula dividiendo los costos totales del servicio de la deuda a largo plazo,
    incluidos los pagos de locaciones, el financiamiento temporero y otros cargos de la deuda por los ingresos propios totales.
    Los ingresos propios totales están constituidos por los ingresos totales menos las transferencias.
    Se debe tener cuidado al evaluar este indicador. Un coeficiente de servicio de la deuda alto puede significar que una
    municipalidad ha contraído muchas deudas pero también puede implicar que ha tomado una postura agresiva con respecto
    a su pago y que las está cancelando de forma rápida. De manera análoga, un coeficiente del servicio de la deuda bajo
    puede significar que una municipalidad es financieramente fuerte y puede financiar la mayoría de los proyectos de capital
    a través de su presupuesto operativo. Por otra parte, también puede indicar que una municipalidad es financieramente
    más débil y ha diferido proyectos de capital, permitiendo así el deterioro de importantes infraestructuras.
    Basado en la descripción del indicador de GCIF “Debt service ratio”.",
    positive: "< 10%",
    negative: "> 20%",
    medium: "10%–20%",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"El propósito de este indicador es evaluar la sostenibilidad del endeudamiento vigente en una ciudad. Esa capacidad de
    endeudamiento se evalúa en función de la capacidad de pago que tiene la ciudad para cubrir la amortización de capital
    y los intereses de la deuda contraída. La capacidad de pago se aproxima a través de los ingresos propios que tiene
    una municipalidad; es decir, aquellos de los que dispone con libertad. En algunos países con reglas de endeudamiento
    municipal definidas, este indicador debe analizarse teniendo en cuenta la reglamentación vigente en esta materia.",
    other: "GCIF; la Asociación de Funcionarios Financieros de Gobierno (GFOA, por sus siglas en inglés) apoya esta medida como
    parte de sus buenas prácticas presupuestarias recomendadas. El coeficiente del servicio de la deuda es también un
    indicador clave para las agencias calificadoras de bonos que evalúan la calificación crediticia de una municipalidad. De
    acuerdo con el nivel del gobierno que provee los servicios de instalaciones de agua potable/tratamiento de aguas servidas
    o transporte público (un servicio con un alto costo de capital), el tamaño de la deuda puede ser significativamente mayor
    o menor si se comparan municipalidades de tamaños similares.
    Basado en la descripción del indicador de GCIF “Coeficiente del servicio de la deuda”.",
    subtheme_id: 59,
  },
  {
    title: "Crecimiento de la deuda",
    description: "Tasa anual de crecimiento promedio de la deuda en los últimos tres años.",
    methodology: "Se identifica la deuda financiera y no financiera que la ciudad ha contraído en los últimos tres años. A partir de estos
    valores, se calcula la tasa anual de crecimiento entre los años considerados. Luego se promedian estas cifras para obtener
    la tasa de crecimiento promedio para el período.",
    positive: "El crecimiento real anual es
    negativo.",
    negative: "El crecimiento real anual
    es superior al 2%.",
    medium: "El crecimiento real anual se ubica
    entre el 0% y el 2%.",
    unit: "",
    value: "",
    rate: nil,
    result: "",
    justification:"En muchos casos se requiere no solo la revisión del nivel de la deuda, sino también examinar la tendencia en su
    comportamiento. El propósito es determinar si hay una tendencia expansiva en el crecimiento del endeudamiento de la
    ciudad o si, por el contrario, el crecimiento del endeudamiento muestra una tendencia sostenible en el tiempo.",
    other: "",
    subtheme_id: 59,
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
  #indicador 41,
   #indicador 42,
   {
    title: "Cantidad de personas en el area urbana",
    value: 80085.00,
  },
  {
    title: "Area urbana total del municipio",
    value: 80085.00,
  },
  #indicador 43,
  {
    title: "Cantidad de viviendas que no cumplen con los estandares",
    value: 80085.00,
  },
  #indicador 44,
  #indicador 45,
  {
    title: "Areas total de espacios verdes",
    value: 80085.00,
  },
  #indicador 46,
  {
    title: "Areas total de espacios publicos recreativos",
    value: 80085.00,
  },
  #indicador 47 T,
  #indicador 48 T,
  #indicador 49,
  {
    title: "Hogares por debajo de la linea de la linea de pobreza",
    value: 80085.00,
  },
  {
    title: "Promedio de personas por hogar en la ciudad",
    value: 80085.00,
  },
  #indicador 50,
  {
    title: "Viviendas en asentamientos informales",
    value: 80085.00,
  },
  #indicador 51,
  #indicador 52,
  #indicador 53,
  #indicador 54,
  #indicador 55,
  #indicador 56,
  #indicador 57,
  #indicador 58,
  {
    title: "Cifra anual de victimas mortales en accidentes de trafico",
    value: 80085.00,
  },
  #indicador 59,
  #indicador 60,
  {
    title: "Total de automoviles registrados",
    value: 80085.00,
  }
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
  #indicador 42,
  {
    statistic_id: 26,
    indicator_id: 42,
  },
  {
    statistic_id: 27,
    indicator_id: 42,
  },
 #indicador 43,
 {
    statistic_id: 28,
    indicator_id: 43,
  },
  {
    statistic_id: 2,
    indicator_id: 43,
  },
 #indicador 45,
  {
    statistic_id: 29,
    indicator_id: 45,
  },
 #indicador 46,
  {
    statistic_id: 30,
    indicator_id: 46,
  },

 #indicador 49,
 {
  statistic_id: 31,
  indicator_id: 40,
},
{
  statistic_id: 32,
  indicator_id: 49,
},
{
  statistic_id: 24,
  indicator_id: 49,
},
 #indicador 50,
 {
  statistic_id: 33,
  indicator_id: 50,
},
{
  statistic_id: 2,
  indicator_id: 50,
},
 #indicador 58,
 {
  statistic_id: 34,
  indicator_id: 58,
},
#indicador 60,
{
  statistic_id: 35,
  indicator_id: 60,
},
{
  statistic_id: 24,
  indicator_id: 60,
}
]
Formula.create!(formula_attributes1)
puts '7 done!'

puts 'Done!'
