import * as React from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogContentText from "@mui/material/DialogContentText";
import DialogTitle from "@mui/material/DialogTitle";
import DeleteIcon from "@mui/icons-material/Delete";
import WarningOutlinedIcon from "@mui/icons-material/WarningOutlined";
import { useForm } from "@inertiajs/react";
import { Box, IconButton, Typography } from "@mui/material";

export default function Popover({ id }) {
    const [open, setOpen] = React.useState(false);
    const { data, setData, post, processing, errors, setError } = useForm();
    const handleDelete = (id) => {
        post(route("admin.user.delete", { id }));
        handleClose();
    };
    const handleClick = () => {
        setOpen(true);
    };

    const handleClose = () => {
        setOpen(false);
    };

    return (
        <React.Fragment>
            <IconButton aria-label="delete">
                <DeleteIcon color="error" onClick={handleClick} />
            </IconButton>
            <Dialog
                open={open}
                onClose={handleClose}
                aria-labelledby="alert-dialog-title"
                aria-describedby="alert-dialog-description"
            >
                <Box style={{  display:"flex", justifyContent:'center', alignItems:"center", flexDirection:"column" }}>
                    <WarningOutlinedIcon color='error' sx={{fontSize:'7.5rem !important',}}/>
                    <Typography variant="h4" >Are You Sure?</Typography>
                </Box>

                <Box sx={{ padding:"10px 40px" }}>
                    <DialogContentText id="alert-dialog-description" sx={{ textAlign:"center" }}>
                         Do you really want to delete this user?
                    </DialogContentText>
                    <DialogContentText id="alert-dialog-description" sx={{ textAlign:"center" }}>
                             This  cannot be recover.
                    </DialogContentText>
                </Box>

            <DialogActions sx={{ display:'flex',justifyContent:'center',gap:"20px",m:"15px 0px" }}>
                    <Button variant="contained" color="primary" onClick={handleClose} autoFocus >Cancle </Button>
                    <Button  variant="contained"  color="error"  onClick={() => handleDelete(id)}> Delete</Button>
                </DialogActions>
            </Dialog>
        </React.Fragment>
    );
}
