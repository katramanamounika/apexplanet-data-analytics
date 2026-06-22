from sqlalchemy import create_engine

engine = create_engine(
    "sqlite:///superstore.db"
)

print("Database Connected Successfully")