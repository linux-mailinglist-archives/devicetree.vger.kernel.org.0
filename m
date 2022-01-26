Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81CD049D1F7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 19:44:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244274AbiAZSoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 13:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbiAZSoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 13:44:24 -0500
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77699C06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 10:44:23 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id v186so1573697ybg.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 10:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MEyovfba2dw8hkEOOp/dCCAQBZpKCIOPP7X2Ld61Z6k=;
        b=GFD5GDEf8XsnNM8IRgqyWTh3wGzwVNEjI4OZlCRQJ7ZDl2I5hNDUrcZC0+87NSTvfG
         ZEtUR/4GnSPgmrC8BuLwbnjvun5DuwTYBhn699iaGoM67aGuT71K+WmhS7tKaY2i/TON
         8rJ908EHaHxYG1Ktwl5I/YR8+COZwRflJR5laa3tCsNoBIUeLSWabjP3/h7OjA2HHv/P
         Vt9fK5J7pm+yCYNHyQS0mXKyvP4zkQ5j71ANNfLjKSTFn3IcI9ef33+ElVnuanzTA+iV
         iPXjh4cvS5t9l7EABB9JbzED/O/qhTIcHHOiAS29JL+kaexKaN6Yv4gQaZmD9LnOtCJa
         MVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MEyovfba2dw8hkEOOp/dCCAQBZpKCIOPP7X2Ld61Z6k=;
        b=aHsD9NgIbFAhb3VDqHqVxqeW6WYDZLcL59AdkejQgmCDyIX21/+Yo6k7JvCY1MV3Qx
         4oXH60fgqwqOszpuo7Ow0oa1LSRSne6UO3JSIjez9eJbXqqKVoD17gwWAz534pEaHdRF
         gBK9vM5/JwmSDa0V6h/Ea6hAr7bl+1yUF8TSpx62+75Q5SbRD6VypKqCjSgR0oUgxfnw
         dA9/lqenbs5jLB1CGv1Kz0RPpimUq34yyMNJhDkz7fzZQbFs0Vm1+HOcEGATDTbq6nG2
         TY9Srrt5B4F5bW4VdiuObJqV+fNKbevdU9/sADlSiKNnTarOjM+xtOoZp6sjuqyCg0d2
         qMag==
X-Gm-Message-State: AOAM530QJutLhEetpvdGWGpF2MUWjj+ACUiZGcJkVkVBYE+0Uv0SlgXS
        YR75fux3LMXPdEigK4iR/oPrhUkubKPzBgg8XIs=
X-Google-Smtp-Source: ABdhPJxgscoeLIS7qct8a8DWzs0s6Es0+lcQu9iy9qDfJ6AWxgxtRTjH86KBHwecm7mbF7FPn31RB7ujyUgKXeLnP/U=
X-Received: by 2002:a05:6902:704:: with SMTP id k4mr306757ybt.355.1643222662540;
 Wed, 26 Jan 2022 10:44:22 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-22-s.hauer@pengutronix.de> <CAMdYzYrLw9+VW08cuj4_o4GDFhgBB8dZ-oVJ0TUnKFGLNetdyQ@mail.gmail.com>
 <a1438d39-b670-1ca5-d3f7-4e3f54702e53@arm.com>
In-Reply-To: <a1438d39-b670-1ca5-d3f7-4e3f54702e53@arm.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Wed, 26 Jan 2022 13:44:11 -0500
Message-ID: <CAMdYzYrcsj5Vas+ysoK6iD3uEAdmhcmLVi-5LY7hfHEtjeB6Cg@mail.gmail.com>
Subject: Re: [PATCH 21/27] arm64: dts: rockchip: rk356x: Add HDMI nodes
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        arm-mail-list <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>, kernel@pengutronix.de,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 26, 2022 at 12:56 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-01-26 16:04, Peter Geis wrote:
> > On Wed, Jan 26, 2022 at 9:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >>
> >> Add support for the HDMI port found on RK3568.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 +++++++++++++++++++++++-
> >>   1 file changed, 36 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> index 4008bd666d01..e38fb223e9b8 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -10,7 +10,6 @@
> >>   #include <dt-bindings/pinctrl/rockchip.h>
> >>   #include <dt-bindings/power/rk3568-power.h>
> >>   #include <dt-bindings/soc/rockchip,boot-mode.h>
> >> -#include <dt-bindings/soc/rockchip,vop2.h>
> >>   #include <dt-bindings/thermal/thermal.h>
> >>
> >>   / {
> >> @@ -502,6 +501,42 @@ vop_mmu: iommu@fe043e00 {
> >>                  status = "disabled";
> >>          };
> >>
> >> +       hdmi: hdmi@fe0a0000 {
> >> +               compatible = "rockchip,rk3568-dw-hdmi";
> >> +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
> >> +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> >> +               clocks = <&cru PCLK_HDMI_HOST>,
> >> +                        <&cru CLK_HDMI_SFR>,
> >> +                        <&cru CLK_HDMI_CEC>,
> >> +                        <&pmucru CLK_HDMI_REF>,
> >> +                        <&cru HCLK_VOP>;
> >> +               clock-names = "iahb", "isfr", "cec", "ref", "hclk";
> >> +               pinctrl-names = "default";
> >> +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> >
> > I looked into CEC support here, and it seems that it does work with one change.
> > Please add the two following lines to your patch:
> > assigned-clocks = <&cru CLK_HDMI_CEC>;
> > assigned-clock-rates = <32768>;
> >
> > The issue is the clk_rtc32k_frac clock that feeds clk_rtc_32k which
> > feeds clk_hdmi_cec is 24mhz at boot, which is too high for CEC to
> > function.
>
> Wouldn't it make far more sense to just stick a suitable clk_set_rate()
> call in the driver? AFAICS it's already explicitly aware of the CEC clock.

This is handled purely in the
drivers/gpu/drm/bridge/synopsys/dw-hdmi.c driver, so I'm hesitant to
touch it there as it would affect all users, not just Rockchip.

Could someone familiar with the dw-hdmi IP weigh in on the minimum and
maximum clock rate the CEC block can handle?

>
> Robin.
>
> >> +               power-domains = <&power RK3568_PD_VO>;
> >> +               reg-io-width = <4>;
> >> +               rockchip,grf = <&grf>;
> >> +               #sound-dai-cells = <0>;
> >> +               status = "disabled";
> >> +
> >> +               ports {
> >> +                       #address-cells = <1>;
> >> +                       #size-cells = <0>;
> >> +
> >> +                       hdmi_in: port@0 {
> >> +                               reg = <0>;
> >> +                               #address-cells = <1>;
> >> +                               #size-cells = <0>;
> >> +                       };
> >> +
> >> +                       hdmi_out: port@1 {
> >> +                               reg = <1>;
> >> +                               #address-cells = <1>;
> >> +                               #size-cells = <0>;
> >> +                       };
> >> +               };
> >> +       };
> >> +
> >>          qos_gpu: qos@fe128000 {
> >>                  compatible = "rockchip,rk3568-qos", "syscon";
> >>                  reg = <0x0 0xfe128000 0x0 0x20>;
> >> --
> >> 2.30.2
> >>
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
