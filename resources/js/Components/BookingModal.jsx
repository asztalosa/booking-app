import * as React from 'react';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Modal from '@mui/material/Modal';
import BookingCalendar from './BookingCalendar';
import Grid from '@mui/material/Grid';
import ModalClose from '@mui/joy/ModalClose';
import Sheet from '@mui/joy/Sheet';

const style = {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    width: 600,
    bgcolor: 'background.paper',
    border: '2px solid #000',
    boxShadow: 24,
    p: 4,
  };
  
  export default function BookingModal({apartment}) {
    const [open, setOpen] = React.useState(false);
    const handleOpen = () => setOpen(true);
  
    return (
      <Grid container alignContent={"center"} justifyContent={"center"} alignItems={"center"}
      sx={{
        backgroundColor: '#000',
        

      }}
      >
        <Button onClick={handleOpen} sx={{color: '#fff'}}>Book Now</Button>
        <Modal
          open={open}
          aria-labelledby="modal-modal-title"
          aria-describedby="modal-modal-description"
        >
          <Box sx={style}>
          <ModalClose variant="plain" sx={{ m: 1 }} onClick={() => setOpen(false)}/>
          <BookingCalendar  range={true} apartment={apartment} />
          </Box>
        </Modal>
      </Grid>
    );
  }