import { Typography } from "@mui/material";
import AirDatepicker from "air-datepicker";
import "air-datepicker/air-datepicker.css";
import localeEn from "air-datepicker/locale/hu";
import React from "react";
import { useState } from "react";
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";
import { Link, useForm, usePage } from '@inertiajs/react';
import isWithinInterval  from 'date-fns/isWithinInterval';
import isEqual  from 'date-fns/isEqual';

export default function BookingCalendar({apartment}) {

  const ref = React.useRef();
  const dpInstance = React.useRef();
  const [today, setToday] = useState(new Date());

  const { data, setData, post, errors, processing, recentlySuccessful } = useForm({
    checkInDate: '',
    checkOutDate: '',
    apartment_id: apartment.id,
  });

  const [unavailableDates, setUnavailableDates] = useState([]);
  const unavailableDatesAsString = unavailableDates.map(date => date.toISOString().split(',')[0]);
  unavailableDatesAsString.map((date) => {
    console.log(date);
  });

  React.useEffect(() => {
    fetch(`/api/check-availability/${apartment.id}`)
      .then(response => response.json())
      .then(dates => {
        // Convert date strings to Date objects
        if (!Array.isArray(dates) || dates.length === 0) {
          console.log('No dates');
          return;
        }
        else{
          const unavailableDates = dates.map(date => new Date(date));
          unavailableDates.forEach((unavailableDate) => {
            //console.log(unavailableDate.toLocaleDateString());
          });
          setUnavailableDates(unavailableDates);
          //console.log(unavailableDatesAsString);
        }
      });  
  }, [apartment.id]);


  const submit = (e) => {
    e.preventDefault(); 
    post(route('book.store'), data);
  }


  const disabledDate = new Date('2024-05-16T00:00:00');

  // Check if disabled date is in the range
  const isDisabledDateIsInRange = ({date, datepicker}) => {
      const selectedDate = datepicker.selectedDates[0];
      if (selectedDate && datepicker.selectedDates.length === 1) {
          const sortedDates = [selectedDate, date].toSorted((a, b) => {
              if (a.getTime() > b.getTime()) {
                  return 1;
              }
              return -1;
          })
  
          return (isWithinInterval(disabledDate, {
              start: sortedDates[0],
              end: sortedDates[1]
          }))
      }
  }



  React.useEffect(() => {
    if (ref.current && !dpInstance.current) {
      dpInstance.current = new AirDatepicker(ref.current, {
        inline: true,
        range: true,
        locale: localeEn,       
        selectedDates: today,
        startDate: today,
        onBeforeSelect: ({date, datepicker}) => {
          // Dont allow user to select date, if disabled date is in the range
          return !isDisabledDateIsInRange({date, datepicker});
        },
        onFocus: ({date, datepicker}) => {
            if (isDisabledDateIsInRange({date, datepicker}) || isEqual(date, disabledDate)) {
              datepicker.$datepicker.classList.add('-disabled-range-')
            } else {
              datepicker.$datepicker.classList.remove('-disabled-range-')
            }
        },
        onRenderCell: ({date}) => {
            if (date.toLocaleDateString() === disabledDate.toLocaleDateString()) {
                return {
                    disabled: true
                }
            }
        },
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
  }, [today, unavailableDates]);

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