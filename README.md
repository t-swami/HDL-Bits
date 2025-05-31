<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Modern File Tree</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 20px;
    }

    ul.tree, .tree ul {
      list-style: none;
      padding-left: 20px;
      position: relative;
    }

    .tree li {
      margin: 4px 0;
      position: relative;
    }

    .tree span.folder::before {
      content: "▶";
      display: inline-block;
      width: 1em;
      margin-right: 5px;
      transition: transform 0.2s;
    }

    .tree span.folder.expanded::before {
      transform: rotate(90deg);
    }

    .tree span.folder {
      cursor: pointer;
      font-weight: 600;
      color: #2c3e50;
    }

    .tree a.file {
      text-decoration: none;
      color: #3498db;
      font-style: normal;
      margin-left: 20px;
      display: block;
    }

    .nested {
      display: none;
    }

    .active {
      display: block;
    }

    .tree a.file:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

<ul class="tree">
  <li>
    <span class="folder" onclick="toggle(this)">📁 Getting Started</span>
    <ul class="nested">
      <li><a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Getting%20Started">📄 Getting Started</a></li>
      <li><a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Output%20Zero">📄 Output Zero</a></li>
    </ul>
  </li>
  <li>
    <span class="folder" onclick="toggle(this)">📁 Verilog Language</span>
    <ul class="nested">
      <li>
        <span class="folder" onclick="toggle(this)">📁 Basics</span>
        <ul class="nested">
          <li><a class="file" href="https://github.com/t-swami/HDL-Bits/blob/main/Verilog%20Language/Basics/Simple%20wire.v">📄 Simple Wire</a></li>
        </ul>
      </li>
    </ul>
  </li>
</ul>

<script>
  function toggle(element) {
    element.classList.toggle("expanded");
    const nested = element.nextElementSibling;
    if (nested) {
      nested.classList.toggle("active");
    }
  }
</script>

</body>
</html>
