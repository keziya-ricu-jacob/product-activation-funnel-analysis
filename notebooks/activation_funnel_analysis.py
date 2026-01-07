import pandas as pd

df = pd.read_csv("data/sample_events.csv")

funnel = (
    df.pivot_table(
        index="user_id",
        columns="event_name",
        aggfunc="size",
        fill_value=0
    )
    .reset_index()
)

funnel["activated"] = funnel.get("activation", 0) > 0

activation_rate = funnel["activated"].mean()
print("Activation Rate:", activation_rate)
