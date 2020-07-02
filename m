Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CCD7211B5D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 07:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726347AbgGBFHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 01:07:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726047AbgGBFHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 01:07:22 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32FBFC08C5C1
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 22:07:22 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id k23so27481216iom.10
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 22:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pEqgfz4dMPy0M8UdIl/OP3qCi5/0HDdWhm7+x1JpE8k=;
        b=OHI23XSwOoCtKab9Yrumej03I6gMMsQ5SpRG7rrzTOpLPZPhQBysLX48g5rqWJUmR8
         QrBW5CeLisMKbOFKtg8gbHTK50mBkqkv7GZiOxihU/SU3qE+QAeq6z9A9jASZ+geI9Ib
         wpCuDzRKDdfr0EEUrvTKzx4t0U8xDkCAR91o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pEqgfz4dMPy0M8UdIl/OP3qCi5/0HDdWhm7+x1JpE8k=;
        b=AyoI4L1tWtxHC1MKFZfPjYoOEImbTkFSjRgdXi63BPC0gUgrydrVZ55zigYdk2nLjY
         aug8Pa+nYY82IpSP3VaFo8tbSSnu8oqnshbgmIVoe+l0iWPxNtaL2sXc6by82JkBbCn9
         U8XfMCY2nGtTAJ5sK7gnCm5C+HHDfiAWOF2bhObBKh0cslb46U0PjBeqp7DBhYXDgXCf
         1TS389RuXjMEcKkbuWAKwv21w8z8mJvz/AX6odnaPm2Ee6i0Dfw6u45mbjKo4q7bhez0
         ebNuDowOmg3Xp8flhXFDLpOoydWLQk3pSBSwmu9y+QzgG2ZyA464774zO0hLHRoEH49l
         AyQg==
X-Gm-Message-State: AOAM5319iC7S1nHyXyc+q8DGRmZdTyeROGsXDpWehahdO85t1JNTjXxy
        nyfSC2CETjEEFaioX/ZieB/+xE8dukJZf0DR+I+cDA==
X-Google-Smtp-Source: ABdhPJzARNPpL/MZGeCd0M+vUHJWSbbCFc9ks584J5OlpKLVXK1oxKo3tdUOmzXarQh4NOVw2SgC++mS/VX9KJKONhk=
X-Received: by 2002:a02:30c4:: with SMTP id q187mr31283874jaq.102.1593666441584;
 Wed, 01 Jul 2020 22:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200625101757.101775-1-enric.balletbo@collabora.com> <20200625101757.101775-7-enric.balletbo@collabora.com>
In-Reply-To: <20200625101757.101775-7-enric.balletbo@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 2 Jul 2020 13:06:55 +0800
Message-ID: <CAJMQK-iocK5eH9QTQQKNFHtBvpc1C2=U=3kFPXkXiUOiRxrucA@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] arm64: dts: mt8183: Add USB3.0 support
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        erwanaliasr1@gmail.com, Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 25, 2020 at 6:18 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Add the USB3.0 phyter and controller for the MediaTek's MT8183 SoC.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>
> Changes in v2:
> - Move adding #phy-cells to this patch. (Matthias Brugger)
>
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 58 ++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 6c00ffa275202..102105871db25 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/reset-controller/mt8183-resets.h>
> +#include <dt-bindings/phy/phy.h>
>  #include "mt8183-pinfunc.h"
>
>  / {
> @@ -648,6 +649,36 @@ i2c8: i2c@1101b000 {
>                         status = "disabled";
>                 };
>
> +               ssusb: usb@11201000 {
> +                       compatible ="mediatek,mt8183-mtu3", "mediatek,mtu3";
> +                       reg = <0 0x11201000 0 0x2e00>,
> +                             <0 0x11203e00 0 0x0100>;
> +                       reg-names = "mac", "ippc";
> +                       interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_LOW>;
> +                       phys = <&u2port0 PHY_TYPE_USB2>,
> +                              <&u3port0 PHY_TYPE_USB3>;
> +                       clocks = <&infracfg CLK_INFRA_UNIPRO_SCK>,
> +                                <&infracfg CLK_INFRA_USB>;
> +                       clock-names = "sys_ck", "ref_ck";
> +                       mediatek,syscon-wakeup = <&pericfg 0x400 0>;
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +                       status = "disabled";
> +
> +                       usb_host: xhci@11200000 {
> +                               compatible = "mediatek,mt8183-xhci",
> +                                            "mediatek,mtk-xhci";
> +                               reg = <0 0x11200000 0 0x1000>;
> +                               reg-names = "mac";
> +                               interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_LOW>;
> +                               clocks = <&infracfg CLK_INFRA_UNIPRO_SCK>,
> +                                        <&infracfg CLK_INFRA_USB>;
> +                               clock-names = "sys_ck", "ref_ck";
> +                               status = "disabled";
> +                       };
> +               };
> +
>                 audiosys: syscon@11220000 {
>                         compatible = "mediatek,mt8183-audiosys", "syscon";
>                         reg = <0 0x11220000 0 0x1000>;
> @@ -684,6 +715,33 @@ efuse: efuse@11f10000 {
>                         reg = <0 0x11f10000 0 0x1000>;
>                 };
>
> +               u3phy: usb-phy@11f40000 {
> +                       compatible = "mediatek,mt8183-tphy",
> +                                    "mediatek,generic-tphy-v2";
> +                       #address-cells = <1>;
> +                       #phy-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0 0 0x11f40000 0x1000>;
> +                       status = "okay";
> +
> +                       u2port0: usb-phy@0 {
> +                               reg = <0x0 0x700>;
> +                               clocks = <&clk26m>;
> +                               clock-names = "ref";
> +                               #phy-cells = <1>;
> +                               mediatek,discth = <15>;
> +                               status = "okay";
> +                       };
> +
> +                       u3port0: usb-phy@0700 {
> +                               reg = <0x0700 0x900>;
> +                               clocks = <&clk26m>;
> +                               clock-names = "ref";
> +                               #phy-cells = <1>;
> +                               status = "okay";
> +                       };
> +               };
> +
>                 mfgcfg: syscon@13000000 {
>                         compatible = "mediatek,mt8183-mfgcfg", "syscon";
>                         reg = <0 0x13000000 0 0x1000>;
> --
> 2.27.0
>
