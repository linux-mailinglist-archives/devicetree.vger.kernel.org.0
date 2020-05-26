Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6276319BF7D
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2020 12:40:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387709AbgDBKkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Apr 2020 06:40:15 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:35893 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728612AbgDBKkP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Apr 2020 06:40:15 -0400
Received: by mail-ua1-f67.google.com with SMTP id m15so231805uao.3
        for <devicetree@vger.kernel.org>; Thu, 02 Apr 2020 03:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EKz0BYCnAYaxNPQCfa65G2LlOu2wy+lcqbRhsvRTDzY=;
        b=gbcQgrA22EAyItGP+TKMeDdvt9CVIT/R2GLUGHK8fjYaSwYAmzZjrigV8/ZEc97Cs/
         RNx49zr/EmMLCKs3yICV3DbWcDYNC5Edq669CkOvAdg3+O1GS2jZbpZOCtZQ6l7yebBe
         DcE5X2RyzxPvE4l95PLzY7VkQp2hTqveDSVtEZd9yAZEIGIIb1ayiV74u9DWw1el7iMl
         tBMNVst2x0cB6yx6mL/+mwCZbUBehcbP9DWmWpXhe7ZdE/NU+bYYJ0T4rxkQk1zpYaZY
         //r41sobGat2KcV4rgWj0zoDrb9ujZcg71SJcQQypNO3b7Zv+97mRrl5whWtKXgFY2t5
         j6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EKz0BYCnAYaxNPQCfa65G2LlOu2wy+lcqbRhsvRTDzY=;
        b=EhCu5D7NLIzjXwrlur+t/sch6JVvQsNLzVqH9v2Xzjf5u1z4YYGs5fMl9wlK7+N8om
         vVA93CL3gBB33becDW6eOmpShdEsZXFrT8mWM2NmryL8WbV8LEkpi4yhJnLilL0FsUYt
         B29KOLDLnKkbUBI76gqZUHtYAgiGmbLbfxnCOWj5HCZNv/2SKFidq9sQreSWmRvCJewD
         CakRvVsbu+ReZ1V0kHl/7csZcWr5/QPjxXS9O/obOfN+Ck8+vEvA6XKpdy8wpMBosUPn
         j1emcqsd5gQ7Av4/60IBvwePf2ZUSHFpgzgmYQDD/Y3+kOBHM01nwKNVav1O8uQH/281
         G3CQ==
X-Gm-Message-State: AGi0PubKStemuyurkw4Ub9TvNoD/d9tGGVCWrLxeUtS5WCsGjjLbCc6+
        jxnECsB+6kWvLFhLvE6yV+bwen00GdSUfbDK8t93dg==
X-Google-Smtp-Source: APiQypI83QnOQ6D0d7POmo0QouJRjj7RkZV/O1KQNeqzJrIRwpmjlcrHV9wDaSFuXhDoh9ukC8k3b+Ye0lKDq5mhdK8=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr2082703ual.67.1585824014129;
 Thu, 02 Apr 2020 03:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com> <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Thu, 2 Apr 2020 16:10:03 +0530
Message-ID: <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, horia.geanta@nxp.com,
        peng.fan@nxp.com, Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        lakml <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>, Linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> i.MX8MP has a TMU inside which supports two thermal zones, add support
> for them.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>


[snip]

>
> +       thermal-zones {
> +               cpu-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 0x0>;

No need for 0x0, just use 0

> +                       trips {
> +                               cpu_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               cpu_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip = <&cpu_alert0>;
> +                                       cooling-device =
> +                                               <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +
> +               soc-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 0x1>;

No need for 0x1, just use 1

> +                       trips {
> +                               soc_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               soc_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };

You need a cooling-map here since you have a passive trip point.


> +               };
> +       };
> +
>         timer {
>                 compatible = "arm,armv8-timer";
>                 interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> @@ -215,6 +271,13 @@
>                                 gpio-ranges = <&iomuxc 0 114 30>;
>                         };
>
> +                       tmu: tmu@30260000 {
> +                               compatible = "fsl,imx8mp-tmu";
> +                               reg = <0x30260000 0x10000>;
> +                               clocks = <&clk IMX8MP_CLK_TSENSOR_ROOT>;
> +                               #thermal-sensor-cells = <1>;
> +                       };
> +
>                         wdog1: watchdog@30280000 {
>                                 compatible = "fsl,imx8mp-wdt", "fsl,imx21-wdt";
>                                 reg = <0x30280000 0x10000>;
> --
> 2.7.4
>
