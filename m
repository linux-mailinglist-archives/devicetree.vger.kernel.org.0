Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 088374D9898
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 11:18:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242825AbiCOKT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 06:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344861AbiCOKT3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 06:19:29 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A13A632D
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:18:17 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id pv16so714816ejb.0
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=B3GY5pHxl40fgyTRDEfHUIewqx+99afdPdvQA2cgGa0=;
        b=LNi6wHm5nU69LnCLaXhnMuC+4XDiwgA8h3NKSNsfXKJV3GkEddgyxFG5kT71zmi8tM
         V8RPmQ9PgnIQU99iBzxGUDdJavc13XS+bgB8e1l1ftzfGSxIHalmgCmZYv7QWZLdcjlm
         W36pIH5zx/MswVPS5L8IKxGc2bJTJauAFyfn3uhf2t015c8M3syj4afaaU5Lljl4EZWH
         m9rNxdMjb9lpoPGGBpLj5nivRXcL+CopTQFctyOfiihG1WLuNKSA5BFJSzKHJFH66huE
         c2uP8s1dS1Yufom48cwaVffBo29XJyzDMIHnkLudIfeZEw42/spclrWOSeRfELEdfUpF
         JVRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=B3GY5pHxl40fgyTRDEfHUIewqx+99afdPdvQA2cgGa0=;
        b=2kOSRTWL+4TWCcNvWUvNfZQyGJyvhGivtJ7KuVO7BBRnvsqhU2EBjI5gx/srrSGQLS
         lVK/j1VmVmo4dAHLQJSOC3hrJmT4RIoKFFEaXLgrAh01Nj+Bt420iWj+eI5ZvzlALgyZ
         wcKOmoYBC8ZeJ/2H9Qv6DfIX+sVYiPTsL9oRHdaC9IsiJN5pFQXFzUrQQ9RUISdtcUXE
         M4ZraxM/NQePPi4S9Tx7/6nrSTKXQi2Ul2jw2O6QMIXtJPCebGeUZaiYhOozYGlXqiKb
         1cet5xUDlBXg154Kp7J0CVsPEfJ+HIwAPmplh0yAG1x9lva4LY2TWvP0oANz1lll6SI/
         P3+g==
X-Gm-Message-State: AOAM533JWQrwQ9we2cBNkGReY6d8EjAH9P6+HZc0pmFN2bDWJV0vL2MZ
        2Rq5kTXNc3TKU07rIgS43oZD7aUQ9excfJmTvdk=
X-Google-Smtp-Source: ABdhPJyJE1BiHRk57glYHo0VMj8rWhByHHIt0e5NkxG3m4iSBt9xtkS1itvdsEqo/q5zjKCONlIyF8acIXDI/e3HYEA=
X-Received: by 2002:a17:907:72c5:b0:6da:e99e:226c with SMTP id
 du5-20020a17090772c500b006dae99e226cmr22932635ejc.515.1647339496146; Tue, 15
 Mar 2022 03:18:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:f916:0:0:0:0 with HTTP; Tue, 15 Mar 2022 03:18:15
 -0700 (PDT)
Reply-To: sgtkaylam28@gmail.com
From:   kenth live <kenthlive4@gmail.com>
Date:   Tue, 15 Mar 2022 03:18:15 -0700
Message-ID: <CACHSKToBLLwqx9hqXsMdcHyhtjvAy4fZ5hh1ceww+AqYMs3g9g@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings,
Please did you receive my previous message? Write me back
