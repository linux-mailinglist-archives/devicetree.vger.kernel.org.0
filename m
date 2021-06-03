Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE8043996E8
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 02:26:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbhFCA2a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 20:28:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbhFCA2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 20:28:30 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0187AC061756
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 17:26:30 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id b25so4607038oic.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 17:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=B8ntVkRmR8E43fhNi8KeT7nhYBeBN9hBXViNMog7Bsk=;
        b=C77vD+t8OtBkg9dljmgfMjBEEVMtuXrAmVngzfXqaHPLj956rAsj6wz7e3fjLkGPzP
         tiAP7V6FNIdZrS6jzIY/5jXBiNp5ugOgm6fUMFOsAI6eKI+EswgiMUbnCVl4sonIXryP
         XVKglZj+p1g766U4uQ7Ke/YHKdWFpew+aLbno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=B8ntVkRmR8E43fhNi8KeT7nhYBeBN9hBXViNMog7Bsk=;
        b=STRWUPdhARrOUBJhun9+muDM93mLKTDiGoo8RVA4axiz4iNRTPUr/87igP1cwUTpT/
         VtyV/MAcPKEniYM7kGSifD54p+cgfglXG6PrKK3s8BpDoRNGSY76UHgzAPQFj8cCmkyE
         z6osf2ZCdkEHg85GpNmcnQ2FbJj7cwQNbUFYzA4Lf074hJN551jrA/PN9jzqoY+c8Ol6
         D4zN2BdRtKv1d/yK2SFbMd2hV2PSCwMyvzDJiIKmLDzptaPALR/DQapcIuYf3wi2B/dQ
         hATOx5qoqfroKlh683Zy/gYv0jCXxSIdb9UENU3iYDfMSD5QRHRFj24vaPpbmeD8gAXQ
         iG/w==
X-Gm-Message-State: AOAM530omXpC29DfMgGfdbsd0xams5VfCIatewsbgajrTLx8LFwNtPb3
        JUanRu37J5yRg4o7I9039ZaAdbUPjGwEoBMKtjJi5A==
X-Google-Smtp-Source: ABdhPJzKY0HPWjI8NjFdoNKSw34eV8qhj0aoqdjvz+fGKCJfZaR3F2ARysDq3YKVHf9CSBzj/y9mnsOrvWthzU272K0=
X-Received: by 2002:a54:4501:: with SMTP id l1mr23692943oil.19.1622679990245;
 Wed, 02 Jun 2021 17:26:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 2 Jun 2021 17:26:29 -0700
MIME-Version: 1.0
In-Reply-To: <YLUjbwFSJOSWS0IV@builder.lan>
References: <1621596371-26482-1-git-send-email-mkshah@codeaurora.org>
 <1621596371-26482-4-git-send-email-mkshah@codeaurora.org> <CAE-0n53ySKwDwzRYFYjnQnqVAujVrkik2U-PeCuS61xQU-hbWA@mail.gmail.com>
 <YLUjbwFSJOSWS0IV@builder.lan>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 2 Jun 2021 17:26:29 -0700
Message-ID: <CAE-0n53hdd1tEmYwTL0CNi=S6CUxRhWnkJz-KoTj2UnedNKXmg@mail.gmail.com>
Subject: Re: [PATCH v8 3/5] arm64: dts: qcom: sc7180: Enable SoC sleep stats
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Maulik Shah <mkshah@codeaurora.org>, evgreen@chromium.org,
        mka@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        dianders@chromium.org, linux@roeck-us.net, rnayak@codeaurora.org,
        lsrao@codeaurora.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2021-05-31 10:57:03)
> On Wed 26 May 18:30 CDT 2021, Stephen Boyd wrote:
>
> > Quoting Maulik Shah (2021-05-21 04:26:09)
> > > Add device node for SoC sleep stats driver which provides various
> > > low power mode stats.
> > >
> > > Also update the reg size of aoss_qmp device to 0x400.
> > >
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> > > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7180.dtsi | 7 ++++++-
> > >  1 file changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > index 6228ba2..889d04d 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > @@ -3215,7 +3215,7 @@
> > >
> > >                 aoss_qmp: power-controller@c300000 {
> > >                         compatible = "qcom,sc7180-aoss-qmp";
> > > -                       reg = <0 0x0c300000 0 0x100000>;
> > > +                       reg = <0 0x0c300000 0 0x400>;
> > >                         interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
> > >                         mboxes = <&apss_shared 0>;
> > >
> > > @@ -3223,6 +3223,11 @@
> > >                         #power-domain-cells = <1>;
> > >                 };
> > >
> > > +               rpmh-sleep-stats@c3f0000 {
> > > +                       compatible = "qcom,rpmh-sleep-stats";
> > > +                       reg = <0 0x0c3f0000 0 0x400>;
> > > +               };
> > > +
> >
> > Does this need to be in DT? Can the sc7180-aoss-qmp driver use the
> > aux-bus and stick the sleep stats device on there?
> >
>
> The AOSS memory space has N chunks of "message ram", one is used for the
> QMP protocol (presumably the APSS specific one), a different one is used
> for the sleep stats.
>
> I presume we could have come up with a binding for the entire AOSS/AOP
> and then describe (either implicit or explicitly) the QMP and
> debug-stats under that.
>
> But we'd also have to come up with the same container-device for the RPM
> case.

Because the rpm node doesn't include this region of memory today? I
still fail to see why we're changing the existing binding and adding a
DT node for this new region that is basically a debug feature.
