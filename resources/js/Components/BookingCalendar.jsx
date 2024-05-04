import { Typography } from "@mui/material";
import AirDatepicker from "air-datepicker";
import "air-datepicker/air-datepicker.css";
import localeEn from "air-datepicker/locale/hu";
import React from "react";
import { useState } from "react";
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";
import { Link, useForm, usePage } from '@inertiajs/react';

export default function BookingCalendar({apartment}) {

  const ref = React.useRef();
  const dpInstance = React.useRef();
  const [today, setToday] = useState(new Date());

  const { data, setData, post, errors, processing, recentlySuccessful } = useForm({
    checkInDate: '',
    checkOutDate: '',
    apartment_id: apartment.id,
  });

  const submit = (e) => {
    e.preventDefault();

    console.log('Check-in:', data.checkInDate);
    console.log('Check-out:', data.checkOutDate);
    console.log(apartment.id);
  
    post(route('book.store'), data);
  }


  React.useEffect(() => {
    if (ref.current && !dpInstance.current) {
      dpInstance.current = new AirDatepicker(ref.current, {
        inline: true,
        range: true,
        locale: localeEn,       
        selectedDates: today,
        startDate: today,
        minDate: today,
        disableNavWhenOutOfRange: true,
        onSelect: function () {
          const selectedDates = dpInstance.current.selectedDates;
          setData(prevData => ({
            ...prevData,
            checkInDate: selectedDates[0]?selectedDates[0].toLocaleDateString('en-CA') : '',
            checkOutDate: selectedDates[1]?selectedDates[1].toLocaleDateString('en-CA') : '',
          }));
        }
      },
      );
    }
  }, [today]);

  return (
    <div>
      <Typography variant="h4" textAlign={"center"} marginBottom={5}>Select Dates for {apartment.apartment_name}</Typography>
      
      <Grid container alignContent={"center"} justifyContent={"center"} alignItems={"center"} ref={ref}></Grid>
      <Grid alignContent={"center"} justifyContent={"center"} alignItems={"center"} display={"flex"} margin={3} gap={3}>
        <Typography variant="h6" ><b>Check-in:</b> {data.checkInDate}</Typography>
        <Typography variant="h6"><b>Check-out:</b> {data.checkOutDate}</Typography> 
      </Grid>
      

      <form onSubmit={submit} className="mt-6 space-y-6">
        <Button 
          fullWidth 
          type="submit"
          sx={{
            color: data.checkInDate && data.checkOutDate ? '#fff' : '#aaa', 
            backgroundColor: data.checkInDate && data.checkOutDate ? '#000' : '#ddd'
          }} 
          disabled={!data.checkInDate || !data.checkOutDate}
        >
          Book Now
        </Button> 
      </form>
    </div>
  );
}