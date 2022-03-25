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
						height:7vh;
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
					<h2 class="text-warning text-center ftexto">Participantes Bachillerato</h2>

							<div class="table-responsive">
								<table class="table table-hover" border="1">
									<tr class="bg-warning">
										<th>Nombre</th>
										<th>Apellido</th>
										<th>Curso</th>
									</tr>
									<xsl:for-each select="Alumnos/Alumno[curso='Bachillerato Humanístico Social']">
										<tr>
											<xsl:attribute name="style">
												<xsl:value-of select="$franja3" />
											</xsl:attribute>
											<td>
												<xsl:value-of select="nombre" />
											</td>
											<td>
												<xsl:value-of select="Apellido" />
											</td>
											<td>
												<xsl:value-of select="curso" />
											</td>
										</tr>
									</xsl:for-each>
									<xsl:for-each select="Alumnos/Alumno[curso='Bachillerato Científico Tecnológico']">
										<tr>
											<xsl:attribute name="style">
												<xsl:value-of select="$franja3" />
											</xsl:attribute>
											<td>
												<xsl:value-of select="nombre" />
											</td>
											<td>
												<xsl:value-of select="Apellido" />
											</td>
											<td>
												<xsl:value-of select="curso" />
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</div>
							<h2 class="text-warning text-center ftexto">Participantes ESO</h2>
							<div class="table-responsive">
								<table class="table table-hover" border="1">
									<tr class="bg-warning">
										<th>Nombre</th>
										<th>Apellido</th>
										<th>Curso</th>
									</tr>
									<xsl:for-each select="Alumnos/Alumno[curso='4 ESO']">
										<tr>
											<xsl:attribute name="style">
												<xsl:value-of select="$franja3" />
											</xsl:attribute>
											<td>
												<xsl:value-of select="nombre" />
											</td>
											<td>
												<xsl:value-of select="Apellido" />
											</td>
											<td>
												<xsl:value-of select="curso" />
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</div>

				</div>
<div class="mt-2 text-white text-center fixed-bottom pie">
					<p><a href="https://www.facebook.com/monlau.fp"><i class="fa-brands fa-facebook-square"></i></a>&#160;&#160;&#160;<a href="https://twitter.com/Monlau_FP"><i class="fa-brands fa-twitter-square"></i></a>&#160;&#160;&#160;<a href="https://www.instagram.com/monlau_fp/"><i class="fa-brands fa-instagram"></i></a></p>
				</div>

			</body>
		</html>

	</xsl:template>

</xsl:stylesheet>