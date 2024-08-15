from fastapi import FastAPI
from pydantic import BaseModel
from mysql.connector import connect, Error
from dotenv import load_dotenv
import os

load_dotenv()

DB_HOST = os.getenv("DB_HOST")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_NAME = os.getenv("DB_NAME")


app = FastAPI()


def get_db_connection():
    try:
        connection = connect(
            host=DB_HOST,
            port=3306,
            user=DB_USER,
            password=DB_PASSWORD,
            database=DB_NAME
        )
        return connection
    except Error as e:
        print(f"Error: {e}")
        return None

# Pydantic Models
class CustomerReview(BaseModel):
    name: str
    review: str
    rating: int

class Customer(BaseModel):
    name: str
    email: str
    message: str

# GET endpoint for healthTips
@app.get("/healthTips")
def get_health_tips():
    connection = get_db_connection()
    if connection is None:
        return {'error': 'Database connection failed'}
    cursor = connection.cursor()
    try:
        cursor.execute("SELECT title, description FROM healthTips")
        results = cursor.fetchall()
        health_tips = []
        for tip in results:
            health_tips.append({
                'title': tip[0],
                'description': tip[1]
            })
        return {'healthTips': health_tips}
    except Exception as e:
        return {'error': str(e)}
    finally:
        cursor.close()
        connection.close()

# GET endpoint for newProducts
@app.get("/newProducts")
def get_new_products():
    connection = get_db_connection()
    if connection is None:
        return {'error': 'Database connection failed'}
    cursor = connection.cursor()
    try:
        cursor.execute("SELECT name, description, medicationType, image FROM newProducts")
        results = cursor.fetchall()
        products = []
        for product in results:
            products.append({
                'name': product[0],
                'description': product[1],
                'medicationType': product[2],
                'image': product[3]
            })
        return {'newProducts': products}
    except Exception as e:
        return {'error': str(e)}
    finally:
        cursor.close()
        connection.close()


@app.post("/submitContact")
def submit_contact(contact: Customer):
    connection = get_db_connection()
    if connection is None:
        return {'error': 'Database connection failed'}
    cursor = connection.cursor()
    try:
        sql = "INSERT INTO customer (name, email, message) VALUES (%s, %s, %s)"
        values = (contact.name, contact.email, contact.message)
        cursor.execute(sql, values)
        connection.commit()
        return {'status': 'Contact submitted successfully', 'contact': contact}
    except Exception as e:
        return {'error': str(e)}
    finally:
        cursor.close()
        connection.close()
