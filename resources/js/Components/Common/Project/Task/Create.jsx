import * as React from "react";
import Backdrop from "@mui/material/Backdrop";
import Box from "@mui/material/Box";
import Modal from "@mui/material/Modal";
import Fade from "@mui/material/Fade";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import { useForm } from "@inertiajs/react";
import InputError from "@/Components/InputError";
import PrimaryButton from "@/Components/PrimaryButton";
import InputLabel from "@/Components/InputLabel";
import TextInput from "@/Components/TextInput";
import { Alert, Chip, Grid, MenuItem, Select } from "@mui/material";
import AddIcon from "@mui/icons-material/Add";
import CloseIcon from '@mui/icons-material/Close';
import SaveIcon from '@mui/icons-material/Save';
import { useState } from "react";
import SuccessMsg from "../../SuccessMsg";

const style = {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
    width: 400,
    bgcolor: "background.paper",
    boxShadow: 24,
    p: 1,
    overflow:'scroll',
    height:'90%',
    display:'block',
};

export default function Create({ developer, Id ,auth }) {

    const [open, setOpen] = useState(false);
    const [msg,setMsg] = useState(false);
    const [severity ,setSeverity] = useState(null);
    const handleOpen = () => setOpen(true);
    const priority = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    const level = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    const { data, setData, post, processing, errors, reset } = useForm({
        task_name: "",
        description: "",
        start_date: "",
        priority: "",
        developer: [],
        level: "",
        estimated:"",
    });

    const handleDeveloper = (id) => {
        setData((prev) => ({
            ...prev,
            developer: prev.developer
                ? prev.developer.includes(id)
                    ? prev.developer.filter((value) => value !== id)
                    : [...prev.developer, id]
                : [id],
        }));
    };

    const handleClose = () =>{
        setOpen(false);
        setData({});
    }

    const handleEstimatedChange = (event) => {
        const enteredValue = event.target.value;
        const enteredNumber = parseInt(enteredValue, 10);

        if (!isNaN(enteredNumber) && enteredNumber > 59) {
          const hours = Math.floor(enteredNumber / 60);
          const minutes = enteredNumber % 60;
          const formattedTime = `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}`;
          console.log(formattedTime,'formateddd');
          setData({...data,
            ["estimated"]: formattedTime,
        });
        //   setData({"estimated":formattedTime});
        } else {
            setData({...data,
                ["estimated"]: enteredValue,
            });
            // setData({"estimated": enteredValue});
        }
      };

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log("hello");
        {
            auth.user.user_role == "admin" ?
           post(route("admin.project.task.save", { id: Id }),{
            onSuccess: ()=> {
                setMsg('Task Created Successfully .')
                setData({});
                setOpen(false);
                setSeverity('success');
            },onError:(error) => {
                setMsg(error.message)
                setSeverity('error');
            },
        })
           :auth.user.user_role == "project manager" &&
           post(route("projectManager.project.task.save", { id: Id }),{
            onSuccess: ( )=> {
                setSeverity('success');
                setMsg('Task Created Successfully .')
                setData({});
                setOpen(false);
            },onError:(error) => {
                setMsg(error.message);
                setSeverity('error');
            },
        })
        }
    };

    return (
        <div>
            {
                msg && <SuccessMsg severity={severity} error={msg} setError={setMsg} title={msg}/>
            }
            <Button
                variant="contained"
                onClick={handleOpen}
                startIcon={<AddIcon />}
            >
                Create
            </Button>
            <Modal
                aria-labelledby="transition-modal-title"
                aria-describedby="transition-modal-description"
                open={open}
                onClose={handleClose}
                closeAfterTransition
                slots={{ backdrop: Backdrop }}
                slotProps={{ backdrop: {timeout: 500,},
                }}
            >
                <Fade in={open}>
                    <Box sx={style} style={{ width: "800px" }}>
                    <div className="rounded-t-xl bg-slate-50 border-gray-100 border border-t-0 shadow-sm p-5" >
                        <form onSubmit={handleSubmit}>
                            <div
                                style={{
                                    alignItems: "center",
                                    display: "flex",
                                    justifyContent: "center",
                                    paddingBottom: "30px",
                                }}
                            >
                                <Typography
                                    variant="h5"
                                    style={{ fontWeight: "bold" }}
                                >
                                    Create Task
                                </Typography>
                            </div>
                            <div style={{ marginTop: "10px" }}>
                                <InputLabel
                                    htmlFor="task-name"
                                    value="Task Name"
                                    style={{ fontSize: "15px", fontWeight: "bold", }}
                                />
                                <TextInput
                                    id="task_name"
                                    name="task_name"
                                    value={data.task_name}
                                    className="mt-1 block w-full"
                                    autoComplete="task_name"
                                    isFocused={true}
                                    onChange={(e) =>
                                        setData("task_name", e.target.value)
                                    }
                                    required
                                />

                                <InputError
                                    message={errors.task_name}
                                    className="mt-2"
                                />
                            </div>

                            <div className="mt-4">
                                <InputLabel
                                    htmlFor="description"
                                    value="Description"
                                    style={{
                                        fontSize: "15px",
                                        fontWeight: "bold",
                                    }}
                                />
                                <textarea
                                    id="description"
                                    type="text"
                                    name="description"
                                    rows={3}
                                    value={data.description}
                                    className="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 block w-full"
                                    autoComplete="description"
                                    onChange={(e) =>setData("description", e.target.value)}
                                    required
                                />
                                <InputError  message={errors.description}  className="mt-2"/>
                            </div>
                            <div
                                style={{
                                    display: "flex",
                                    justifyContent: "",
                                }}
                            >
                                    <div className="mt-4" style={{ width:'50%',paddingRight:'10px'}}>
                                        <InputLabel
                                            htmlFor="Assign Date"
                                            value="Assign Date"
                                            style={{ fontSize: "15px", fontWeight: "bold", }}
                                        />
                                        <TextInput
                                            id="start_date"
                                            type="datetime-local"
                                            name="start_date"
                                            value={data.start_date}
                                            className="mt-1 block w-full"
                                            autoComplete="start_date"
                                            onChange={(e) => setData("start_date", e.target.value)}
                                            required
                                        />
                                        <InputError
                                            message={errors.start_date}
                                            className="mt-2"
                                        />
                                    </div>
                                    <div className="mt-4" style={{ width:'50%' ,paddingLeft:'10px' }}>
                                        <InputLabel
                                            htmlFor="estimated Time"
                                            value="Estimated time"
                                            style={{ fontSize: "15px", fontWeight: "bold", }}
                                        />
                                        <TextInput
                                            id="estimated"
                                            type="number"
                                            name="estimated"
                                            value={data.estimated}
                                            className="mt-1 block w-full"
                                            autoComplete="estimated"
                                            // onChange={handleEstimatedChange}
                                            onChange={(e)=>setData("estimated",e.target.value)}
                                            required
                                        />
                                        <InputError
                                            message={errors.estimated}
                                            className="mt-2"
                                        />
                                    </div>
                            </div>

                            <div  style={{ display: "flex", justifyContent: "", }}>
                                <div className="mt-4" style={{ width:'50%' ,paddingRight:'10px' }}>
                                    <InputLabel
                                        htmlFor="priority"
                                        value="Priority"
                                        style={{ fontSize: "15px",fontWeight: "bold",}}
                                    />
                                    <Select
                                        value={data.priority}
                                        name="priority"
                                        style={{ height: "42px",background:'white' }}
                                        className="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 w-full"
                                        onChange={(e) =>
                                            setData("priority", e.target.value)
                                        }
                                        required
                                    >
                                        <MenuItem selected>Choose Priority</MenuItem>
                                        {priority.map((prio, index) => (
                                            <MenuItem
                                                key={index}
                                                value={prio}
                                                label={prio}
                                            >
                                                {prio}
                                            </MenuItem>
                                        ))}
                                    </Select>
                                    <InputError message={errors.priority} className="mt-2"/>
                                </div>
                                <div className="mt-4" style={{ width:'50%' ,paddingLeft:'10px' }}>
                                    <InputLabel
                                        htmlFor="level"
                                        value="Task Level"
                                        style={{ fontSize: "15px",fontWeight: "bold", }}
                                    />
                                    <Select
                                        value={data.level}
                                        name="level"
                                        style={{ height: "42px",background:'white',}}
                                        className="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm mt-1 w-full "
                                        onChange={(e) => setData("level", e.target.value)}
                                        required
                                    >
                                        <MenuItem selected> Choose Label </MenuItem>
                                        {level.map((lab, index) => (
                                            <MenuItem
                                                key={index}
                                                value={lab}
                                                label={lab}
                                            >
                                                {lab}
                                            </MenuItem>
                                        ))}
                                    </Select>
                                    <InputError message={errors.label}className="mt-2"/>
                                </div>
                            </div>

                            <div className="mt-4">
                                <InputLabel
                                    htmlFor="Assign to"
                                    style={{
                                        fontSize: "15px",
                                        fontWeight: "bold",
                                    }}
                                > Assign To - Project Manager <Chip label="PM" color="success" size="small" style={{ fontSize:'10px' }}/> &emsp; Developer <Chip label="D" size="small" style={{ fontSize:'10px' ,background:'gray',color:'white' }}/>
                                </InputLabel>
                                <Grid item xs={12}>
                                    { developer.length == 0 ? (
                                        <Alert severity="info">
                                            Don't Have Any Developer
                                        </Alert>
                                    ) : (
                                        developer.map((user, index) => (
                                            <Button
                                                key={index}
                                                variant={data.developer?.includes(user.id) ? "contained" : "outlined"}
                                                size="small"
                                                onClick={()=>handleDeveloper(user.id)}
                                                style={{ margin: "2px" }}
                                                endIcon={<Chip style={{ fontSize:'10px' }} label={user.user_role =="project manager" ? "PM" : "D"} color={user.user_role =="project manager" ?"success" : "primary" } sx={user.user_role !=="project manager" && { background:'gray'  }} size="small"/>}
                                            >
                                                {user.name}
                                            </Button>

                                        ))
                                    )}
                                </Grid>
                                <InputError
                                    message={errors.developer}
                                    className="mt-2"
                                />
                            </div>


                            <div className="flex items-center justify-center m-8">
                            <Button onClick={handleClose} variant="contained" color="error"
                                    style={{
                                        height: "33px", marginLeft:"10px"
                                    }}
                                    startIcon={<CloseIcon/>}>Cancle</Button>
                                <PrimaryButton
                                    className="ms-4"
                                    variant="contained"
                                    disabled={processing}
                                    style={{
                                        height: "40px",
                                        backgroundColor: "#1976d2",
                                    }}
                                ><SaveIcon sx={{ height:'15px' }}/>
                                    Create Task
                                </PrimaryButton>

                            </div>
                        </form>
                    </div>
                    </Box>
                </Fade>
            </Modal>
        </div>
    );
}
