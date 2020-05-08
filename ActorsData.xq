(: FLWOR :)
<html>
<head>
  <title>Actors</title>
</head>
<body>
  <table>
    {
      for $actor in doc("movies")/movies/movie/actors/actor
      order by $actor/name
      return 
      <tr>
        <td>{$actor/name/text()}</td>
        <td>{$actor/age/text()}</td>
      </tr>
    }
  </table>
</body>
</html>