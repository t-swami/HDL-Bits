<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GitHub Style File Tree</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f6f8fa;
      padding: 20px;
    }

    .file-tree {
      max-width: 400px;
      background: #fff;
      border: 1px solid #d0d7de;
      border-radius: 6px;
      padding: 10px 20px;
      box-shadow: 0 1px 2px rgba(0,0,0,0.1);
    }

    .folder, .file {
      display: block;
      padding: 5px 0;
      cursor: pointer;
      color: #0969da;
      font-size: 14px;
      text-decoration: none;
    }

    .folder:hover, .file:hover {
      text-decoration: underline;
    }

    .folder::before {
      content: "📂 ";
    }

    .file::before {
      content: "📄 ";
    }

    .nested {
      display: none;
      padding-left: 20px;
    }

    .active {
      display: block;
    }
  </style>
</head>
<body>

<div class="file-tree">
  <div class="folder" onclick="toggle(this)">Getting Started</div>
  <div class="nested">
    <a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Getting%20Started">Getting Started</a>
    <a class="file" href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Output%20Zero">Output Zero</a>
  </div>

  <div class="folder" onclick="toggle(this)">Verilog Language</div>
  <div class="nested">
    <div class="folder" onclick="toggle(this)">Basics</div>
    <div class="nested">
      <a class="file" href="https://github.com/t-swami/HDL-Bits/blob/main/Verilog%20Language/Basics/Simple%20wire.v">Simple Wire</a>
    </div>
  </div>
</div>

<script>
  function toggle(el) {
    const nested = el.nextElementSibling;
    if (nested) nested.classList.toggle('active');
  }
</script>

</body>
</html>
