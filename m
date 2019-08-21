Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 429F997538
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 10:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727425AbfHUInq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 04:43:46 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:33737 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727226AbfHUInq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 04:43:46 -0400
Received: by mail-vs1-f65.google.com with SMTP id i7so869168vsp.0
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 01:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kP+GbHpu0Aj89vwz35AbZzP2cobDWWascw/bJeNfksc=;
        b=Lh4aj0T+PWQBEczyDm05UPSLJJKXV3seJv3C/EoobCIwZcph8CLDORmSeAZxoUxnh6
         +yUj5qxKHTba6/uxyd6nxBcDlQxaRcqG0NGzbaAHN94FLGOQNlTm4G3EmQChUeM9SOzf
         +SfBf+ZQiV9S/oDKRUecpfjeODPLpWKn2YhcYzad6EHmFMLWjfhvt9GcnssDJwWT/Y10
         gZX0n/ey5Om4W5t+APGeal26lmByZU3SaDFaPOfK03C7MIWPTz5SXB68TfeydA1eK1CC
         PePhYUgxl3j77A7EITXtdn8qxMc1LL5QLgsD2rkPN8vX1zld0Ee2CSah31GlO2/BbiuY
         ss4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kP+GbHpu0Aj89vwz35AbZzP2cobDWWascw/bJeNfksc=;
        b=cQryXiugotrilyOZIh0Xvyhcplq41baWnpnclAHHXWor1+MJGThJ9Ruw/K5yMG6OWy
         GVwPB4gJyiNzwJ2Ft2fccE46oW7bbFf85PntU24Y82PcNl1TU09bvNRInpZnfB3NI5zz
         cTeKuxrTc8Kn3T6BLUhklL3YAvr0/+lkLVrgfzK9zNFDIB10AkXZRi8eIseOTose8VUI
         Rsl7AUSHFzXpTDG7m8pjwBnfFQa5Z7MuJCt3U10+9DtPgEwkfnI1rL44iNP0ecIqKSbM
         z3pj5PvkH8prYj4hBal5WwDc0fQgs+a1Nn5XpJ5CbNmY8rKfZgZo6fS5n6y+zykKWAT8
         Oibw==
X-Gm-Message-State: APjAAAVk0KzkGhlwDVYDNIxtGO4IqGwooJqUdOd8F+pPCXOVMYzWkS6I
        1BQ+PvnCwxcxbsztPHBnjU8DmH2F/n2A1AaRtJY/gg==
X-Google-Smtp-Source: APXvYqzNNaHAX5iQglmuHsAZsEax7+zy9/fs4WKi3UJrpit8a0TJ5DgVJszJr1tGcozcIIXQ3kOzAhvU402dJXEm7W4=
X-Received: by 2002:a05:6102:7d5:: with SMTP id y21mr5652161vsg.9.1566377024876;
 Wed, 21 Aug 2019 01:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190820172351.24145-1-vkoul@kernel.org> <20190820172351.24145-10-vkoul@kernel.org>
In-Reply-To: <20190820172351.24145-10-vkoul@kernel.org>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Wed, 21 Aug 2019 14:13:33 +0530
Message-ID: <CAHLCerOKd8Nr9hnKKMZawoUxopcUDfez=xMB34t7s0=2ZpnDVg@mail.gmail.com>
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: sm8150: Add apps shared nodes
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 20, 2019 at 10:55 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> Add hwlock, pmu, smem, tcsr_mutex_regs, apss_shared mailbox, apps_rsc
> including the rpmhcc child nodes to the SM8150 DTSI
>
> Co-developed-by: Sibi Sankar <sibis@codeaurora.org>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 63 ++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 3bed04d60dea..781905e9977a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -144,12 +144,23 @@
>                 };
>         };
>
> +       tcsr_mutex: hwlock {
> +               compatible = "qcom,tcsr-mutex";
> +               syscon = <&tcsr_mutex_regs 0 0x1000>;
> +               #hwlock-cells = <1>;
> +       };
> +
>         memory@80000000 {
>                 device_type = "memory";
>                 /* We expect the bootloader to fill in the size */
>                 reg = <0x0 0x80000000 0x0 0x0>;
>         };
>
> +       pmu {
> +               compatible = "arm,armv8-pmuv3";
> +               interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +       };
> +
>         psci {
>                 compatible = "arm,psci-1.0";
>                 method = "smc";
> @@ -266,6 +277,12 @@
>                 };
>         };
>
> +       smem {
> +               compatible = "qcom,smem";
> +               memory-region = <&smem_mem>;
> +               hwlocks = <&tcsr_mutex 3>;
> +       };
> +
>         soc: soc@0 {
>                 #address-cells = <1>;
>                 #size-cells = <1>;
> @@ -305,6 +322,11 @@
>                         };
>                 };
>
> +               tcsr_mutex_regs: syscon@1f40000 {
> +                       compatible = "syscon";
> +                       reg = <0x01f40000 0x40000>;
> +               };
> +
>                 tlmm: pinctrl@3100000 {
>                         compatible = "qcom,sm8150-pinctrl";
>                         reg = <0x03100000 0x300000>,
> @@ -320,6 +342,16 @@
>                         #interrupt-cells = <2>;
>                 };
>
> +               aoss_qmp: power-controller@c300000 {
> +                       compatible = "qcom,sm8150-aoss-qmp";
> +                       reg = <0x0c300000 0x100000>;
> +                       interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
> +                       mboxes = <&apss_shared 0>;
> +
> +                       #clock-cells = <0>;
> +                       #power-domain-cells = <1>;
> +               };
> +
>                 intc: interrupt-controller@17a00000 {
>                         compatible = "arm,gic-v3";
>                         interrupt-controller;
> @@ -329,6 +361,12 @@
>                         interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>                 };
>
> +               apss_shared: mailbox@17c00000 {
> +                       compatible = "qcom,sm8150-apss-shared";
> +                       reg = <0x17c00000 0x1000>;
> +                       #mbox-cells = <1>;
> +               };
> +
>                 timer@17c20000 {
>                         #address-cells = <1>;
>                         #size-cells = <1>;
> @@ -388,6 +426,31 @@
>                         };
>                 };
>
> +               apps_rsc: rsc@18200000 {
> +                       label = "apps_rsc";
> +                       compatible = "qcom,rpmh-rsc";
> +                       reg = <0x18200000 0x10000>,
> +                             <0x18210000 0x10000>,
> +                             <0x18220000 0x10000>;
> +                       reg-names = "drv-0", "drv-1", "drv-2";
> +                       interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +                       qcom,tcs-offset = <0xd00>;
> +                       qcom,drv-id = <2>;
> +                       qcom,tcs-config = <ACTIVE_TCS  2>,
> +                                         <SLEEP_TCS   1>,
> +                                         <WAKE_TCS    1>,
> +                                         <CONTROL_TCS 0>;
> +
> +                       rpmhcc: clock-controller {
> +                               compatible = "qcom,sm8150-rpmh-clk";
> +                               #clock-cells = <1>;
> +                               clock-names = "xo";
> +                               clocks = <&xo_board>;
> +                       };
> +               };
> +
>                 spmi_bus: spmi@c440000 {

Sort by address here.

>                         compatible = "qcom,spmi-pmic-arb";
>                         reg = <0x0c440000 0x0001100>,
> --
> 2.20.1
>
