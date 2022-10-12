<style>
    .modalless{
        top:10%;
        left:50%;
        bottom:auto;
        right:auto;
        margin-left:-300px;
        overflow: auto !important;
    }
</style>
<div class="modal modalless" id="cookiePopup" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">{l s='This website uses Cookies!' d='Modules.Wicookies.CookieTitle'}</h5>
        </div>
        <div class="modal-body">
            {l s='We use cookies and similar technologies to help personalise content for your needs' d='Modules.Wicookies.CookieBody'}
            <script>
                function setCookie(cname, cvalue, exdays) {
                    const d = new Date();
                    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
                    let expires = "expires="+d.toUTCString();
                    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
                }

                function getCookie(cname) {
                    let name = cname + "=";
                    let ca = document.cookie.split(';');
                    for(let i = 0; i < ca.length; i++) {
                        let c = ca[i];
                        while (c.charAt(0) == ' ') {
                            c = c.substring(1);
                        }
                        if (c.indexOf(name) == 0) {
                            return c.substring(name.length, c.length);
                        }
                    }
                    return "";
                }



                let idrow = "accept";
                let cookie = getCookie(idrow + "Cookie");
                if (cookie != "") {
                } else {
                    window.addEventListener('DOMContentLoaded', (event) => {
                        $('#cookiePopup').modal({backdrop: 'static', keyboard: false}, 'show');
                        $("#cookiePopup").on('shown.bs.modal',function(){
                            $(document).off('focusin.bs.modal');
                        });
                    });
                    
                }

                function createCookie(){
                    cookie = "cookiePopup";
                    setCookie(idrow + "Cookie", cookie, 1);
                }


            </script>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button onclick="createCookie()" type="button" class="btn btn-secondary" data-dismiss="modal">Accept</button>
        </div>
        </div>
    </div>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    
</script>


