Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBCA43945FC
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 18:41:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234677AbhE1QnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 12:43:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235570AbhE1QnJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 12:43:09 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43FA6C061574
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 09:41:32 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id i9so6151152lfe.13
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 09:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=nJ28sBrYVq5NPZP+9HkVmg+0pfidVM4lGOb3m1XFUCk=;
        b=X+blJsCYVJHPsBE3MoMiD/6kiNj3lE95f/LqFIfWh+vVjyAgNRlfstnba6EiMuDSi1
         8/jqf8CtqtSgGWji1OQVMNLBL9p2Wrj2KRE9th9IrPlnKbjnnRi2vQGX1CsNCBKS4DlZ
         WP1LmscVynaWfKUycmeJ/H2Plo+MlheJtcvVtasKd/GX5ECzbHAtMsrRV1apawCV1Dli
         v9gr+pv+CLqt8TyeGSmoY3+SKEhNYxIpt0P3F4nOFOm29JJRFis7hjM+gcOlHSP1b3nv
         ylzMcqOOP0zU4zd1er8vHc5FyeUBYCVNz2IoyWFyNsSe5GhD1+23785MwO1FIEMLRMnJ
         Mpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=nJ28sBrYVq5NPZP+9HkVmg+0pfidVM4lGOb3m1XFUCk=;
        b=jKTF0YX21grqdX+fVlMeJTZ+AWU73RndqYKgLoJGIMMgtoixbI38T1TElBYR4BQ+Yu
         aZynTIY8nawVo1JSZgMsZppAfTVV257U6Ela4Y37ZO397PTYZt/+SKmNdD2u1nD4AVnu
         5JHB1a7iqmRfUPFHOZIcGlxVIGEBnFPsZP79slbEFpFIKDxZpgUk/PwYUFYawucyi8SN
         6MVyRWqZBPl1rzQFPOKEEcgybiQrYps6S6mlLj6/heZXsKK3Qa2zT29yFsvnrcdSgegh
         5MHg7Q/MAcIstye5Sx8L+4nRO690Xk83iDTPnb/eeQbcT+N9yQgxp5N1jZ6/rLEv0tiJ
         xz0w==
X-Gm-Message-State: AOAM533mBGxHh44xSx7p3nJc9aGETMq1mU40uCSWA6L3w/ujkepWTNi8
        Iz9YQ6C4Qe7sWE8NSwtA1ZBxCSnezjltrisTyDP8ydAfsZ8WXw==
X-Google-Smtp-Source: ABdhPJyinlBJzVvlFr/VJMbIWReSLmqmyLI2EHWlHI7K42YbPTo4nzuDLY1JSrYOOmwgU+uiywItMmIab4H8IZn4hRY=
X-Received: by 2002:ac2:424f:: with SMTP id m15mr6106341lfl.223.1622220090605;
 Fri, 28 May 2021 09:41:30 -0700 (PDT)
MIME-Version: 1.0
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 28 May 2021 13:41:19 -0300
Message-ID: <CAOMZO5ADZtnoJQrBf-dZ0OYaYkgT7r4HHYXkUdSB91ZS_=EeqA@mail.gmail.com>
Subject: make dt_binding_check fails in linux-next
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

I am trying to run 'make dt_binding_check' in linux-next 20210528 and
I get the error below.

Any suggestions?

Thanks

$ make dt_binding_check
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
Traceback (most recent call last):
  File "/home/fabio/.local/bin/dt-doc-validate", line 67, in <module>
    ret = check_doc(f)
  File "/home/fabio/.local/bin/dt-doc-validate", line 33, in check_doc
    for error in
sorted(dtschema.DTValidator.iter_schema_errors(testtree), key=lambda
e: e.linecol):
  File "/home/fabio/.local/lib/python3.8/site-packages/dtschema/lib.py",
line 723, in iter_schema_errors
    meta_schema = cls.resolver.resolve_from_url(schema['$schema'])
KeyError: '$schema'
  SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
Traceback (most recent call last):
  File "/home/fabio/.local/bin/dt-mk-schema", line 38, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not
args.useronly))
  File "/home/fabio/.local/lib/python3.8/site-packages/dtschema/lib.py",
line 587, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/home/fabio/.local/lib/python3.8/site-packages/dtschema/lib.py",
line 568, in process_schema
    DTValidator.check_schema(schema)
  File "/home/fabio/.local/lib/python3.8/site-packages/dtschema/lib.py",
line 738, in check_schema
    meta_schema = cls.resolver.resolve_from_url(schema['$schema'])
KeyError: '$schema'
make[1]: *** [Documentation/devicetree/bindings/Makefile:62:
Documentation/devicetree/bindings/processed-schema-examples.json]
Error 1
make[1]: *** Deleting file
'Documentation/devicetree/bindings/processed-schema-examples.json'
make: *** [Makefile:1497: dt_binding_check] Error 2
