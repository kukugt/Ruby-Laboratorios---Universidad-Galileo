<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
	<div class="page-header">
		<h1>Laboratorio #2 <small><strong>Active Record</strong></small></h1>
	</div>
	<!--<p class="meta">16 Feb 2014</p>-->
	<div class="post">
		<h2 id="objetivos">Objetivos</h2>
		<p>Esta práctica es para familizarizarse con Ruby on Rails, el framework con el que trabajarán el resto del curso.<br>Los objetivos para este laboratorio son:</p>
		<ul>
			<li>Entender la abstraccion creada por el Active Record de Rails para acceder y manipular información de una base de datos mediante programación orientada a objetos.</li>
			<li>Aprender las funciones basicas provistas por Active Record.</li>
			<li>Aprender a utilizar las herramientas de consola de Rails.</li>
		</ul>
		<hr>
		<h2 id="ambiente_de_trabajo">Ambiente de trabajo</h2>
		<p>Necesita una instalación de Ruby para poder completar este laboratorio, la recomendación del chef es instalar Ruby utilizando <a href="http://rvm.io">RVM</a> Puede trabajar en el sistema operativo de su elección, pero le recomendamos utilizar alguna distribución de Linux, o Mac OS en su defecto.</p>
		<p>Si no desea instalar Ruby, puede descargar la máquina virtual de <a href="https://www.dropbox.com/s/n3exax2mm81aoi0/ubuntu12.04.ova">Ubuntu 12.04</a> preparada por el equipo docente, la cual ya incluye Ruby 2.0 y Rails.</p>
		<hr>
		<h2 id="descripcin">Descripción</h2>
		<p>Durante las siguientes 7 semanas estará trabajando en construir un RESTful API, utilizando las herramientas de Ruby on Rails como base. En este laboratorio dará los primeros pasos hacia ese objetivo, comenzará desde abajo, definiendo un modelo de datos.</p>
		<p>Por cierto, le gusta el fútbol? …Claro que sí le gusta, a todo el mundo le gusta. :)</p>
		<p>Tenemos excelentes noticias para usted, el API que construirá estará basado en el próximo mundial, a celebrarse en Brasil, (pero usted ya sabe esto).</p>
		<p>Un mundial, es un evento muy importante, por lo que es crítico que construya un API que permita a un desarrollador construir aplicaciones que atraigan a los cientos de millones de aficionados a este deporte.</p>
		<hr>
		<h2 id="1_modelo_de_datos">1. Modelo de datos</h2>
		<p>Queremos representar un mundial de fútbol por medio de un API, ¿qué elementos considera importantes?</p>
		<p>Seguramente usted está pensando en los equipos, muy bien. Ahora seguro se recordó que estos equipos están organizados en grupos, cada grupo de 4 equipos. Vamos muy bien esta ahora. ¿Dónde juegan esos equipos? En varias sedes al rededor de Brasil. Y claro, los partidos, cada partidos se juega en un estadio, entre dos equipos, un local, y un visitante.</p>
		<p>Recopilemos, hasta ahora identificamos lo siguiente:</p>
		<ul>
			<li>Equipos</li>
			<li>Grupos</li>
			<li>Estadios</li>
			<li>Partidos</li>
		</ul>
		<p>Vamos por partes.</p>
		<h3 id="equipos">Equipos</h3>
		<p>En un mundial de fútbol pariticipan un total de 32 equipos, cada uno en representación de un país. Necesitamos una forma de llevar un registro por cada uno de estos equipos, y sus acciones dentro del torneo. Vamos a representar esto por medio de una tabla de base de datos, y un modelo.</p>
		<h4 id="qu_informacin_nos_interesa_capturar">¿Qué información nos interesa capturar?</h4>
		<ul>
			<li>Nombre del equipo (país)</li>
			<li>Nombre del entrenador</li>
			<li>Bandera del país (url a imagen)</li>
			<li>Uniforme del equipo (url a imagen)</li>
			<li>Texto que narre un poco sobre la historia de este equipo en mundiales, así como su proceso de clasificación al torneo actual.</li>
		</ul>
		<p>Defina una tabla de base de datos que pueda almacenar los datos descritos, y un modelo de ActiveRecord para dicha tabla.</p>
		<div class="highlight">
			<pre><code class="ruby"><span class="k">class</span> <span class="nc">Team</span> <span class="o">&lt;</span> <span class="no">ActiveRecord</span><span class="o">::</span><span class="no">Base</span>
    <span class="c1"># code</span>
<span class="k">end</span>
</code></pre>
		</div>
		<h3 id="grupos">Grupos</h3>
		<p>La primera fase del torneo se lleva acabo entre grupos. Los 32 equipos clasificados se dividen en 8 grupos, del A al H. Cada grupo está compuesto por 4 equipos.</p>
		<h4 id="qu_informacin_nos_interesa_capturar_2">¿Qué información nos interesa capturar?</h4>
		<ul>
			<li>Nombre del grupo</li>
		</ul>
		<p>Defina una tabla de base de datos que pueda almacenar los datos descritos, y un modelo de ActiveRecord para dicha tabla.</p>
		<div class="highlight">
			<pre><code class="ruby"><span class="k">class</span> <span class="nc">Group</span> <span class="o">&lt;</span> <span class="no">ActiveRecord</span><span class="o">::</span><span class="no">Base</span>
  <span class="c1"># code</span>
<span class="k">end</span>
</code></pre>
		</div>
		<h3 id="estadios">Estadios</h3>
		<p>Como sabe, un partido de fútbol se lleva acabo en un estadio. En Brasil 2014 tendremos un total de 12 estadios.</p>
		<h4 id="qu_informacin_nos_interesa_capturar_3">¿Qué información nos interesa capturar?</h4>
		<ul>
			<li>Nombre</li>
			<li>Ciudad</li>
			<li>Fecha de construcción</li>
			<li>Capacidad máxima (personas)</li>
			<li>Foto (url a imagen)</li>
		</ul>
		<p>Defina una tabla de base de datos que pueda almacenar los datos descritos, y un modelo de ActiveRecord para dicha tabla.</p>
		<div class="highlight">
			<pre><code class="ruby"><span class="k">class</span> <span class="nc">Stadium</span> <span class="o">&lt;</span> <span class="no">ActiveRecord</span><span class="o">::</span><span class="no">Base</span>
  <span class="c1"># code</span>
<span class="k">end</span>
</code></pre>
		</div>
		<h3 id="partidos">Partidos</h3>
		<p>Los partidos es la parte más interesante del mundial, cada equipo deja todo de si en el campo buscando la victoria.</p>
		<h4 id="qu_informacin_nos_interesa_capturar_4">¿Qué información nos interesa capturar?</h4>
		<ul>
			<li>Fecha del juego</li>
			<li>Fase (fase de grupos, octavos de final, semi-finales, etc.)</li>
			<li>Estado (por jugar, en juego, finalizado)</li>
			<li>Equipo local</li>
			<li>Equipo visitante</li>
			<li>Marcador (goles del local, y goles del visitante)</li>
			<li>Ganador</li>
			<li>Perdedor</li>
			<li>Empate?</li>
			<li>Grupo</li>
			<li>Estadio</li>
		</ul>
		<p>Note que necesita una <strong>referencia</strong> para el equipo local, y otra <strong>referencia</strong> para el equipo visitante. Lo mismo para el grupo, y el estadio. Por convenio, las referencias deben tener un nombre que termina en <code>_id</code>, por ejemplo: <code>team_id</code>, o <code>group_id</code>.</p>
		<p>Rails le permite definir una referencia de 2 formas, utilizando el tipo de dato <code>reference</code>, o el tipo <code>integer</code>.</p>
		<p>Un partido se juega en <strong>una</strong> fase del torneo, las fases son las siguientes:</p>
		<ul>
			<li>Grupos</li>
			<li>Octavos de final (eliminación)</li>
			<li>Cuartos de final (eliminación)</li>
			<li>Semifinales (eliminación)</li>
			<li>Final</li>
		</ul>
		<p>Un partido puede encontrarse en <strong>uno</strong> de varios estados:</p>
		<ul>
			<li>Por jugar</li>
			<li>En juego</li>
			<li>Finalizado</li>
		</ul>
		<p>¿Cómo almacenar esta información? Como diseñador del API, queda a su discreción. ¿Un string? ¿Un entero? ¿?</p>
		<p>Defina una tabla de base de datos que pueda almacenar los datos descritos, y un modelo de ActiveRecord para dicha tabla.</p>
		<div class="highlight">
			<pre><code class="ruby"><span class="k">class</span> <span class="nc">Match</span> <span class="o">&lt;</span> <span class="no">ActiveRecord</span><span class="o">::</span><span class="no">Base</span>
  <span class="c1"># code</span>
<span class="k">end</span>
</code></pre>
		</div>
		<hr>
		<h2 id="recordatorio">Recordatorio</h2>
		<p>Recuerde que Rails provee generadores para facilitarle la vida. No estamos obligados a utilizar generadores, podemos crear todo a mano, pero esto nos deja la responsabilidad de cuidar que escribamos todo correctamente, en el lugar correcto (migraciones en el folder de migraciones, modelos en el folder de modelos, etc.) por lo que es mejor práctica utilizar un generador, el cual es un método más cómodo.</p>
		<h3 id="migraciones">Migraciones</h3>
		<p>Para crear una tabla de base de datos, debe utilizar una <strong>migración</strong>.</p>
		<p>Puede crear una <code>migración</code> con el siguiente comando:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails g migration
</code></pre>
		</div>
		<p>Una vez creada la migración, debe ejecutarla:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails db:migrate
</code></pre>
		</div>
		<h3 id="modelos">Modelos</h3>
		<p>Para crear un modelo, también tenemos un generador:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails g model
</code></pre>
		</div>
		<h3 id="notas_adicionales">Notas adicionales</h3>
		<p>Antes de poder ejecutar una migración, debe crear su base de datos, lo cual es súmamente fácil:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails db:create
</code></pre>
		</div>
		<p>Si se está preguntando cómo puede destruir una base de datos, es muy fácil también:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails db:drop
</code></pre>
		</div>
		<h3 id="cmo_lo_pruebo">¿Cómo lo pruebo?</h3>
		<p>Rails le dará un error si intenta ejecutar una migración con errores de sintaxis, o si definió un modelo para una tabla no existente, o con errores.</p>
		<p>Recuerde que el convenio de Rails define las tablas en <strong>plural</strong>, y los modelos en <strong>singular</strong>. Por ejemplo, tendremos una tabla <code>groups</code>, y un modelo <code>Group</code>.</p>
		<p>Para interactuar con sus modelos, puede utilizar la consola de Rails:</p>
		<div class="highlight">
			<pre><code class="console"><span class="go">  $ rails console</span>
<span class="go">  # también se puede</span>
<span class="go">  $ rails c</span>
</code></pre>
		</div>
		<p>Una vez dentro de la consola, debe poder hacer llamadas sobre su modelo, por ejemplo:</p>
		<div class="highlight">
			<pre><code class="console"><span class="gp">$</span> rails c
<span class="go">Loading development environment (Rails 4.0.2)</span>
<span class="go">2.0.0p247 :001 &gt; Group.new</span>
<span class="gp">#</span>&lt;Group id: nil, name: nil, created_at: nil, updated_at: nil&gt;
<span class="go">2.0.0p247 :004 &gt; Group.find(1)</span>
<span class="go">  Group Load (3.8ms)  SELECT "groups".* FROM "groups" WHERE "groups"."id" = ? LIMIT 1  [["id", 1]]</span>
<span class="go"> =&gt; #&lt;Group id: 1, name: "A", created_at: "2014-03-02 22:10:48", updated_at: "2014-03-02 22:10:48"&gt; </span>
</code></pre>
		</div>
		<p>Para salir de la consola escriba <em>exit</em>.</p>
		<hr>
		<h2 id="entrega">Entrega</h2>
		<p>Debe entregar todo el directorio del proyecto, con una migración por cada tabla, y un modelo para cada una de esas tablas.</p>
		<p>La entrega se realizará a través del <code>GES</code> antes de las <strong>23:55:00</strong> del día <strong>Miércoles 2 de abril 2014</strong>, debe enviar un link a un repositorio de github de su proyecto.</p>
		<hr>
	</div>
</div>
