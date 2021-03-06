
<div ng-controller="addEditSalesVoucherCtrl">
    <div class="row-top-buffer"></div>
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <a ui-sref="salesVoucher" class="btn btn-primary">Back to list</a>
        </div>
    </div>
    <div class="row-top-buffer"></div>
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="alert alert-info">{{title}} <span class="label label-success">{{salesVoucher.localCode}}</span></div>
        </div>
    </div>
    <form ng-submit="processForm()" ng-show="showForm">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="particulars">Particulars</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <textarea  maxlength="1024" rows="5" cols="59" ng-model="salesVoucher.particulars" id="particulars"
                                   name="particulars" placeholder="Enter particulars"></textarea>
                    </div>
                </div>
                <div  class="col-md-5 col-lg-5"><form-error err_field="errors.err_particulars"></form-error></div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="vdate">Voucher Date</label>
                </div>
                <div class="col-md-3 col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input ng-model="salesVoucher.voucherDate" class="datepicker" type="text" class="input-sm form-control" id="vdate" name="vdate">
                    </div>
                </div>
                <div  class="col-md-5 col-lg-5"><form-error err_field="errors.err_voucherDate"></form-error></div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <journal-entries
                trans-id="salesVoucher.transId"
                voucher-id="salesVoucher.id"
                journal-entries="journalEntries"
                entities="suppliers"
                sub-ledger-lines="subLedgerLines"
                ></journal-entries>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                </div>
                <div  class="col-md-10 col-lg-10"><form-error err_field="errors.err_generalLedgerLines"></form-error></div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="checker">Checker</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input disabled="" ng-model="salesVoucher.checker.name" id="checker" name="checker" class="form-control ng-pristine ng-valid" type="text" placeholder="Browse checker"/>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1">
                    <button sl-entity-browser
                            handler="checker_selection_handler"
                            types="signatories"
                            class="btn btn-primary">&nbsp;<i class="fa fa-chevron-up" title="Browse checker"></i>&nbsp;</button>
                </div>
                <div  class="col-md-3 col-lg-3"><form-error err_field="errors.err_checker"></form-error></div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="approvar">Approving Officer</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input disabled="" ng-model="salesVoucher.approvingOfficer.name" id="approvar" name="approvar" class="form-control ng-pristine ng-valid" type="text" placeholder="Browse approving officer"/>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1">
                    <button sl-entity-browser
                            handler="approvar_selection_handler"
                            types="signatories"
                            class="btn btn-primary">&nbsp;<i class="fa fa-chevron-up" title="Browse approving officer"></i>&nbsp;</button>
                </div>
                <div  class="col-md-3 col-lg-3"><form-error err_field="errors.err_approvingOfficer"></form-error></div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                </div>
                <div class="col-md-5 col-lg-5">
                    <fieldset ng-disabled="submitting">
                        <button ng-mousedown="submit = true" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> {{save}}</button>
                        <button type="reset" class="btn btn-default"><span class="glyphicon glyphicon-refresh"></span> Reset</button>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
</div>

<div style="margin-bottom: 100px;" />


<script>
    $(function () {
        $('.datepicker').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        }).datepicker("setDate", $.datepicker.formatDate('mm/dd/yy', new Date()));

        $('[data-toggle="popover"]').popover({ trigger: "hover", html: true })
    })
</script>

