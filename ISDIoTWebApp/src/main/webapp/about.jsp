<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About IoTBay - Pioneering IoT Solutions</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4361ee;
      --primary-light: #4895ef;
      --primary-dark: #3a0ca3;
      --accent: #f72585;
      --text-dark: #2b2d42;
      --text-medium: #4a4e69;
      --text-light: #8e9aaf;
      --bg-light: #f8f9fa;
      --bg-gradient: linear-gradient(135deg, #f6f9fc 0%, #eef2f5 100%);
      --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.1);
      --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: var(--bg-light);
      color: var(--text-dark);
      line-height: 1.7;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* Hero Section */
    .about-hero {
      background: var(--bg-gradient);
      padding: 80px 0;
      position: relative;
      overflow: hidden;
    }

    .about-hero::before {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      width: 40%;
      height: 100%;
      background: url('images/about-team.jpg') no-repeat center/cover;
      border-radius: 20px 0 0 20px;
      box-shadow: var(--card-shadow);
    }

    .hero-content {
      max-width: 55%;
      position: relative;
      z-index: 2;
    }

    .hero-content h1 {
      font-size: 2.5rem;
      font-weight: 700;
      color: var(--primary-dark);
      margin-bottom: 1.5rem;
      line-height: 1.2;
    }

    .hero-content p {
      font-size: 1.1rem;
      color: var(--text-medium);
      margin-bottom: 2rem;
      max-width: 600px;
    }

    /* Features Section */
    .features-section {
      padding: 80px 0;
      background: white;
    }

    .section-header {
      text-align: center;
      margin-bottom: 60px;
    }

    .section-header h2 {
      font-size: 2rem;
      color: var(--primary-dark);
      margin-bottom: 1rem;
    }

    .section-header p {
      color: var(--text-medium);
      max-width: 700px;
      margin: 0 auto;
    }

    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 30px;
    }

    .feature-card {
      background: white;
      border-radius: 12px;
      padding: 30px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
      transition: var(--transition);
    }

    .feature-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--card-shadow);
    }

    .feature-icon {
      width: 60px;
      height: 60px;
      background: linear-gradient(135deg, var(--primary), var(--primary-light));
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 20px;
      color: white;
      font-size: 1.5rem;
    }

    .feature-card h3 {
      font-size: 1.3rem;
      margin-bottom: 15px;
      color: var(--primary-dark);
    }

    /* Team Section */
    .team-section {
      padding: 80px 0;
      background: var(--bg-gradient);
    }

    .team-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
      margin-top: 50px;
    }

    .team-card {
      background: white;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
      transition: var(--transition);
      text-align: center;
    }

    .team-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--card-shadow);
    }

    .team-image {
      height: 250px;
      overflow: hidden;
    }

    .team-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }

    .team-card:hover .team-image img {
      transform: scale(1.05);
    }

    .team-info {
      padding: 25px 20px;
    }

    .team-info h3 {
      font-size: 1.2rem;
      margin-bottom: 5px;
      color: var(--primary-dark);
    }

    .team-info p {
      color: var(--accent);
      font-weight: 500;
      margin-bottom: 15px;
    }

    /* CTA Section */
    .cta-section {
      padding: 80px 0;
      background: linear-gradient(135deg, var(--primary-dark), var(--primary));
      color: white;
      text-align: center;
    }

    .cta-section h2 {
      font-size: 2rem;
      margin-bottom: 1.5rem;
    }

    .cta-section p {
      max-width: 700px;
      margin: 0 auto 2rem;
      opacity: 0.9;
    }

    /* Buttons */
    .cta-button {
      display: inline-block;
      background: var(--accent);
      color: white;
      padding: 12px 30px;
      border-radius: 50px;
      font-weight: 500;
      text-decoration: none;
      transition: var(--transition);
      box-shadow: 0 4px 15px rgba(247, 37, 133, 0.3);
      border: none;
      cursor: pointer;
      font-size: 1rem;
    }

    .cta-button:hover {
      transform: translateY(-3px);
      box-shadow: 0 7px 20px rgba(247, 37, 133, 0.4);
      background: #ff0a78;
    }

    .outline-button {
      display: inline-block;
      background: transparent;
      color: white;
      padding: 12px 30px;
      border-radius: 50px;
      font-weight: 500;
      text-decoration: none;
      transition: var(--transition);
      border: 2px solid white;
      cursor: pointer;
      font-size: 1rem;
      margin-left: 15px;
    }

    .outline-button:hover {
      background: rgba(255, 255, 255, 0.1);
    }

    /* Responsive */
    @media (max-width: 992px) {
      .about-hero::before {
        width: 50%;
      }

      .hero-content {
        max-width: 45%;
      }
    }

    @media (max-width: 768px) {
      .about-hero {
        padding: 60px 0;
      }

      .about-hero::before {
        position: relative;
        width: 100%;
        height: 300px;
        border-radius: 20px;
        margin-bottom: 30px;
      }

      .hero-content {
        max-width: 100%;
        text-align: center;
      }

      .hero-content p {
        margin-left: auto;
        margin-right: auto;
      }
    }

    @media (max-width: 576px) {
      .hero-content h1 {
        font-size: 2rem;
      }

      .button-group {
        display: flex;
        flex-direction: column;
      }

      .outline-button {
        margin-left: 0;
        margin-top: 15px;
      }
    }
  </style>
</head>
<body>

<!-- Hero Section -->
<section class="about-hero">
  <div class="container">
    <div class="hero-content">
      <h1>Pioneering IoT Solutions for a Connected Future</h1>
      <p>IoTBay is revolutionizing the industry by offering seamless, secure, and scalable Internet of Things technologies to businesses and individuals worldwide. Our cutting-edge solutions bridge the gap between physical devices and digital innovation.</p>
      <div class="button-group">
        <a href="contact.jsp" class="cta-button">Get in Touch</a>
        <a href="products.jsp" class="outline-button">Explore Products</a>
      </div>
    </div>
  </div>
</section>

<!-- Features Section -->
<section class="features-section">
  <div class="container">
    <div class="section-header">
      <h2>Why Choose IoTBay?</h2>
      <p>We combine innovative technology with exceptional service to deliver IoT solutions that drive real business results.</p>
    </div>
    <div class="features-grid">
      <div class="feature-card">
        <div class="feature-icon">
          <i class="fas fa-shield-alt"></i>
        </div>
        <h3>Enterprise-Grade Security</h3>
        <p>End-to-end encryption and advanced security protocols ensure your IoT ecosystem is protected against emerging threats.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">
          <i class="fas fa-expand-arrows-alt"></i>
        </div>
        <h3>Scalable Architecture</h3>
        <p>Our modular solutions grow with your business, from pilot projects to global deployments with millions of devices.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">
          <i class="fas fa-brain"></i>
        </div>
        <h3>AI-Powered Analytics</h3>
        <p>Transform raw device data into actionable insights with our machine learning-powered analytics platform.</p>
      </div>
    </div>
  </div>
</section>

<!-- Team Section -->
<section class="team-section">
  <div class="container">
    <div class="section-header">
      <h2>Meet Our Leadership</h2>
      <p>Our team of IoT experts brings decades of combined experience in hardware, software, and connectivity solutions.</p>
    </div>
    <div class="team-grid">
      <div class="team-card">
        <div class="team-image">
          <img src="images/team1.jpg" alt="Sarah Johnson">
        </div>
        <div class="team-info">
          <h3>Sarah Johnson</h3>
          <p>CEO & Founder</p>
          <p>15+ years in IoT architecture</p>
        </div>
      </div>
      <div class="team-card">
        <div class="team-image">
          <img src="images/team2.jpg" alt="Michael Chen">
        </div>
        <div class="team-info">
          <h3>Michael Chen</h3>
          <p>CTO</p>
          <p>Edge computing specialist</p>
        </div>
      </div>
      <div class="team-card">
        <div class="team-image">
          <img src="images/team3.jpg" alt="Priya Patel">
        </div>
        <div class="team-info">
          <h3>Priya Patel</h3>
          <p>Head of Security</p>
          <p>Cybersecurity expert</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
  <div class="container">
    <h2>Ready to Transform Your Business with IoT?</h2>
    <p>Join thousands of businesses leveraging our platform to drive efficiency, gather insights, and create new revenue streams.</p>
    <a href="contact.jsp" class="cta-button">Schedule a Demo</a>
  </div>
</section>

</body>
</html>