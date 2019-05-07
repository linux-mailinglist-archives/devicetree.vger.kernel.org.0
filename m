Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 085C316D06
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 23:18:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728552AbfEGVSc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 17:18:32 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:46542 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727257AbfEGVSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 17:18:31 -0400
Received: by mail-qt1-f193.google.com with SMTP id i31so20792342qti.13
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 14:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zPjGRWUhyFVfuJKiRiDu7uhpyaOVKSPaf9PdN9YPgKk=;
        b=f+LEgFgYOiieMfsbGByYCCTeCgWoXPTR0eUf32D6l2At1DvrXmB4nvpstnQJ3gTvyp
         4r6eErOK2MrbXhtVG2/ERi/nHvZlQI0JSC/gO7tUQPP+OLn491WDXBuvSWIFxUU4Cq83
         9nlBD5bFAc+Zqktq6lD03sBxRLT9K5Bre/NRD5nc/SDG+/Bh8BksNnxIksJHjQYgXnGu
         O0NND4FWS6rIuvJcPvULa/XXiQmobGPUVnbjgZ/ySYm8psWnL12dSIuqf6HYTjx1Ct3C
         GFmOuCmdHRLAAw8ooJMrKyJvXtXnzNcvKL0H5xrNaid9NGykIkwLws1LVDa0KymagjvT
         4XvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zPjGRWUhyFVfuJKiRiDu7uhpyaOVKSPaf9PdN9YPgKk=;
        b=DhHflQpun+dpwESgP//21vKyzoqkDCnyHDAuYkdO0nsmroIxj6h9nT1356O9o2hmll
         4ms4/tFN0/OSw2gyFxv/9fIVTwjLYaAZ7FAu7/7LJIHj+j9RuUOwOn5xrInDgqkPcDCJ
         g7KFdDbzS+Kq7tDBgKqnn63CxAmEp687TuUMPe6PqWwDWCQ5XHMDYsOUsJduaYC5o7p2
         ikWC5h1bmkb29u7HPx20T9wEa6B2b5uIdcbazdNVQ3YzqWybKU9PSHhFAbkntf9lKxhr
         90qXlhkk38X0HKloP1u08X1wlJLnolJTHmy3dzNWW3YP4+P26DITzENGHAHZ62m33Bwg
         smfA==
X-Gm-Message-State: APjAAAXhMsF4fXiecrKJfTLRxQqmSDUvDmcMYkcdmoH4BDttofdOFq7l
        Zy5xPRy2fAoz+8zY20bwoLgVA5oRvm6mQ85GQ56Vzw==
X-Google-Smtp-Source: APXvYqy8Gjt4HaeOekGLbcHO1+1LKXMhZLfr9s4mSVKBMh3OOVSvm8jdCuKHH3BuKMiw3/0LBvtdCwvob1AHwBT8Oa8=
X-Received: by 2002:aed:2471:: with SMTP id s46mr8156157qtc.144.1557263910761;
 Tue, 07 May 2019 14:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190506193115.20909-1-niklas.cassel@linaro.org>
In-Reply-To: <20190506193115.20909-1-niklas.cassel@linaro.org>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Wed, 8 May 2019 02:48:19 +0530
Message-ID: <CAP245DXLHqU3tv5cii=Z1G4J5m=Emy7yiHP=zSTpY6GX02NKcg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs404: Add PSCI cpuidle support
To:     Niklas Cassel <niklas.cassel@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
        Lina Iyer <lina.iyer@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 7, 2019 at 1:01 AM Niklas Cassel <niklas.cassel@linaro.org> wrote:
>
> Add device bindings for CPUs to suspend using PSCI as the enable-method.
>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index ffedf9640af7..f9db9f3ee10c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -31,6 +31,7 @@
>                         reg = <0x100>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       cpu-idle-states = <&CPU_PC>;
>                 };
>
>                 CPU1: cpu@101 {
> @@ -39,6 +40,7 @@
>                         reg = <0x101>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       cpu-idle-states = <&CPU_PC>;
>                 };
>
>                 CPU2: cpu@102 {
> @@ -47,6 +49,7 @@
>                         reg = <0x102>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       cpu-idle-states = <&CPU_PC>;
>                 };
>
>                 CPU3: cpu@103 {
> @@ -55,12 +58,24 @@
>                         reg = <0x103>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       cpu-idle-states = <&CPU_PC>;
>                 };
>
>                 L2_0: l2-cache {
>                         compatible = "cache";
>                         cache-level = <2>;
>                 };
> +
> +               idle-states {

entry-method="psci" property goes here. I have a patch fixing it for 410c ;-)

I don't think the psci_cpuidle_ops will even get called without this.
Did you see any changes in consumption with this patch? I was trying
to measure that before sending this out.

> +                       CPU_PC: pc {
> +                               compatible = "arm,idle-state";
> +                               arm,psci-suspend-param = <0x40000003>;
> +                               entry-latency-us = <125>;
> +                               exit-latency-us = <180>;
> +                               min-residency-us = <595>;
> +                               local-timer-stop;
> +                       };
> +               };
>         };
>
>         firmware {
> --
> 2.21.0
>
