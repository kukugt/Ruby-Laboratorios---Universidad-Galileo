<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                        <div class="page-header">
  <h1>Laboratorio #1 <small><strong>Ruby 101</strong></small></h1>
</div>
<!--<p class="meta">16 Jan 2014</p>-->

<div class="post">
<h2 id="objetivos">Objetivos</h2>

<p>Esta práctica es para familizarizarse con Ruby, el lenguaje con el que trabajarán el resto del curso.<br>Los objetivos para este laboratorio son:</p>

<ul>
<li>Que tomen práctica programando en Ruby.</li>

<li>Apliquen los temas vistos en clase sobre Ruby.</li>
</ul>
<hr>
<h2 id="descripcin">Descripción</h2>

<p>Debe completar los ejercicios listados a continuación. Usted ya sabe programar, solo necesita estudiar la sintaxis del lenguaje nuevo y realizar algunos ejercicios para adaptarse.<br>Contará con el apoyo de sus auxiliares, y por supuesto, Google.</p>
<hr>
<h2 id="ambiente_de_trabajo">Ambiente de trabajo</h2>

<p>Necesita una instalación de Ruby para poder completar este laboratorio, la recomendación del chef es instalar Ruby utilizando <a href="http://rvm.io">RVM</a> Puede trabajar en el sistema operativo de su elección, pero le recomendamos utilizar alguna distribución de Linux, o Mac OS en su defecto.</p>

<p>Si no desea instalar Ruby, puede descargar la máquina virtual de <a href="https://www.dropbox.com/s/n3exax2mm81aoi0/ubuntu12.04.ova">Ubuntu 12.04</a> preparada por el equipo docente, la cual ya incluye Ruby 2.0 y Rails.</p>
<hr>
<h2 id="1_include_rubymodule">1. include RubyModule</h2>

<p>Defina un modulo con las siguientes funciones:</p>

<p><strong>NOTA</strong>: Debe implementar las funciones <strong>a mano</strong>, no puede utilizar un método ya existente que resuelva el problema especifico.</p>

<p>a) <code>boolean palindromo?(string s)</code>: Función que determina si un string conteniendo una palabra o frase es un palindromo, devolviendo un booleano. Debe ingnorar todo lo que no sea una letra, por ejemplo: “A man, a plan, a canal – Panama” es un palíndromo. Como recomendación considere el uso de expresiones regulares. Puede ayudarse en este <a href="http://rubular.com">enlace</a></p>

<p>b) <code>Hash cuenta_palabras(string s)</code>: Función que recibe un string con una frase como argumento, y devuelve un Hash, en donde las llaves son las palabras de la frase, y el valor es la cantidad de veces que dicha palabra aparece en la frase.</p>

<p>c) <code>void hanoi(int numero_discos, int t_origen, int t_destino, int t_alterna)</code>: Procedimiento que imprime los pasos para resolver el juego Torres de Hanoi.</p>

<p>d) <code>Array sort(Array a, boolean asc)</code>: Función que recibe un arreglo y devuelve una <strong>copia</strong> del arreglo ordenado, ascendente o descendentemente, según se indique.</p>

<p>e) <code>int char_count(string s, char c)</code>: Función que devuelve la cantidad de ocurrencias de un caracter c en un string s.</p>

<p>f) <code>int atoi(string s)</code>: Función que recibe un string representando un entero con signo (en base 10) como argumento y devuelve ese numero en un entero.</p>

<h2 id="2_basic_oop">2. Basic OOP</h2>

<p>a) Defina una clase <code>Dessert</code> con <code>getters</code> y <code>setters</code> para los atributos <code>name</code>, <code>size</code> y <code>calories</code>. Defina metodos de instancia <code>healthy?</code>, que devuelve <code>true</code> si un postre tiene menos de 200 calorias, y <code>delicious?</code>, que devuelve <code>true</code> para todos los postres.</p>

<p>b) Defina una clase <code>JellyBean</code> que herede de <code>Dessert</code>, y agrege un <code>getter</code> y <code>setter</code> para <code>flavor</code>. Modique <code>delicious?</code> para que devuelva <code>false</code> si el valor de <code>flavor</code> es “black licorice” (pero <code>delicious?</code> aun debe devolver <code>true</code> para el resto de sabores y para todos los postres que no sean <code>JellyBean</code>).</p>

<p>c) Agregue un método de clase <code>count</code> a <code>Dessert</code>, el cual lleve la cuenta de todos los postres que se hayan instanciado.</p>

<p>Aquí tiene algo de codigo base, para que no tenga que iniciar desde cero (puede agregar métodos adicionales):</p>
<div class="highlight"><pre><code class="ruby"><span class="k">class</span> <span class="nc">Dessert</span>
    <span class="k">def</span> <span class="nf">initialize</span><span class="p">(</span><span class="nb">name</span><span class="p">,</span> <span class="n">calories</span><span class="p">)</span>
      <span class="c1"># YOUR CODE HERE</span>
    <span class="k">end</span>
    
    <span class="k">def</span> <span class="nf">healthy?</span>
      <span class="c1"># YOUR CODE HERE</span>
    <span class="k">end</span>
    
    <span class="k">def</span> <span class="nf">delicious?</span>
      <span class="c1"># YOUR CODE HERE</span>
    <span class="k">end</span>
    
    <span class="k">def</span> <span class="nf">to_s</span>
      <span class="c1"># YOUR CODE HERE</span>
    <span class="k">end</span>
<span class="k">end</span>

<span class="k">class</span> <span class="nc">JellyBean</span> <span class="o">&lt;</span> <span class="no">Dessert</span>
    <span class="k">def</span> <span class="nf">initialize</span><span class="p">(</span><span class="nb">name</span><span class="p">,</span> <span class="n">calories</span><span class="p">,</span> <span class="n">flavor</span><span class="p">)</span>
      <span class="c1"># YOUR CODE HERE</span>
    <span class="k">end</span>
<span class="k">end</span>
</code></pre></div>
<h2 id="3_modules_strikes_back">3. Modules strikes back!</h2>

<p>Examine el siguiente código:</p>
<div class="highlight"><pre><code class="ruby"><span class="k">module</span> <span class="nn">Action</span>
  <span class="k">def</span> <span class="nf">jump</span>
    <span class="vi">@distance</span> <span class="o">=</span> <span class="nb">rand</span><span class="p">(</span><span class="mi">4</span><span class="p">)</span> <span class="o">+</span> <span class="mi">2</span>
    <span class="nb">puts</span> <span class="s2">"I jumped forward </span><span class="si">#{</span><span class="vi">@distance</span><span class="si">}</span><span class="s2"> feet!"</span>
  <span class="k">end</span>
<span class="k">end</span>

<span class="k">class</span> <span class="nc">Rabbit</span>
  <span class="kp">include</span> <span class="no">Action</span>
  
  <span class="kp">attr_reader</span> <span class="ss">:name</span>
  
  <span class="k">def</span> <span class="nf">initialize</span><span class="p">(</span><span class="nb">name</span><span class="p">)</span>
    <span class="vi">@name</span> <span class="o">=</span> <span class="nb">name</span>
  <span class="k">end</span>
<span class="k">end</span>

<span class="k">class</span> <span class="nc">Cricket</span>
  
  <span class="kp">attr_reader</span> <span class="ss">:name</span>
  
  <span class="k">def</span> <span class="nf">initialize</span><span class="p">(</span><span class="nb">name</span><span class="p">)</span>
    <span class="vi">@name</span> <span class="o">=</span> <span class="nb">name</span>
  <span class="k">end</span>
<span class="k">end</span>

<span class="n">peter</span> <span class="o">=</span> <span class="no">Rabbit</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Peter"</span><span class="p">)</span>
<span class="n">jiminy</span> <span class="o">=</span> <span class="no">Cricket</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Jiminy"</span><span class="p">)</span>

<span class="n">peter</span><span class="o">.</span><span class="n">jump</span>
<span class="n">jiminy</span><span class="o">.</span><span class="n">jump</span>
</code></pre></div>
<p>Agregue lo necesario de forma que ambas clases tengan un método <code>run</code>, el cual hace correr al <em>objeto</em> 10 metros. Dependiendo de la <code>velocidad</code> del <em>objeto</em>, la ejecución del método debe tomar más o menos tiempo en completarse. Al terminar el método debe imprimir un mensaje indicando la distancia recorrida, y el tiempo (en segundos) que tardó.</p>

<p>Agregue a la clase <code>Cricket</code> un método llamado <code>chirp</code>, el cual imprime el mensaje “Chirp… chirp!!” un número aleatorio de veces, no menor de 10, y no mayor de 100.</p>

<h2 id="4_virtualizing_computers">4. Virtualizing computers</h2>

<p>Considere la siguiente sección de código:</p>
<div class="highlight"><pre><code class="ruby"><span class="k">class</span> <span class="nc">Computer</span>
    <span class="vc">@@users</span> <span class="o">=</span> <span class="p">{}</span>
    
    <span class="k">def</span> <span class="nf">initialize</span> <span class="n">username</span><span class="p">,</span> <span class="n">password</span>
        <span class="vi">@username</span> <span class="o">=</span> <span class="n">username</span>
        <span class="vi">@password</span> <span class="o">=</span> <span class="n">password</span>
        
        <span class="vi">@files</span> <span class="o">=</span> <span class="p">{}</span>
    <span class="k">end</span>
<span class="k">end</span>
</code></pre></div>
<p>Agregue un método <code>create</code>, el cual <em>crea un nuevo archivo</em> en la computadora, el archivo debe llevar un <strong>nombre</strong>, y una <strong>fecha de creación</strong> (la hora actual). Este método debe <strong>insertar</strong> el archivo creado a la lista de <em>archivos</em> de la computadora, esta lista es un <code>Hash</code>, en donde la llave es el nombre del archivo, y el valor es la hora de creación. Debe recibir el nombre del archivo como argumento. Este método imprimir un error, si se intenta sobre escribir un archivo.</p>

<p>Además, agregue un método <code>ls</code>, el cual imprime en pantalla una lista con los archivos dentro de la computadora, ordenados alfabéticamente. Debe imprimir cada archivo en una línea diferente, con el siguiente formato <code>test.rb created at 09/01/2014 10:00 AM</code>. Este método debe poder recibir un hash opcional, el cual puede incluir como llave ‘sort’, y como valor ‘asc’ o ‘desc’, y cambiar el orden apropiadamente.</p>

<p>Por último, agregue un método <code>rm</code>, el cual recibe como argumento el nombre de un archivo, y lo elimina de la lista. Debe imprimir un error si se intenta eliminar un archivo no existente.</p>

<h2 id="ejecutando_su_programa">Ejecutando su programa</h2>

<p>Ruby incluye un intérprete interactivo, conocido comúnmente como <code>irb</code>. Este intérprete le permite introducir instrucciones al intérprete de forma interactiva.</p>
<div class="highlight"><pre><code class="console"><span class="gp">$</span> irb
<span class="go">2.0.0p247 :001 &gt; puts 'hello world'</span>
<span class="go">hello world</span>
<span class="go"> =&gt; nil </span>
<span class="go">2.0.0p247 :002 &gt;</span>
</code></pre></div>
<p>Adicionalmente, puede ejecutar un programa de Ruby de la siguiente forma:</p>
<div class="highlight"><pre><code class="console"><span class="gp">$</span> ruby mi_programa.rb
</code></pre></div>
<p>Ó desde irb:</p>
<div class="highlight"><pre><code class="console"><span class="gp">$</span> irb
<span class="go">2.0.0p247 :001 &gt; require './mi_programa'</span>
</code></pre></div><hr>
<h2 id="entrega">Entrega</h2>

<p>La entrega se realizará a través del <code>GES</code> antes de las <strong>23:55:00</strong> del día <strong>Miércoles 26 de marzo 2014</strong>, debe enviar un link a un repositorio de github conteniendo todos sus programas.</p>
<hr>
</div>

                    </div>