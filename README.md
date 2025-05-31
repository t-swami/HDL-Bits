<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Collapsible File Tree</title>
  <style>
    ul {
      list-style-type: none;
      padding-left: 20px;
    }
    .folder {
      cursor: pointer;
      font-weight: bold;
    }
    .file {
      cursor: pointer;
      font-style: italic;
    }
    .nested {
      display: none;
    }
    .active {
      display: block;
    }
  </style>
</head>
<body>

<ul>
  <li>
    <span class="folder" onclick="toggle(this)">📂 Getting Started</span>
    <ul class="nested">
      <li><a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Getting%20Started">📄 Getting Started</a></li>
      <li><a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Output%20Zero">📄 Output Zero</a></li>
    </ul>
  </li>
  <li>
    <span class="folder" onclick="toggle(this)">📂 Verilog Language</span>
    <ul class="nested">
      <li>
        <span class="folder" onclick="toggle(this)">📂 Basics</span>
        <ul class="nested">
          <li><a class="file" href="https://github.com/t-swami/HDL-Bits/blob/main/Verilog%20Language/Basics/Simple%20wire.v">📄 Simple Wire</a></li>
          
        </ul>
      </li>
    </ul>
  </li>
</ul>

<script>
  function toggle(element) {
    const nested = element.nextElementSibling;
    nested.classList.toggle("active");
  }
</script>

</body>
</html>
