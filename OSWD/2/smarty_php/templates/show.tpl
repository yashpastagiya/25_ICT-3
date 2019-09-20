<html lang="en">

<body>
<div class="row">
  <div class="col-md-12">
    <div class="page-header clearfix">
      <h2 class="pull-left">Category Details</h2>
     
    </div>
    <table class="table table-bordered table-striped" border="1">
      <thead>
        <tr>
          <th scope="col">Id</th>
          <th scope="col">Categories</th>
        </tr>
      </thead>
      <tbody>
      {if $rows}
              {section name=row loop=$rows}
                  <tr>
                       {foreach from=$rows[row] key="key" item="Value"}
                       <td scope="col">{$Value}</td>
                  {/foreach}     
               </tr>
               {/section}
               {else}
               <h1>NO ROWS FOUND</h1>
               {/if} 
      </tbody>

      </table>
 
</body>
</html>
