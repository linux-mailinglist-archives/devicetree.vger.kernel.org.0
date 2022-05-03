Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFEFD518978
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 18:14:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239255AbiECQSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 12:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239254AbiECQSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 12:18:09 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3417C3B29F
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 09:14:37 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id m20so34353363ejj.10
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 09:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bOowZENKEYBOQ5gQtuLs74mzTNH8Gi+Wvcp/0afqUT4=;
        b=EEwYnpnu/2Fhr2sQHT2uhYWiyPhvmtU8DzHokKeYAXu5vlR0UiuNcMwlij7eWJT/Nd
         KGBSe8Pej98sSFsthhMfgTmsJ5yPc7UFnVb+KTUDaeG/1/BJHloKuzgbBAk7p6W+v8RQ
         xOP2eAJC4V5tKxUYoLIDLfVmxDH3iyr65NTWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bOowZENKEYBOQ5gQtuLs74mzTNH8Gi+Wvcp/0afqUT4=;
        b=zP/JBgs5Hk2SVAaShStNn9zUt3njm7r5RhsvLcd57PfzQ67x0PtB1D3surww5Tm1J0
         rvVvlMqIM5mPgZJowdDoPrInbsEpMolEv15JFYLZvR26D/XvBAPThD29cBV/RFETTX18
         koeIKZNvJJk5qDSS9790bpdKt4rYpPxh3hPYN67/BM9aGZCJHO1yVCWFOiYc5kacarKO
         bXwpoZIjisFkiNfF0MeQa1bSGxTLmqTkSGoScaaUkoGVO7qpuPWZ7SOTfT0a4p24WK1q
         MhELCtyrdVRYbRW3A/7PqdK8sYiix6cAvlqPvcerFOgGwoJnu0ADmV+uL4Msdv38Eo60
         8rxw==
X-Gm-Message-State: AOAM531AkuE6mCGpZK67QEv0NCS7ETCmjVyqCS+aknkCGsN1cxn4Zc+Q
        IePbCYHnZH3zPQ6gdyHCJRURd5FZG1QtVtBI
X-Google-Smtp-Source: ABdhPJxC0r1Kk1xX5l4w6de0hcRXYdNOOk542NTQulaGavPijfVuGVZZX3SBzVnzevL7XkZLR7TtRQ==
X-Received: by 2002:a17:907:7204:b0:6f4:2c26:5f7 with SMTP id dr4-20020a170907720400b006f42c2605f7mr13094604ejc.506.1651594475483;
        Tue, 03 May 2022 09:14:35 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id de46-20020a1709069bee00b006f3ef214e5asm4813764ejc.192.2022.05.03.09.14.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 09:14:34 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id x18so24101866wrc.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 09:14:34 -0700 (PDT)
X-Received: by 2002:adf:f50d:0:b0:20a:e096:ef with SMTP id q13-20020adff50d000000b0020ae09600efmr13256382wro.679.1651594474057;
 Tue, 03 May 2022 09:14:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220503042242.3597561-1-swboyd@chromium.org> <20220503042242.3597561-2-swboyd@chromium.org>
 <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org> <CAD=FV=UEBi9dctmhaAi1z+c+Sj5gtcRrc3FRW294T55dTiAidQ@mail.gmail.com>
 <cd1da207-1f15-f3f1-7190-56b983e75024@kernel.org>
In-Reply-To: <cd1da207-1f15-f3f1-7190-56b983e75024@kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 3 May 2022 09:14:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XHNuvhekh=hepGePftaMXnDJGeJP=Lg8VfqmGdKt7HEA@mail.gmail.com>
Message-ID: <CAD=FV=XHNuvhekh=hepGePftaMXnDJGeJP=Lg8VfqmGdKt7HEA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 3, 2022 at 8:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 03/05/2022 17:46, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, May 3, 2022 at 8:42 AM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 03/05/2022 06:22, Stephen Boyd wrote:
> >>> If the ChromeOS board is a detachable, this cros-ec-keyb device won't
> >>> have a matrix keyboard but it may have some button switches, e.g. volume
> >>> buttons and power buttons. The driver still registers a keyboard though
> >>> and that leads to userspace confusion around where the keyboard is.
> >>
> >> (...)
> >>
> >>>
> >>> +if:
> >>> +  properties:
> >>> +    compatible:
> >>> +      contains:
> >>> +        const: google,cros-ec-keyb
> >>> +then:
> >>> +  allOf:
> >>> +    - $ref: "/schemas/input/matrix-keymap.yaml#"
> >>> +  required:
> >>> +    - keypad,num-rows
> >>> +    - keypad,num-columns
> >>> +    - linux,keymap
> >>
> >> else:
> >>   properties:
> >>     function-row-phsymap: false
> >>     google,needs-ghost-filter: false
> >>
> >> Because these are not valid for the non-matrix-keyboard case, right?
> >
> > Isn't that implicit because this file has `unevaluatedProperties: false` ?
>
> But they are evaluated here, aren't they?

Only if the "if" test, though? ...ah, or is this a difference between
"unevaluatedProperties" and "additionalProperties" ?

-Doug
