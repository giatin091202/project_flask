from decouple import config

class Config(object):
    DEBUG = False
    TESTING = False
    CSRF_ENABLED = True
    SECRET_KEY = config("SECRET_KEY", default="guess-me")
    #SQLALCHEMY_DATABASE_URI = DATABASE_URI
    #SQLALCHEMY_TRACK_MODIFICATIONS = False
    BCRYPT_LOG_ROUNDS = 13
    WTF_CSRF_ENABLED = True
    DEBUG_TB_ENABLED = False
    DEBUG_TB_INTERCEPT_REDIRECTS = False
    APP_NAME = config("APP_NAME")
    SECURITY_PASSWORD_SALT = config("SECURITY_PASSWORD_SALT", default="very-important")
    # Mail Settings
    MAIL_DEFAULT_SENDER = "noreply@flask.com"
    MAIL_SERVER = "smtp.gmail.com"
    MAIL_PORT = 465
    MAIL_USE_TLS = False
    MAIL_USE_SSL = True
    MAIL_DEBUG = False
    MAIL_USERNAME = config("EMAIL_USER")
    MAIL_PASSWORD = config("EMAIL_PASSWORD")
    #upload cccd,health insurance file
    ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif'}
    UPLOAD_FOLDER = 'static/source/'
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024


class DevelopmentConfig(Config):
    DEVELOPMENT = True
    DEBUG = True
    WTF_CSRF_ENABLED = False
    DEBUG_TB_ENABLED = True


class TestingConfig(Config):
    TESTING = True
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = "sqlite:///testdb.sqlite"
    BCRYPT_LOG_ROUNDS = 1
    WTF_CSRF_ENABLED = False


class ProductionConfig(Config):
    DEBUG = False
    DEBUG_TB_ENABLED = False
