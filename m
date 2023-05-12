Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABD90700955
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 15:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240487AbjELNkt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 09:40:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240443AbjELNks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 09:40:48 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5509C11DB6
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:40:46 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-61b72fd8cc0so47576506d6.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683898843; x=1686490843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GHh7THGmNUX1NDYtIMVbnhFwwspK0WwD8hBv2/VAAYc=;
        b=Psj29r1PlOCjFjEjYy36UNnuxRGVCbA+oN3zRgS/1CmXy5q9iaPDkcVBJldBqpQgwP
         nwiRechmADrRLsnrZNcLqkumXhH+vhE091PGeLM9rBeixwT0mFOZM/Q04F2QRrqaVwuX
         k3+CUAJiPxa1n9N8FdpnnNscy4yJSHolggdMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683898843; x=1686490843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GHh7THGmNUX1NDYtIMVbnhFwwspK0WwD8hBv2/VAAYc=;
        b=RXy+dNwoF4dCyZIUMoNz8/2JB1dtwnJcDwuyTvV0Zkiz1QBQZqlDCq+AoItZ+c60/I
         nXpLQ5b+q+SBuRyEpaqE27Hg4jIoBlZfArBVk0Gebcywsq3kJUkESNr18mWk82kJZLuf
         ZOiXCvMJTYuaJwEIu3ynEsLJYj22Xq8P8OSYE3aFyXOepLXiwYudWnu51WeY8I5olx0Y
         l/f+ce/rqNKiIEGviTnjE4CGcgda3962UuA0fEQLMcCRyAmHVXMeJO9iK5VpSUPiuoQj
         /HnT8JH4J5rMTKRtlFyEV/hLM2BIrW6hI9Za3qAKlYYMjXqxJds8CpSo3OOdrQm23vMM
         NPVw==
X-Gm-Message-State: AC+VfDzdMzgsD5/MkjpBJNAc80MCDIQD2BY3eCaI2j5duDvdSDAczQ41
        UDPH5bcrZsA2ouzNQWi+AFWni1kFzNvXj/bnK/k=
X-Google-Smtp-Source: ACHHUZ7t2nmFZNGVDl+7Cq26YqzG/9YMzuFfF24CasK2rAZdAuvALPA6a3uQiRQmKJfA1EIOIf9K/g==
X-Received: by 2002:a05:6214:1c46:b0:5ce:6636:a45 with SMTP id if6-20020a0562141c4600b005ce66360a45mr41871581qvb.25.1683898842700;
        Fri, 12 May 2023 06:40:42 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id e25-20020a0cb459000000b0062142017f4csm2419959qvf.143.2023.05.12.06.40.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 06:40:40 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3f38a9918d1so1015571cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:40:39 -0700 (PDT)
X-Received: by 2002:a05:622a:1812:b0:3ef:1c85:5b5e with SMTP id
 t18-20020a05622a181200b003ef1c855b5emr253424qtc.19.1683898839232; Fri, 12 May
 2023 06:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
 <20230511150539.1.Iabe67a827e206496efec6beb5616d5a3b99c1e65@changeid> <86v8gym0ys.wl-maz@kernel.org>
In-Reply-To: <86v8gym0ys.wl-maz@kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 12 May 2023 06:40:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VnNaRc7D3nZ658KD18fDSQCBODS-16gpERkKcb7v793w@mail.gmail.com>
Message-ID: <CAD=FV=VnNaRc7D3nZ658KD18fDSQCBODS-16gpERkKcb7v793w@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: interrupt-controller: arm,gic-v3: Add
 quirk for Mediatek SoCs w/ broken FW
To:     Marc Zyngier <maz@kernel.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        wenst@chromium.org, Eddie Huang <eddie.huang@mediatek.com>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        Tinghan Shen <tinghan.shen@mediatek.com>, jwerner@chromium.org,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        yidilin@chromium.org, Seiya Wang <seiya.wang@mediatek.com>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 12, 2023 at 1:02=E2=80=AFAM Marc Zyngier <maz@kernel.org> wrote=
:
>
> On Thu, 11 May 2023 23:05:35 +0100,
> Douglas Anderson <dianders@chromium.org> wrote:
> >
> > When trying to turn on the "pseudo NMI" kernel feature in Linux, it
> > was discovered that all Mediatek-based Chromebooks that ever shipped
> > (at least ones with GICv3) had a firmware bug where they wouldn't save
> > certain GIC "GICR" registers properly. If a processor ever entered a
> > suspend/idle mode where the GICR registers lost state then they'd be
> > reset to their default state.
> >
> > As a result of the bug, if you try to enable "pseudo NMIs" on the
> > affected devices then certain interrupts will unexpectedly get
> > promoted to be "pseudo NMIs" and cause crashes / freezes / general
> > mayhem.
> >
> > ChromeOS is looking to start turning on "pseudo NMIs" in production to
> > make crash reports more actionable. To do so, we will release firmware
> > updates for at least some of the affected Mediatek Chromebooks.
> > However, even when we update the firmware of a Chromebook it's always
> > possible that a user will end up booting with old firmware. We need to
> > be able to detect when we're running with firmware that will crash and
> > burn if pseudo NMIs are enabled.
> >
> > The current plan is:
> > * Update the device trees of all affected Chromebooks to include the
> >   'mediatek,gicr-save-quirk' property. The kernel can use this to know
> >   not to enable certain features like "pseudo NMI". NOTE: device trees
> >   for Chromebooks are never baked into the firmware but are bundled
> >   with the kernel. A kernel will never be configured to use "pseudo
> >   NMIs" and be bundled with an old device tree.
> > * When we get a fixed firmware for one of these Chromebooks, it will
> >   patch the device tree to remove this property.
>
> Since you're in control of distributing the FW together with the
> kernel, I assume you're also in control of the command line. Why can't
> that firmware pass the option enabling the pseudo-NMI support,
> dispensing ourselves from all of this?

I considered the option, but it gets really awkward. Specifically:

1. We can't have old firmwares "take away" the kernel command line
option enabling pseudoNMI, obviously.

2. Having new firmware inject `irqchip.gicv3_pseudo_nmi=3D1` into the
kernel command line feels really awkward from an abstraction point of
view. This bakes into the firmware an implementation detail about how
something is implemented / enabled in the kernel, which feels wrong.
In general I'm not a fan of needing the kernel command line argument
to begin with and I'd hope that eventually it could go away.

3. Having the firmware inject `irqchip.gicv3_pseudo_nmi=3D1` into the
kernel command line also makes it awkward when you consider
non-affected boards. On Qualcomm boards, Rockchip boards, and x86
boards we want to enable pseudo NMI without needing to spin the
firmware to have it add this option. ...so we have to add this option
to the "default" command line for every board _except_ affected
Mediatek boards? Is this weird convention something that our build
system carries as we move to newer Mediatek SoCs that aren't affected?
What if we want a single build for Mediatek and Qulcomm boards (which
is something that has been bandied about, even if we haven't done it
yet).

Considering all the above, I think trying to use the
`irqchip.gicv3_pseudo_nmi=3D1` like this wouldn't fly.


> > For some details, you can also see the public bug
> > <https://issuetracker.google.com/281831288>
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  .../bindings/interrupt-controller/arm,gic-v3.yaml           | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm=
,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,g=
ic-v3.yaml
> > index 92117261e1e1..8c251caae537 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3=
.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3=
.yaml
> > @@ -166,6 +166,12 @@ properties:
> >    resets:
> >      maxItems: 1
> >
> > +  mediatek,gicr-save-quirk:
>
> I think this deserves something *much* stronger that outlines what is
> wrong, because this is not just a quirk. This is a failure to even
> remotely grasp the requirements of the architecture (and to use
> standard, public code that would have done it correctly). Something
> like "mediatek,broken-save-restore-fw" would be more adequate.

Sure, I'll rename it in the next spin. Unless we get into a big
discussion somewhere else in this patch, I'll plan that for early next
week.


> > +    type: boolean
> > +    description:
> > +      Asserts that the firmware on this device has issues saving and r=
estoring
> > +      GICR registers when CPUs are powered off.
>
> Nit: not the the CPUs, but the GIC redistributors.

Ah, good point. I'll update.
