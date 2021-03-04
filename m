Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 829C132C8C9
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 02:16:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345705AbhCDAwi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 19:52:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382481AbhCDALs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 19:11:48 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8AECC0610DF
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 16:04:13 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id d12so14944507pfo.7
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 16:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=Xsa9Mpvkt/notnN/e4GDL+3FBsMQ7YT2Kdplb0idhbI=;
        b=km3yzkAfcfhxQkOel4IYCsI/+mE/weaL6XTa1RLUnVXK+5JhaNhUtbYsJqJthvlFMP
         Q5WPkeQ3m2vcw8iCk0+CMDHbJ35tAHf96Nc1A3prYwIfZetGdJGcBBaENSPcUB7A5/BO
         V5+gtpXSkH/4lQc4p9PNGNCxvTRI/xeAlF5tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=Xsa9Mpvkt/notnN/e4GDL+3FBsMQ7YT2Kdplb0idhbI=;
        b=KOsiOyEsJF+WL0nW5pyBsip2p8b0PZVyd4by7ugw49SEKUL2mhHfcB27ar/s6uY01K
         WOZS2JlMNHU4s56Tkc6YWX1g7aLFLBV9WnGvgPlRJIwjE2HlycnbyJjLw38vc8lzgekH
         wNtEfU7kB1Oku43yBhc4UUyo/t5Lex8asdxGluf6kilLFvcArzlkhEHTyrRCzFLdAn7g
         WGD0Fy3LBM0p1Cp/uEZglfidV84cWv1FDtGfsEO3o8VTc81jJl99MwnskWDi5z+cxZXe
         2LqwOta/+ROYIGPYnGFhST25Wg/qNixSQUv1PCYeZhUHMuDkI4hLY9i1WGgx4+kVEB7M
         Cpkg==
X-Gm-Message-State: AOAM530vEzkLDyDZwcQjXKlCwaZNp9a+3V4SISWSGrhkRI6RsVBPo6bV
        DcHNStr73ifBWJlgXPoJdFPFOg==
X-Google-Smtp-Source: ABdhPJxAp2vIvJNooX/Qe3go8/D7UNaN3yUYZy8fmYrsT40tvKPhp5FHDC2KXOft3YudxQYPVe1yvw==
X-Received: by 2002:a63:1d1c:: with SMTP id d28mr1218685pgd.216.1614816253332;
        Wed, 03 Mar 2021 16:04:13 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id r2sm24492211pgv.50.2021.03.03.16.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 16:04:12 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1614773878-8058-6-git-send-email-rnayak@codeaurora.org>
References: <1614773878-8058-1-git-send-email-rnayak@codeaurora.org> <1614773878-8058-6-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH v2 05/14] arm64: dts: qcom: sc7280: Add RSC and PDC devices
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Maulik Shah <mkshah@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Wed, 03 Mar 2021 16:04:10 -0800
Message-ID: <161481625091.1478170.8810587061043612400@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-03-03 04:17:49)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 4a56d9c..21c2399 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -30,6 +31,18 @@
>                 };
>         };
> =20
> +       reserved_memory: reserved-memory {

Do we plan to use this label at any point? I'd prefer we remove this
until it becomes useful.

> +               #address-cells =3D <2>;
> +               #size-cells =3D <2>;
> +               ranges;
> +
> +               aop_cmd_db_mem: memory@80860000 {
> +                       reg =3D <0x0 0x80860000 0x0 0x20000>;
> +                       compatible =3D "qcom,cmd-db";
> +                       no-map;
> +               };
> +       };
> +
>         cpus {
>                 #address-cells =3D <2>;
>                 #size-cells =3D <0>;
> @@ -203,6 +229,7 @@
>                         interrupt-controller;
>                         #interrupt-cells =3D <2>;
>                         gpio-ranges =3D <&tlmm 0 0 175>;
> +                       wakeup-parent =3D <&pdc>;
> =20
>                         qup_uart5_default: qup-uart5-default {
>                                 pins =3D "gpio46", "gpio47";
> @@ -287,6 +314,23 @@
>                                 status =3D "disabled";
>                         };
>                 };
> +
> +               apps_rsc: rsc@18200000 {

Any better name than 'rsc'? Maybe 'power-controller'?

> +                       compatible =3D "qcom,rpmh-rsc";
> +                       reg =3D <0 0x18200000 0 0x10000>,
> +                             <0 0x18210000 0 0x10000>,
> +                             <0 0x18220000 0 0x10000>;
> +                       reg-names =3D "drv-0", "drv-1", "drv-2";
> +                       interrupts =3D <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +                       qcom,tcs-offset =3D <0xd00>;
> +                       qcom,drv-id =3D <2>;
> +                       qcom,tcs-config =3D <ACTIVE_TCS  2>,
> +                                         <SLEEP_TCS   3>,
> +                                         <WAKE_TCS    3>,
> +                                         <CONTROL_TCS 1>;
> +               };
>         };
