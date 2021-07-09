Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E01393C1C68
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 02:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbhGIAMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 20:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbhGIAMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 20:12:49 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C6F0C06175F
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 17:10:07 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id 65so8081109oie.11
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 17:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=GWR42JbUy+/sIryqxS932MVNmOL/59t6cQ1xgosHWYc=;
        b=d+jLMLzzzH3wdihqtdR4LfnXdFcCeRl6qODCxtVggS9Cs4IEsIxHJ3IDF3DcMh13Tw
         +hKQ40Jh1LvI6+psU9W/OqkG/oWz56dN7Rcsbxshqger21NjX+7p8ZlA/3aKSZ3l+HVy
         10hvfjXOxJX4XKHMOsaAwTm86fiNqbHw4xeNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=GWR42JbUy+/sIryqxS932MVNmOL/59t6cQ1xgosHWYc=;
        b=PtylfK1hLm301IvnU4AITBzynQtlOTZuJyQIsdNDIpnPfc3U+4iOUeXRFPhG49nkX4
         Jw43FiSymh7da+M65z1cwzx6w6cwjSCkqDmRUzbI4LxhVHlzAwzz+IEbco60c8w3tqOm
         EZUQ0h6QHSKUwyZae9MugswTS5nl3hIr4tCE4RE6c4tb8uj3a8FmcobwEx5k4lTf9CTN
         OiraBz51mf+3ANLx4+c8ELvYx/5ypiu9oHg/+XQ+9KNmibC/pJtn7s3owoWmQSLf7fdw
         vfAKJL1A+93Mw75I9MBGQP/8mGju8H6kAIjHrou5UHnudPNgqPf8/NncseaWUKynVg5i
         6hGQ==
X-Gm-Message-State: AOAM53150SufunqRMkNO1wNXeZpGMIOKjhOzhsPIjnHXK/7Xi/cO6fM5
        ioR0hqxwFdotoUuIyBbwS37/EvTcn9Q6xWxkgluP8A==
X-Google-Smtp-Source: ABdhPJwp8Fy4KSSWjfymFnPso5UygprvHCbrGwbbuEDy1H9gDn10d1CIud4wxkRzYmEAFidozPvTeWtMXCKaSRCFs9M=
X-Received: by 2002:aca:3012:: with SMTP id w18mr5800184oiw.125.1625789406755;
 Thu, 08 Jul 2021 17:10:06 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 9 Jul 2021 00:10:06 +0000
MIME-Version: 1.0
In-Reply-To: <1624804950-3668-1-git-send-email-sbhanu@codeaurora.org>
References: <1624804950-3668-1-git-send-email-sbhanu@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 9 Jul 2021 00:10:06 +0000
Message-ID: <CAE-0n51KMizwJNTGJrD_HVVi2viZ8vh8OxE+N06Uv6p-MUd72w@mail.gmail.com>
Subject: Re: [PATCH V5] arm64: dts: qcom: sc7280: Add nodes for eMMC and SD card
To:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        adrian.hunter@intel.com, robh+dt@kernel.org, ulf.hansson@linaro.org
Cc:     asutoshd@codeaurora.org, stummala@codeaurora.org,
        vbadigan@codeaurora.org, rampraka@codeaurora.org,
        sayalil@codeaurora.org, sartgarg@codeaurora.org,
        rnayak@codeaurora.org, saiprakash.ranjan@codeaurora.org,
        sibis@codeaurora.org, okukatla@codeaurora.org, djakov@kernel.org,
        cang@codeaurora.org, pragalla@codeaurora.org,
        nitirawa@codeaurora.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org,
        bjorn.andersson@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Shaik Sajida Bhanu (2021-06-27 07:42:30)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index a8c274a..c3e8740e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -436,6 +441,60 @@
>                         #mbox-cells = <2>;
>                 };
>
> +               sdhc_1: sdhci@7c4000 {
> +                       compatible = "qcom,sc7280-sdhci", "qcom,sdhci-msm-v5";

Is qcom,sc7280-sdhci compatible documented somewhere?

> +                       status = "disabled";
> +
> +                       reg = <0 0x007c4000 0 0x1000>,
> +                             <0 0x007c5000 0 0x1000>;
> +                       reg-names = "hc", "cqhci";
> +
> +                       iommus = <&apps_smmu 0xc0 0x0>;
> +                       interrupts = <GIC_SPI 652 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 656 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hc_irq", "pwr_irq";
> +
> +                       clocks = <&gcc GCC_SDCC1_APPS_CLK>,
> +                                <&gcc GCC_SDCC1_AHB_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "core", "iface", "xo";
> +                       interconnects = <&aggre1_noc MASTER_SDCC_1 0 &mc_virt SLAVE_EBI1 0>,
> +                                       <&gem_noc MASTER_APPSS_PROC 0 &cnoc2 SLAVE_SDCC_1 0>;
> +                       interconnect-names = "sdhc-ddr","cpu-sdhc";
> +                       power-domains = <&rpmhpd SC7280_CX>;
> +                       operating-points-v2 = <&sdhc1_opp_table>;
> +
> +                       bus-width = <8>;
> +                       supports-cqe;
> +
> +                       qcom,dll-config = <0x0007642c>;
> +                       qcom,ddr-config = <0x80040868>;
> +
> +                       mmc-ddr-1_8v;
> +                       mmc-hs200-1_8v;
> +                       mmc-hs400-1_8v;
> +                       mmc-hs400-enhanced-strobe;
> +
> +                       sdhc1_opp_table: sdhc1-opp-table {

Please make it

	sdhc1_opp_table: opp-table {


> +                               compatible = "operating-points-v2";
> +
> +                               opp-100000000 {
> +                                       opp-hz = /bits/ 64 <100000000>;
> +                                       required-opps = <&rpmhpd_opp_low_svs>;
> +                                       opp-peak-kBps = <1800000 400000>;
> +                                       opp-avg-kBps = <100000 0>;
> +                               };
> +
> +                               opp-384000000 {
> +                                       opp-hz = /bits/ 64 <384000000>;
> +                                       required-opps = <&rpmhpd_opp_nom>;
> +                                       opp-peak-kBps = <5400000 1600000>;
> +                                       opp-avg-kBps = <390000 0>;
> +                               };
> +                       };
> +
> +               };
> +
>                 qupv3_id_0: geniqup@9c0000 {
>                         compatible = "qcom,geni-se-qup";
>                         reg = <0 0x009c0000 0 0x2000>;
> @@ -1035,6 +1094,51 @@
>                         };
>                 };
>
> +               sdhc_2: sdhci@8804000 {
> +                       compatible = "qcom,sc7280-sdhci", "qcom,sdhci-msm-v5";
> +                       status = "disabled";
> +
> +                       reg = <0 0x08804000 0 0x1000>;
> +
> +                       iommus = <&apps_smmu 0x100 0x0>;
> +                       interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hc_irq", "pwr_irq";
> +
> +                       clocks = <&gcc GCC_SDCC2_APPS_CLK>,
> +                                <&gcc GCC_SDCC2_AHB_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "core", "iface", "xo";
> +                       interconnects = <&aggre1_noc MASTER_SDCC_2 0 &mc_virt SLAVE_EBI1 0>,
> +                                       <&gem_noc MASTER_APPSS_PROC 0 &cnoc2 SLAVE_SDCC_2 0>;
> +                       interconnect-names = "sdhc-ddr","cpu-sdhc";
> +                       power-domains = <&rpmhpd SC7280_CX>;
> +                       operating-points-v2 = <&sdhc2_opp_table>;
> +
> +                       bus-width = <4>;
> +
> +                       qcom,dll-config = <0x0007642c>;
> +
> +                       sdhc2_opp_table: sdhc2-opp-table {

Please make it

	sdhc2_opp_table: opp-table {


> +                               compatible = "operating-points-v2";
> +
> +                               opp-100000000 {
> +                                       opp-hz = /bits/ 64 <100000000>;
> +                                       required-opps = <&rpmhpd_opp_low_svs>;
> +                                       opp-peak-kBps = <1800000 400000>;
> +                                       opp-avg-kBps = <100000 0>;
> +                               };
> +
> +                               opp-202000000 {
> +                                       opp-hz = /bits/ 64 <202000000>;
> +                                       required-opps = <&rpmhpd_opp_nom>;
> +                                       opp-peak-kBps = <5400000 1600000>;
> +                                       opp-avg-kBps = <200000 0>;
> +                               };
> +                       };
> +
> +               };
> +
>                 dc_noc: interconnect@90e0000 {
>                         reg = <0 0x090e0000 0 0x5080>;
>                         compatible = "qcom,sc7280-dc-noc";
