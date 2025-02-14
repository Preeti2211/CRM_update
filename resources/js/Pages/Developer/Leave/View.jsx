import Create from "@/Components/Common/User/Create";
import List from "@/Components/Common/User/Leaves/List";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Alert,} from "@mui/material";

export default function View({ leave ,auth ,Id}) {
    return (
        <AuthenticatedLayout user={auth.user}>
            <div  className="py-12">
                <div className="max-w-7xl mx-auto px-16">
                    <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg px-2 py-3">
                        { leave.data.length === 0 ? (
                            <>
                                <Alert
                                    severity="info"
                                    className="capitalize"
                                    style={{
                                        "& .severity": {
                                            MarginTop: "9px",
                                        },
                                    }}
                                    action={<Create auth={auth} Id={Id} user={[]}/> }
                                >
                                   You don't apply for any  Leaves
                                </Alert>
                            </>
                        ) : (
                            <>
                            <List data={leave.data} auth={auth} />
                            </>
                        )}
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
