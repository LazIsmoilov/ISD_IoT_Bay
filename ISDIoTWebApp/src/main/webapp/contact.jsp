<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | IoT Bay</title>
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
            background-color: var(--bg-light);
            color: var(--text-dark);
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        .contact-header {
            text-align: center;
            padding: 80px 0 40px;
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            margin-bottom: 60px;
            clip-path: polygon(0 0, 100% 0, 100% 90%, 0 100%);
        }

        .contact-header h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .contact-header p {
            max-width: 700px;
            margin: 0 auto;
            opacity: 0.9;
        }

        /* Contact Grid */
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-bottom: 80px;
        }

        /* Contact Form */
        .contact-form {
            background: white;
            border-radius: 16px;
            padding: 40px;
            box-shadow: var(--card-shadow);
        }

        .contact-form h2 {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            color: var(--primary-dark);
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--text-medium);
        }

        .form-control {
            width: 100%;
            padding: 12px 16px;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            font-size: 1rem;
            transition: var(--transition);
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary-light);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.15);
        }

        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }

        /* Contact Info */
        .contact-info {
            background: white;
            border-radius: 16px;
            padding: 40px;
            box-shadow: var(--card-shadow);
        }

        .contact-info h2 {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            color: var(--primary-dark);
        }

        .info-item {
            display: flex;
            align-items: flex-start;
            gap: 20px;
            margin-bottom: 1.5rem;
        }

        .info-icon {
            width: 50px;
            height: 50px;
            background: linear-gradient(135deg, var(--primary), var(--primary-light));
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.2rem;
            flex-shrink: 0;
        }

        .info-content h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
            color: var(--text-dark);
        }

        .info-content p {
            color: var(--text-medium);
        }

        /* Map */
        .map-container {
            height: 400px;
            background: #eee;
            border-radius: 16px;
            overflow: hidden;
            margin-bottom: 80px;
            box-shadow: var(--card-shadow);
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 24px;
            border-radius: 8px;
            font-weight: 500;
            text-decoration: none;
            transition: var(--transition);
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            box-shadow: 0 4px 15px rgba(67, 97, 238, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 7px 20px rgba(67, 97, 238, 0.4);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .contact-header {
                padding: 60px 0 30px;
                clip-path: polygon(0 0, 100% 0, 100% 95%, 0 100%);
            }

            .contact-header h1 {
                font-size: 2rem;
            }

            .contact-form, .contact-info {
                padding: 30px;
            }
        }

        @media (max-width: 480px) {
            .contact-header {
                padding: 50px 0 25px;
            }

            .info-item {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
<!-- Header Section -->
<header class="contact-header">
    <div class="container">
        <h1><i class="fas fa-envelope-open-text"></i> Contact IoT Bay</h1>
        <p>Have questions or need support? Our team is here to help you with any inquiries about our IoT products and services.</p>
    </div>
</header>

<div class="container">
    <!-- Contact Grid -->
    <div class="contact-grid">
        <!-- Contact Form -->
        <section class="contact-form">
            <h2><i class="fas fa-paper-plane"></i> Send us a message</h2>
            <form action="contact-submit.jsp" method="POST">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="Your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="your@email.com" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <select id="subject" name="subject" class="form-control" required>
                        <option value="" disabled selected>Select a subject</option>
                        <option value="General Inquiry">General Inquiry</option>
                        <option value="Product Support">Product Support</option>
                        <option value="Sales Question">Sales Question</option>
                        <option value="Technical Support">Technical Support</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" class="form-control" placeholder="How can we help you?" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-paper-plane"></i> Send Message
                </button>
            </form>
        </section>

        <!-- Contact Information -->
        <section class="contact-info">
            <h2><i class="fas fa-info-circle"></i> Contact Information</h2>

            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-map-marker-alt"></i>
                </div>
                <div class="info-content">
                    <h3>Our Location</h3>
                    <p>123 IoT Boulevard<br>Tech Park, Sydney NSW 2000<br>Australia</p>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-phone-alt"></i>
                </div>
                <div class="info-content">
                    <h3>Phone Numbers</h3>
                    <p>Sales: +61 2 1234 5678<br>Support: +61 2 1234 5679<br>Fax: +61 2 1234 5680</p>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-envelope"></i>
                </div>
                <div class="info-content">
                    <h3>Email Addresses</h3>
                    <p>General: info@iotbay.com<br>Support: support@iotbay.com<br>Sales: sales@iotbay.com</p>
                </div>
            </div>

            <div class="info-item">
                <div class="info-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="info-content">
                    <h3>Business Hours</h3>
                    <p>Monday - Friday: 9:00 AM - 6:00 PM<br>Saturday: 10:00 AM - 4:00 PM<br>Sunday: Closed</p>
                </div>
            </div>
        </section>
    </div>

    <!-- Map Section -->
    <div class="map-container">
        <!-- Embedded Google Map -->
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.783712420512!2d151.1983083152106!3d-33.8832643806576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae1c1ce2c9d9%3A0x1a3b3b3b3b3b3b3b!2sUTS%20Building%2011!5e0!3m2!1sen!2sau!4v1625060000000!5m2!1sen!2sau"
                width="100%"
                height="100%"
                style="border:0;"
                allowfullscreen=""
                loading="lazy"></>
    </div>
</div>

<script>
    // Form validation would go here
    document.addEventListener('DOMContentLoaded', function() {
        const contactForm = document.querySelector('form');

        if (contactForm) {
            contactForm.addEventListener('submit', function(e) {
                // Add form validation logic here
                console.log('Form submitted');
                // e.preventDefault(); // Uncomment to prevent actual submission during testing
            });
        }
    });
</script>
</body>
</html>