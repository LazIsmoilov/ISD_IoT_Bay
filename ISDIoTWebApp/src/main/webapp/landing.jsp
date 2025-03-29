<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>IoT Bay - Premium Tech Solutions</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --primary: #0066cc;
      --primary-light: #3b82f6;
      --primary-dark: #1d4ed8;
      --accent: #ff9900;
      --accent-hover: #e68a00;
      --glass-white: rgba(255, 255, 255, 0.9);
      --glass-border: rgba(0, 0, 0, 0.08);
      --text-dark: #333333;
      --text-medium: #555555;
      --text-light: #777777;
      --shadow-light: rgba(0, 0, 0, 0.05);
    }

    /* Base Styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background-color: white;
      color: var(--text-dark);
      line-height: 1.6;
      min-height: 100vh;
      padding: 2rem;
    }

    /* Layout */
    .welcome-container {
      max-width: 1200px;
      margin: 0 auto;
    }

    /* Glassmorphism Elements (modified for light theme) */
    .glass-card {
      background: var(--glass-white);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-radius: 16px;
      border: 1px solid var(--glass-border);
      box-shadow: 0 4px 24px var(--shadow-light);
      padding: 2rem;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .glass-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
    }

    /* Typography */
    h1 {
      font-size: 2.75rem;
      font-weight: 700;
      margin-bottom: 1.5rem;
      color: var(--primary);
      line-height: 1.2;
    }

    .welcome-message {
      font-size: 1.1rem;
      margin-bottom: 2rem;
      line-height: 1.8;
      color: var(--text-medium);
    }

    /* Stats Section */
    .stats {
      display: flex;
      gap: 2rem;
      margin: 3rem 0;
      flex-wrap: wrap;
      justify-content: center;
    }

    .stat-item {
      background: white;
      color: var(--primary);
      padding: 1.5rem 2rem;
      border-radius: 12px;
      text-align: center;
      min-width: 150px;
      box-shadow: 0 4px 12px var(--shadow-light);
      border: 1px solid var(--glass-border);
    }

    .stat-number {
      font-size: 2rem;
      font-weight: 700;
      color: var(--primary);
    }

    .stat-label {
      font-size: 0.9rem;
      color: var(--text-light);
    }

    /* Features Section */
    .features {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
      margin-top: 3rem;
    }

    .feature-card {
      background: var(--glass-white);
      backdrop-filter: blur(8px);
      border-radius: 12px;
      padding: 2rem;
      transition: all 0.3s ease;
      border: 1px solid var(--glass-border);
      box-shadow: 0 4px 16px var(--shadow-light);
    }

    .feature-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    }

    .feature-title {
      color: var(--primary-dark);
      margin-bottom: 1rem;
      font-size: 1.25rem;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .feature-title i {
      color: var(--accent);
    }

    .feature-desc {
      font-size: 0.95rem;
      color: var(--text-medium);
      line-height: 1.7;
    }

    /* Responsive */
    @media (max-width: 768px) {
      body {
        padding: 1.5rem;
      }

      h1 {
        font-size: 2rem;
      }

      .stats {
        gap: 1rem;
      }

      .stat-item {
        flex-grow: 1;
        padding: 1.25rem;
      }

      .features {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>
<div class="welcome-container">
  <div class="glass-card">
    <h1>Welcome to IoT Bay</h1>
    <p class="welcome-message">
      Your premier destination for high-quality IoT devices and technology solutions.
      Explore our extensive collection of smart devices, components, and accessories
      that will transform your digital experience.
    </p>
  </div>

  <div class="stats">
    <div class="stat-item">
      <div class="stat-number">6</div>
      <div class="stat-label">Registered Users</div>
    </div>
    <div class="stat-item">
      <div class="stat-number">50+</div>
      <div class="stat-label">Products</div>
    </div>
    <div class="stat-item">
      <div class="stat-number">24/7</div>
      <div class="stat-label">Support</div>
    </div>
  </div>

  <div class="features">
    <div class="feature-card">
      <h3 class="feature-title"><i class="fas fa-star"></i> Premium Devices</h3>
      <p class="feature-desc">
        Discover our curated selection of high-performance IoT devices from
        trusted manufacturers worldwide.
      </p>
    </div>
    <div class="feature-card">
      <h3 class="feature-title"><i class="fas fa-lock"></i> Secure Shopping</h3>
      <p class="feature-desc">
        Enjoy peace of mind with our encrypted transactions and privacy-focused
        purchasing experience.
      </p>
    </div>
    <div class="feature-card">
      <h3 class="feature-title"><i class="fas fa-headset"></i> Expert Support</h3>
      <p class="feature-desc">
        Our team of IoT specialists is available to help you find the perfect
        solutions for your needs.
      </p>
    </div>
  </div>
</div>
</body>
</html>