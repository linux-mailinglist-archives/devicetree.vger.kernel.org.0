Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3C83A48E6
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 20:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhFKS50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 14:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhFKS50 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 14:57:26 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6991CC061574
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 11:55:28 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id k5so6202799pjj.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 11:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aQ0QO0h8aoEGycfmGR0+TIM0LJMpu0pkcrcpKPrPTs8=;
        b=o92kW98hiYSJapWCq+w+uXr2rKomAWGwu5lEddmV/tnaoJ7jRPd1spC7Az2abOoJhK
         /Ji99ZmgXJmz3KNUn1CtldZzl3CHvBMjTGUmzqf7fNu2pEsAXch4J/nIKZgsKlM7TFZ0
         eqZ71WJhulmIl0F92L85C+6NNfYMMZvmFPm2qgVzxEeeM2bIFoMvAGGbXPqmy/m3AehF
         nEC4h3Sk4fj3u2WKBO+XD2Ghf3U0k33BWRsWlcx/msIh9UQby8+33a7ixAiOk/trEUmQ
         6uGXorNvNV/cyhPQG3ng0hpI4yIgfVCZpJ7XZkyGe9Sp+w+AIAbC2aWNtTrsqkFMrFBm
         cePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aQ0QO0h8aoEGycfmGR0+TIM0LJMpu0pkcrcpKPrPTs8=;
        b=Pg4hOXSYeL1Kn8xnVSJrlGPJrY5qTQXKV8QhAGDto9RGyI+HNxfYV11FlFqZrbLAIh
         36eQl+E31bOQe+VAjsciDAOovxV+sT1szdBYsgh/rbjgVYKb0H8rpfkx+YpsHeecO9Wq
         tdOQJQMZTI7IbcvtGM6n1dCJIm0eBRZWNJGjMPzoa2Fblq/Dgw07H148Tnce+YPQnBBD
         WBb1bdpzq+P9MK5k3ReMrNftSY4o1/F+K5wJbVgBrIv1umobJYYyjiVhRmDZg925oLsH
         WbyUA6DXc3N0LkI9RhGMiVQduIFVtYMKKssekSklaMfEWTdYZ7PDHs3EYaGaBdlGn75p
         pGag==
X-Gm-Message-State: AOAM530DYO8jHAvl6U8nQrKy942yWVfng9QpJXj4R9tkQHyfTuvnSwu1
        cwThMlTtTZ6CyMSRn5xOjaaGcgWYNUKXWiESlObs8w==
X-Google-Smtp-Source: ABdhPJy7CAd3K4ZYdyXL8F5lowsQYZsXeVHU6EhUe5rTmFq8qT7FHT3TG02781ZGIZ394iapgifFVuKbcdrUR739esA=
X-Received: by 2002:a17:903:1241:b029:10f:ff8c:a3fe with SMTP id
 u1-20020a1709031241b029010fff8ca3femr5166494plh.13.1623437727770; Fri, 11 Jun
 2021 11:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210601174917.1979-1-tharvey@gateworks.com> <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
 <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de> <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
 <273e2859-7874-e273-9599-139274891023@kontron.de> <DBBPR04MB7930943628D1E80C17237D8187389@DBBPR04MB7930.eurprd04.prod.outlook.com>
 <717608d8-685a-0435-aaa2-3bd4f82f3b97@kontron.de>
In-Reply-To: <717608d8-685a-0435-aaa2-3bd4f82f3b97@kontron.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 11 Jun 2021 11:55:16 -0700
Message-ID: <CAJ+vNU1bj6VtVSo45tG4nP8Pv9rx4oDyxNKZB2zAX85Y2c7=pg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     Jacky Bai <ping.bai@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 1:34 AM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> On 07.06.21 10:00, Jacky Bai wrote:
> >> Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override
> >> thermal cfg for industrial temp
> >>
> >> On 07.06.21 09:30, Jacky Bai wrote:
> >>>> Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override
> >>>> thermal cfg for industrial temp
> >>>>
> >>>> On 04.06.21 17:42, Tim Harvey wrote:
> >>>>> On Wed, Jun 2, 2021 at 12:11 AM Frieder Schrempf
> >>>>> <frieder.schrempf@kontron.de> wrote:
> >>>>>>
> >>>>>> On 01.06.21 19:49, Tim Harvey wrote:
> >>>>>>> Override the default temperature alert/crit for Industrial temp
> >>>>>>> IMX8M Mini.
> >>>>>>>
> >>>>>>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> >>>>>>> ---
> >>>>>>>  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12
> >>>> ++++++++++++
> >>>>>>>  1 file changed, 12 insertions(+)
> >>>>>>>
> >>>>>>> diff --git
> >>>>>>> a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> >>>>>>> b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> >>>>>>> index c769fadbd008..512b76cd7c3b 100644
> >>>>>>> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> >>>>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> >>>>>>> @@ -493,3 +493,15 @@
> >>>>>>>               >;
> >>>>>>>       };
> >>>>>>>  };
> >>>>>>> +
> >>>>>>> +&cpu_alert0 {
> >>>>>>> +     temperature = <95000>;
> >>>>>>> +     hysteresis = <2000>;
> >>>>>>> +     type = "passive";
> >>>>>>> +};
> >>>>>>> +
> >>>>>>> +&cpu_crit0 {
> >>>>>>> +     temperature = <105000>;
> >>>>>>> +     hysteresis = <2000>;
> >>>>>>> +     type = "critical";
> >>>>>>> +};
> >>>>>>
> >>>>>> As this is not really board-specific, I think the proper way to
> >>>>>> handle this for
> >>>> all boards is to let the thermal driver read the temperature grading
> >>>> from the OTP fuses and set the trip-points accordingly, similar to
> >>>> what is done on i.MX6 [1].
> >>>>>>
> >>> ...
> >>>>>
> >>>>> Frieder,
> >>>>>
> >>>>> Yes, I thought about adding that kind of support to imx8mm_thermal.c
> >>>>> but the difference is that imx8mm has alerts defined by dt and imx6
> >>>>> does not so is it right to override dt alerts on imx8m? What if
> >>>>> someone designs a board that they specifically want a lower alert
> >>>>> than the cpu grade they are using based on something else on the board?
> >>>>>
> >>>>> My approach to this was to eventually actually adjust the imx8m dt
> >>>>> alerts in boot firmware based on some boot firmware setting or
> >>>>> specific board support and leave the kernel alone.
> >>>>
> >>>> Allowing board-specific trip points sounds like a valid request, but
> >>>> I still think we need a way to handle the temperature grading in the
> >>>> driver if no board-specific trip-points are given.
> >>>>
> >>>> What if we just set the temperature property in the trip nodes in
> >>>> imx8mm.dtsi to zero? The thermal driver would detect this and setup
> >>>> the correct values according to the grading. If the dt already
> >>>> provides non-zero temperature values (through the board dts) the
> >>>> driver will just leave the values and disregard the grading.
> >>>>
> >>>> I think this solution would be covering all needs.
> >>>
> >>> I thought to add the grading check in the imx8mm_thermal.c to
> >>> dynamically set the trip points temp, but it seems hard to do it due
> >>> to the fact of_thermal is used, as no helper API is exported by of_thermal,
> >> no better way to override the trip point temp.
> >>>
> >>> glad to see any good suggestions.
> >>
> >> Right, the driver doesn't handle the trip-points directly. This is all hidden in the
> >> framework. So this might not be so easy to implement.
> >>
> >> What about this other approach: Adding all the possible trip-points for the
> >> different gradings to the SoC-devicetree and then let the thermal driver
> >> remove the trip nodes from the dt that are not valid for the detected grading,
> >> just before the driver registers the sensor/zone.
> >
> > It is more reasonable for the firmware/bootloader to handle this by checking the grading.
>
> If possible, I would rather like to avoid creating another dependency on bootloader/firmware. I think the kernel should be able to detect the grading by itself and adjust its behavior accordingly. We also do this for the speed grading in cpufreq.

Frieder and Jacky,

I'm ok with dropping this dt patch and instead implementing something
in boot firmware that automatically detects and adjusts there. I'm not
given the time to work through a more complicated or more elegant
solution kernel-only approach for this and handling it in the boot
firmware will not break anything or create a dependence from where we
currently stand. We already have things in boot firmware that populate
mac addresses, mtd partition ids, etc in dt during runtime.

Best regards,

Tim
