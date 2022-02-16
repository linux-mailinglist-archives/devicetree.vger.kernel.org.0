Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD0564B8A7F
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 14:43:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232920AbiBPNnU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 08:43:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233592AbiBPNnU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 08:43:20 -0500
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70D91F6BB1
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:43:07 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id w128so561022vkd.3
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9pqNKskTyLXhr8xP+QiSJwMaHEaBTYIH+Ir6rKrs3xo=;
        b=eb0ulDFroVQltk08K8jeLtboft6y4U0CPTqRsByMyydEW01i/aK+h/2SHlVp/dTqvs
         TfhoivXl7Nv+0OiTDvjqn9G6nuWCgA9ywonjGTbRXCU4ZRNJrF/iY9dmZwyJjF921mLs
         vtWJzHrvMsoI4HtPf/F1OrVGJQT1PB/8iMwEcwukzo9Z2kKE+9Yz12oCqCTRnxAKfSbk
         RDvFxGJ3yNo2yjoSd+ZXjj1rLSf1hzYoMHajvY/6N+Ft3v8v8VKjpRSMeFqPkDdUoA0Z
         UAnIMy7qtgIgmaD4i3B94bJLQwwPnNEqrvPMaSRXI67mkemiG9Y5XCSKbuVaGT4ti98C
         KpYA==
X-Gm-Message-State: AOAM531mYm+nIX49VodoqJmp7OYMr8H2To14FGU7QA8BTM69uubSCAkm
        i8OKhyQHdNMRxcTDDq88egPHO2YTpABtyg==
X-Google-Smtp-Source: ABdhPJza6rTvRQDIhJcyaODda4er4dgWk4K7L0HjuQZfPJn/kKHyqRiSTLU28dYz2uXw0fEhOTbIaA==
X-Received: by 2002:a05:6122:d8b:b0:331:15f5:22e6 with SMTP id bc11-20020a0561220d8b00b0033115f522e6mr65013vkb.17.1645018986541;
        Wed, 16 Feb 2022 05:43:06 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id d202sm6389938vkd.38.2022.02.16.05.43.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 05:43:06 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id e6so2457812vsa.8
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:43:06 -0800 (PST)
X-Received: by 2002:a05:6102:4411:b0:31b:6df1:3b80 with SMTP id
 df17-20020a056102441100b0031b6df13b80mr940799vsb.5.1645018985783; Wed, 16 Feb
 2022 05:43:05 -0800 (PST)
MIME-Version: 1.0
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
 <e6ddc2fb-7753-ae89-e9fd-f2b9efd91881@canonical.com>
In-Reply-To: <e6ddc2fb-7753-ae89-e9fd-f2b9efd91881@canonical.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Wed, 16 Feb 2022 14:42:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU03=jkL0EkupBQmSDGOO7WHz7JtwHQWZpbFOwAB4pXhA@mail.gmail.com>
Message-ID: <CAMuHMdU03=jkL0EkupBQmSDGOO7WHz7JtwHQWZpbFOwAB4pXhA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Feb 16, 2022 at 2:39 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
> On 16/02/2022 14:21, Geert Uytterhoeven wrote:
> > "make dt_binding_check":
> >
> >     Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
> > schemas").
> > ---
> >  Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > index 800417a76bda0bd9..3735f221fdf24e0a 100644
> > --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > @@ -51,6 +51,7 @@ properties:
> >        be any memory reserved for the purpose of this communication between the
> >        processors.
> >      minItems: 1
> > +    maxItems: 2
>
> The same should be done to "mboxes" (I mean 39bd2b6a3783b899 and what
> you are doing here)

Indeed, thanks!

> and the maxItems should match both, shouldn't it?

No idea, I'm not familiar with SCPI ;-)

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
