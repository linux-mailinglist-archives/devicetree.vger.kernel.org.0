Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10600625CE2
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 15:23:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234074AbiKKOXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 09:23:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234015AbiKKOWs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 09:22:48 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD8C391E8
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 06:20:15 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id f5so12897683ejc.5
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 06:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8XnWoqHqROPGOcHnPLYRMUbIWz7bYGAQqwcf2qs2Ipc=;
        b=PeZS2Cec6kqzUIH/C6si5K5+55feIDD54TJPB19WX4Zcoql/RyX4YgLOpYMHgn4XHh
         9yRdI++voSchETEZQNwseFKrJo6xkO2WVjPYcY71RIeYBEL38KmwtXSPYUaF+aD7PfZ2
         s70iFz5H6e+Rd60Nvywe33lLde8Vra+pmA7Va1+doOoTIjkR9sh5eywJ2JL+lJFMPDuM
         zjXwP+wdJwrBp/qXzd6hXHMkW8yW8ZGdKRD7B2cmd4rYhtZMYnPQkq3Ywgg5tFhuQZd+
         QCL9HXsVCJcDPrMW2dY3UJHGOylAgruM448ZhHeUV/hllLejfdj/bmM+Va1eTVtXV7ig
         Jptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8XnWoqHqROPGOcHnPLYRMUbIWz7bYGAQqwcf2qs2Ipc=;
        b=yl2DMHbLlAsriU4ZIkyypcvvmJhxA4ZXOoJswHZMj0VwULIr7Hxt36icNJ9VZTcs4T
         RilJeRkoHABDoqyd1CcfBodLjUP2MH4HGQldC5cjroRxgbE7yhyFHOfohA/NrTS+oT/c
         5/lSkogwDRSg7KrH/xlUxCTl1BZeqUo9Nn9fZID+xX+xTD5FZXLtJeeW6gQ+N78bBX2D
         hLNPOtAXe2GSBIe0JWLw0f4vtBBB4HfItPRpKXTlYClBH7TBPQ115I/PjfJh6PGTlcer
         Ous3hvyAh+qIjUhodqza5X3nCZYXMm/9Un9qk9zq6XB+YGcsZAfn6y83jnEf4VGUfIEi
         mcSA==
X-Gm-Message-State: ANoB5pnd2OP1PM7qRYCDpO4thriHuGiO3+0mfNNL2zIOSa7g72GUzbN7
        r7yJiq7dn1z8FrazWs9tk6RHX/Bll//bCo5EBlRP4Q==
X-Google-Smtp-Source: AA0mqf4RBAVXKNecwLciDe0WJIDDV+587AIbknjYLqIA0UyJubGVzkQkzChS6pa5mn54/eWVP8ecSisCZ6otgHH5YbU=
X-Received: by 2002:a17:906:b44:b0:7ad:b8c0:3057 with SMTP id
 v4-20020a1709060b4400b007adb8c03057mr1992303ejg.440.1668176414026; Fri, 11
 Nov 2022 06:20:14 -0800 (PST)
MIME-Version: 1.0
References: <20221108092840.14945-1-JJLIU0@nuvoton.com> <20221108092840.14945-4-JJLIU0@nuvoton.com>
 <CACRpkdb+Bkwa8yCKGtRcsJ6KnJh+RUuz_gOrQV63pcYQLaHCaw@mail.gmail.com> <CAKUZ0+GCf_Zv=VhnY5Z=yYAfR1=_ha98BVVxRGVy8ui6so_Yrg@mail.gmail.com>
In-Reply-To: <CAKUZ0+GCf_Zv=VhnY5Z=yYAfR1=_ha98BVVxRGVy8ui6so_Yrg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Nov 2022 15:20:02 +0100
Message-ID: <CACRpkdYW0P8gqtGdiRX_frP32WF2W=NVg1JTu1fVMBXxEL0-WA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: gpio: Add Nuvoton NPCM750 serial I/O
 expansion interface(SGPIO)
To:     Jim Liu <jim.t90615@gmail.com>
Cc:     JJLIU0@nuvoton.com, KWLIU@nuvoton.com, brgl@bgdev.pl,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 11, 2022 at 10:30 AM Jim Liu <jim.t90615@gmail.com> wrote:

> -D_out:
> the output data is the serial data needed to connect to hc595 and the
> data will output to hc595 parallel pins.
> you can use dts nout_gpios to create the number of pins.
>
> -D_in
> this pin need to connect to hc165 and get the serial data from hc165.
> you can use dts nin_gpios to create the number of pins.

In the example it seems you enable d_out and d_in for *all* 64
pins, correct? So they are all either input or output.

That in effect turns them into GPIOs, so I don't see the problem
with simply always doing this?

Just that things are configurable doesn't mean we always need
to provide means to configure them.

If you have a use case where the user wants to control this, then
that is another thing. Otherwise just make all pins input and output
and wait for a usecase that needs more control, maybe it will
never appear.

Yours,
Linus Walleij
