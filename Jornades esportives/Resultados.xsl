<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<xsl:variable name="franja1">
				border: 2px solid black;
				background-color:  green ;
		</xsl:variable>
		<xsl:variable name="franja2">
		border: 2px solid black;
		background-color:  #dbf2f5 ;
					color:black;
		</xsl:variable>
		<xsl:variable name="franja3">
		border: 2px solid black;
	background-color: rgb(32, 101, 144);
	color:#FFFFFF;
		</xsl:variable>


		<html>

			<head>
				<title>Jornades Esportives-Monlau</title>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"/>
				<!-- JavaScript Bundle with Popper -->
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
				<script src="busqueda.js">
				<script src="https://kit.fontawesome.com/251e63e534.js" crossorigin="anonymous"></script>

				</script>
				<style>
					*{
						font-family: 'Open Sans', sans-serif;
						text-shadow: 1px 1px 2px black;
					}
					.cabeza{
						background: rgb(2,81,219);
						background: linear-gradient(163deg, rgba(2,81,219,1) 0%, rgba(11,222,224,1) 86%); 
						}
					.pie{
						background: rgb(2,81,219);
						background: linear-gradient(163deg, rgba(2,81,219,1) 0%, rgba(11,222,224,1) 86%); 
						height:5vh;
						}
					.tabhead{
						border: 3px solid;
						background-color:  #2be575 ;
						
					}		
					.ftexto{
						
						border: 2px solid black;
				 		background-color: #77c2ae ;
						
					}
					.ftextoh1{
						border: 3px solid;
						background-color:  #eedf85;
						
					}
					.ftextoh3{
						border: 2px solid;
						background-color: #daf4c9;
					}
					#fondo{			
						background-image: url("img/fondo.jpeg");
				background-repeat: no-repeat;
				background-attachment: fixed;
				background-size: cover;

					}
					body{
				
						backdrop-filter: blur(2px);
						text-shadow: 1px 1px 2px black;
					}

					a{
						color:blue;
						text-decoration: none;
					}
					th, .columnas{
						border: 2px solid black;
						background-color: #4d4848 ;
					}
					.buscador{
						height:3rem;
						border: 2px solid;
						justify-content: center;	
					}
					#collapseOne{
						color:black;
						text-decoration: none;
					}

				</style>

			</head>
			<body id="fondo" class="bg-image shadow-2-strong">

				<div class="p-5 text-center bg-yellow bg-gradient " style="background-color: rgba(0, 0, 0, 0.3);">

				</div>
				<div class="mask" style="background-color: rgba(0, 0, 0, 0.3);">
					<nav class="col-12 navbar navbar-expand-sm navbar-expand-lg navbar-expand-md fixed-top cabeza text-light ">
						<div class="container-fluid">
							<a class="navbar-brand text-warning" href="https://www.monlau.com/">
								<img src="img/monlau-fp-es.png" width="70" height="60" class="d-inline-block align-top " alt="">
								</img>
								Jornadas deportivas
							</a>
							<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<ul class="navbar-nav">
								<li class="nav-item">
									<a class="nav-link text-warning" href="Alumno(final).xml">Participantes <i class="fa-solid fa-user-group"></i></a>
								</li>
								
								<li class="nav-item dropdown dropdown-menu-right">
									<a class="nav-link dropdown-toggle text-warning" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								  Resultados <i class="fa-solid fa-square-poll-horizontal"></i>
									</a>
									<ul class="dropdown-menu bg-dark " aria-labelledby="navbarDropdownMenuLink">
										<li>
											<a class="dropdown-item text-light" href="Resultados_eso.xml">Resultados ESO</a>
										</li>
										<li>
											<a class="dropdown-item text-light" href="Resultados.xml">Resultados Bachillerato</a>
										</li>

									</ul>
								</li>
							</ul>
						</div>
					</nav>


					<div class="container " id="Modalidades">
						<div class="row">
							<div class="col-sm-12 col-md-12 col-lg-12"  >
								<div class="row" >
									<div class="col-sm-12 col-md-12 col-lg-12"  >
										<h2 class="mt-6 text-center rounded-pill text-black tabhead">Modalidades</h2>
	
									</div>
								</div>
								<div id="accordion">
								
								<div class="card">
								<xsl:attribute name="style">
												<xsl:value-of select="$franja2" />
												</xsl:attribute>
									<div class="card-header" id="headingOne">
									<h5 class="mb-0">
										<a type="button" class="btn btn-link text-dark" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										<i class="fa-solid fa-bars"></i> Carrera 100 metros lisos
										</a>
									</h5>
									</div>

									<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-bs-parent="#accordion">
									<div class="card-body">
										<a href="#100f"><p>Carrera de 100 metros lisos Femenino</p></a>
										<a href="#100m"> <p>Carrera de 100 metros lisos Masculino</p> </a>
									</div>
									</div>
								</div>
								<div class="card ">
									<xsl:attribute name="style">
										<xsl:value-of select="$franja2" />
									</xsl:attribute>
									<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link text-dark collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<i class="fa-solid fa-bars"></i> Carrera de 1200 metros
										</button>
									</h5>
									</div>
									<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordion">
									<div class="card-body">
										<a href="#100f"><p>Carrera de 1200 metros Femenino</p></a>
										<a href="#100m"> <p>Carrera de 1200 metros Masculino</p> </a>
									</div>
									</div>
								</div>
								<div class="card">
									<xsl:attribute name="style">
										<xsl:value-of select="$franja2" />
									</xsl:attribute>
									<div class="card-header" id="headingThree">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed text-dark" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										<i class="fa-solid fa-bars"></i> Lanzamiento de peso
										</button>
									</h5>
									</div>
									<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-bs-parent="#accordion">
									<div class="card-body">
										<a href="#lanf"><p>Carrera de 1200 metros Femenino</p></a>
										<a href="#lanm"> <p>Carrera de 1200 metros Masculino</p> </a>      </div>
									</div>
									<div class="card">
									<xsl:attribute name="style">
										<xsl:value-of select="$franja2" />
									</xsl:attribute>
									<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link text-dark collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseTwo">
										<i class="fa-solid fa-bars"></i> Salto de longitud
										</button>
									</h5>
									</div>
									<div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordion">
									<div class="card-body">
										<a href="#salf"><p>Salto de longitud Femenino</p></a>
										<a href="#salm"> <p>Salto de longitud Masculino</p> </a>
									</div>
									</div>
								</div>
								</div>
								</div>
								<!--100 METROS FEMENINO-->
								<h1 class="mt-5 text-black text-center rounded-pill ftextoh1">RESULTADOS BACHILLERATO</h1>
						
								<h2 class="mt-2 text-black text-center rounded-pill ftexto" id="100f">Carrera de 100 metros lisos Femenino </h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="cienmf" onkeyup="myFunction('table[data-name=cienmf]','cienmf')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2 text-black rounded-pill text-center ftextoh3">Cuartos de final</h3>
								<div>
									<table class="table table table-hover " data-name="cienmf" border="1">
										<tr class="text-light columnas">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">					
											<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												
												<tr class="alumno">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2"/>
													</xsl:attribute>
												<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-black text-center rounded-pill ftextoh3">Semifinales</h3>
								<div id="">
									<table class="table table table-hover mytable" data-name="cienmf" border="1">
										<tr class="text-light columnas">
											<th>Nombre/Apellidos</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Femenino'">
												<tr class="alumno text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-black text-center rounded-pill ftextoh3">Finales</h3>
								<div  >
									<table class="table table table-hover" data-name="cienmf" border="1">
										<tr class="text-light columnas">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Femenino'">
												<tr class="alumno">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Femenino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--100 METROS MASCULINO-->
								<h2 class="mt-5  text-center rounded-pill  ftexto">Carrera de 100 metros lisos Masculino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="100m" onkeyup="myFunction('table[data-name=cmm]','100m')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftextoh3">Cuartos de final</h3>
								<div>
									<table class="table table table-hover" data-name="cmm" border="1">
										<tr class="text-light columnas">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class="alumno">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div id="">
									<table class="table table table-hover" data-name="cmm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
												<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div id="">
									<table class="table table table-hover" data-name="cmm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera 100 metros lisos Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera 100 metros lisos Masculino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--1200 METROS FEMENINO-->
								
								<h2 class="mt-5  text-center rounded-pill  ftexto" id="1200f">Carrera de 1200 metros Femenino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="1200fem" onkeyup="myFunction('table[data-name=mildf]','1200fem')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2  text-center rounded-pill   ftextoh3">Cuartos de final</h3>
								<div>
									<table class="table table table-hover " data-name="mildf" border="1">
										<tr class="columnas text-light text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class=" text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div id="">
									<table class="table table table-hover mytable" data-name="mildf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
												<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div  >
									<table class="table table table-hover mytable" data-name="mildf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Femenino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--1200 METROS MASCULINO-->
								
								<h2 class="mt-5  text-center rounded-pill  ftexto">Carrera de 1200 metros Masculino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="mildm" onkeyup="myFunction('table[data-name=mildm]','mildm')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2  text-center rounded-pill  ftextoh3">Cuartos de final</h3>
								<div id="1200m">
									<table class="table table table-hover" data-name="mildm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class=" text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div id="100m">
									<table class="table table table-hover mytable" data-name="mildm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div >
									<table class="table table table-hover mytable" data-name="mildm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Carrera de 1200 metros Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Carrera de 1200 metros Masculino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--Lanzamiento FEMENINO-->
								<h2 class="mt-5 text-center rounded-pill  ftexto" id="lanf">Lanzamiento de peso Femenino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="lapf" onkeyup="myFunction('table[data-name=lapf]','lapf')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto ftextoh3">Cuartos de final</h3>
								<div>
									<table class="table table table-hover" data-name="lapf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="pruebas/prueba/nom_prueba='Lanzamiento Femenino' and pruebas/prueba/eliminatorias/eliminatoria[nom_eli='1 Cuarto']">
												<tr class=" text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div >
									<table class="table table table-hover mytable" data-name="lapf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Lanzamiento Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
												</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div>
									<table class="table table table-hover mytable" data-name="lapf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Lanzamiento Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Femenino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--Lanzamiento MASCULINO-->
								
								<h2 class="mt-5 text-center rounded-pill  ftexto">Lanzamiento de peso Masculino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="lapm" onkeyup="myFunction('table[data-name=lapm]','lapm')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto ftextoh3">Cuartos de final</h3>
								<div id="lanm">
									<table class="table table table-hover " data-name="lapm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Lanzamiento Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class=" text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div id="">
									<table class="table table table-hover " data-name="lapm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Lanzamiento Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div id="">
									<table class="table table table-hover " data-name="lapm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Lanzamiento Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Lanzamiento Masculino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--Salto FEMENINO-->
								<h2 class="mt-5 text-center  rounded-pill ftexto" id="salf">Salto de longitud Femenino</h2>
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="salfem" onkeyup="myFunction('table[data-name=salf]','salfem')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
									<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">
									Inicio  <i class="fas fa-arrow-up"></i>
									</a>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto ftextoh3">Cuartos de final</h3>
								<div >
									<table class="table table table-hover mytable" data-name="salf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Salto Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class="text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div>
									<table class="table table table-hover mytable" data-name="salf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Salto Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div  >
									<table class="table table table-hover mytable" data-name="salf" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='F' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final]/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='F' and pruebas/prueba/nom_prueba='Salto Femenino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Femenino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<!--100 SALTO MASCULINO-->
								<div class="mt-5 rounded-pill ftexto text-center" ><h2 class="d-inline ">Salto de longitud Masculino</h2>		
								</div>
								<!--Buscador con boton de inicio-->
								<div class="mt-2 rounded-pill  bg-warning buscador " >&#160;<h5 class="d-inline "> Buscar </h5>
									<input class="mt-2" type="text" id="salmas" onkeyup="myFunction('table[data-name=salm]','salmas')" placeholder="Nombre Apellido" title="Type in a name"/>&#160;
									<i class="fa-solid fa-magnifying-glass"></i>
										<a class="btn btn-primary btn-sm d-inline me-md-3 mt-2" style="float: right; height:2rem;" href="#Modalidades" role="button">Inicio  <i class="fas fa-arrow-up"></i>
										</a>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto ftextoh3">Cuartos de final</h3>
								<div class="mb-2">
									<table class="table table table-hover" data-name="salm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Salto Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='1 Cuarto'">
												<tr class=" text-dark">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja2" />
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='1 Cuarto']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Semifinales</h3>
								<div id="">
									<table class="table table table-hover mytable" data-name="salm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Salto Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='semi'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja1"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='semi']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								<h3 class="mt-2 text-center rounded-pill  ftexto">Finales</h3>
								<div >
									<table class="table table table-hover mytable" data-name="salm" border="1">
										<tr class="columnas text-light">
											<th>Nombre/Apellido</th>
											<th>Posicion</th>
											<th>Marca</th>
										</tr>
										<xsl:for-each select="Alumnos/Alumno[sexo='M' and (curso='Bachillerato Científico Tecnológico' or curso='Bachillerato Humanístico Social')]">
										<xsl:sort select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion" data-type="number" order="ascending" />
											<xsl:if test="sexo='M' and pruebas/prueba/nom_prueba='Salto Masculino' and pruebas/prueba/eliminatorias/eliminatoria/nom_eli='final'">
												<tr class=" text-light">
													<xsl:attribute name="style">
														<xsl:value-of select="$franja3"/>
													</xsl:attribute>
													<xsl:choose>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=2">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#C0C0C0"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=3">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#CD7F32"></i>
													</td>
													</xsl:when>
													<xsl:when test="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion=1">
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>&#160;
														<i class="fa-solid fa-medal" style="color:#FFD700"></i>
													</td>
													</xsl:when>
													<xsl:otherwise>
													<td>
														<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="Apellido"/>
														
													</td>
													</xsl:otherwise>
												</xsl:choose>
												<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/posicion"/>
													</td>
													<td>
														<xsl:value-of select="pruebas/prueba[nom_prueba='Salto Masculino']/eliminatorias/eliminatoria[nom_eli='final']/marca" />
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</table>
								</div>
								
						
							</div>
						</div>
					</div>
				</div>

			</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
