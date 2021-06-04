Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA14B39BC23
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 17:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbhFDPn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 11:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbhFDPn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 11:43:59 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4378CC061766
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 08:42:13 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id h16so5774261pjv.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 08:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=avScXTz/Huy5XD7sMcNy92Z+p2c4KeIAw9ExYSquTes=;
        b=vhpiFCqiZrdVrKr9QPghWlIwJ5c/EFtK1xpI6Qa27Y5bZbHVS3ou6NWQBc4ILvz8bF
         C1vV6rxJD80EhE/uTExvfKatQJv/V9zg6q1qdxKBi+0PM2WZrc3h+mqCHxtkcP6zU02y
         n2ve1ayVl01PxY8Nxyht82Y8pezJ9UaGaTxWnyd7cUs6n6mc+ewDPNp3VgA5VI0JiXYX
         Dpl1DSJBClU3jDQ0TsgBDZhCBsNjFPsMGflGbHYOa/aBiCFQnfiasQ95dJbPP4NgKDHY
         rcCsWa7bjrLDq8xX68gM3QsEtFx5oZI/Z6lOgKMoqort+9SE3uEboEwB5G7Rhb1X9/uZ
         Ghpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=avScXTz/Huy5XD7sMcNy92Z+p2c4KeIAw9ExYSquTes=;
        b=PBif60BQ+vj7Q4ebrRRAG939DSaa8D22w4ZlJI06sdrTZwL3MRblcUlfjzd8Ren/2w
         exl5/agffw23uL007k8qzdLhgm81k61ItqfEVL2jeXU0WwuNzJmo69uZ1p1CX5CkMv24
         0F6BNgb48m6xJsOL4/SS4HdoQu/Jp3emsbJRZIQM2W6bbJryyrdwcBJ92kqroD1hI/yi
         q0sXfRp03/kfQYfPIQpca/qTStWNHsjdlJBu9Wz0HU5s5TP82jhE4DCtChzs14iJOQSc
         pjjaInhKdoxQ5JPea/j0Ws3rnULE5Sx8o5jyqPq4o9ySNwrTPDn6NbU8tXHKd2V7Fnyq
         +OMg==
X-Gm-Message-State: AOAM5308cb3vaXK8F6d8VkfOkvc+zt2CXibP5fsFnvy4te/5Oit6nvkK
        PE47rM4pu/jpqxy/5ITt36izAICFUVHUQ4st3GkAOA==
X-Google-Smtp-Source: ABdhPJwsqSvfQWNUp1WywhEcs6XEDrUuv/b1s5Ev+HR3FFXPwrbkIaAu3yl0B783PAlgMKsYZl5eGcCF04hI/yGx4jY=
X-Received: by 2002:a17:903:1241:b029:10f:ff8c:a3fe with SMTP id
 u1-20020a1709031241b029010fff8ca3femr1000577plh.13.1622821332636; Fri, 04 Jun
 2021 08:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
In-Reply-To: <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 4 Jun 2021 08:42:01 -0700
Message-ID: <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 2, 2021 at 12:11 AM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> On 01.06.21 19:49, Tim Harvey wrote:
> > Override the default temperature alert/crit for Industrial temp IMX8M
> > Mini.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > index c769fadbd008..512b76cd7c3b 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> > @@ -493,3 +493,15 @@
> >               >;
> >       };
> >  };
> > +
> > +&cpu_alert0 {
> > +     temperature = <95000>;
> > +     hysteresis = <2000>;
> > +     type = "passive";
> > +};
> > +
> > +&cpu_crit0 {
> > +     temperature = <105000>;
> > +     hysteresis = <2000>;
> > +     type = "critical";
> > +};
>
> As this is not really board-specific, I think the proper way to handle this for all boards is to let the thermal driver read the temperature grading from the OTP fuses and set the trip-points accordingly, similar to what is done on i.MX6 [1].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/thermal/imx_thermal.c?h=v5.13-rc4#n508

Frieder,

Yes, I thought about adding that kind of support to imx8mm_thermal.c
but the difference is that imx8mm has alerts defined by dt and imx6
does not so is it right to override dt alerts on imx8m? What if
someone designs a board that they specifically want a lower alert than
the cpu grade they are using based on something else on the board?

My approach to this was to eventually actually adjust the imx8m dt
alerts in boot firmware based on some boot firmware setting or
specific board support and leave the kernel alone.

Best regards,

Tim
