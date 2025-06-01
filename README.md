<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Inline GitHub Style File Tree</title>
</head>
<body style="font-family: 'Segoe UI', sans-serif; background: #f6f8fa; padding: 20px;">

<div style="max-width: 400px; background: #fff; border: 1px solid #d0d7de; border-radius: 6px; padding: 10px 20px; box-shadow: 0 1px 2px rgba(0,0,0,0.1);">

  <div onclick="toggle(this)" style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
    📂 Getting Started
  </div>
  <div class="nested" style="display: none; padding-left: 20px;">
    <a href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Getting%20Started" 
       style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
       📄 Getting Started
    </a>
    <a href="https://github.com/t-swami/HDL-Bits/tree/main/Getting%20Started/Output%20Zero" 
       style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
       📄 Output Zero
    </a>
  </div>

  <div onclick="toggle(this)" style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
    📂 Verilog Language
  </div>
  <div class="nested" style="display: none; padding-left: 20px;">
    <div onclick="toggle(this)" style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
      📂 Basics
    </div>
    <div class="nested" style="display: none; padding-left: 20px;">
      <a href="https://github.com/t-swami/HDL-Bits/blob/main/Verilog%20Language/Basics/Simple%20wire.v" 
         style="display: block; padding: 5px 0; cursor: pointer; color: #0969da; font-size: 14px; text-decoration: none;">
         📄 Simple Wire
      </a>
    </div>
  </div>

</div>

<script>
  function toggle(el) {
    const next = el.nextElementSibling;
    if (next && next.classList.contains("nested")) {
      next.style.display = next.style.display === "block" ? "none" : "block";
    }
  }
</script>

</body>
</html>
