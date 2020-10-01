Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9BB27FBF3
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 10:52:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731548AbgJAIwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 04:52:03 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40631 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731134AbgJAIwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 04:52:01 -0400
Received: by mail-ed1-f65.google.com with SMTP id t16so4777268edw.7
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 01:52:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l7OYBwGt4sviP39N2nF2KS/kLgl84Rv72GGMiBM+ypU=;
        b=NyRSgexAsmvmhfqL043ICAtbuxhnmG4w0YJGe1+Gx6urBgzwjhiVAm7eaxbPxq+OvB
         lVnjExXp22k4F395v/Y6Czm+zv+GG0/HkLHmnI/zeTlgIbTZgNNRoNEX9aJpc9RGcQIC
         1kNAX6R+yhxUpymV7gur+tZGEMy1hF5WyJQukjtzntYXSRF0SepJ/Q0W1j+R4sj5ab2F
         ftrlA6Sgsqc8YYuw+TsGfxHRqxeRPuGH02c2gImbsC/ri20QbYjZQuFkI53D1J7BClN0
         dkP8ZlyT2devT+rKAPh7j95Qc9SZzD0WFW1sqqUUnlSN028v09JV3ZrsD1tQkvbkMuLU
         7NFg==
X-Gm-Message-State: AOAM532V7cAJqsxTiKs6iwSuZiSDereMMzldMWWzp0zo+L4BhNvavmAM
        MWwrb7jHoxx7RGeFgeuamTc=
X-Google-Smtp-Source: ABdhPJxMFmftEOyq7mnfL1aGPOTfPARMb0Js8Py8k3LrJ+ajFPfscONS4VjBapttHlVh8V7FFI7XlA==
X-Received: by 2002:a50:d65e:: with SMTP id c30mr7095467edj.57.1601542319346;
        Thu, 01 Oct 2020 01:51:59 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id lc25sm3686349ejb.35.2020.10.01.01.51.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Oct 2020 01:51:58 -0700 (PDT)
Date:   Thu, 1 Oct 2020 10:51:56 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
Message-ID: <20201001085156.GA15804@kozik-lap>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-11-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200930155006.535712-11-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 05:50:05PM +0200, Lucas Stach wrote:
> This adds the DT nodes to describe the power domains available on the
> i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> domain setups, as there is now a hierarchy of domains where complete
> subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> fine granular gating within those subsystems is possible.
> 
> Note that this is still incomplete, as both VPU and DISP domains are
> missing their reset clocks. Those aren't directly sourced from the CCM,
> but have another level of clock gating in the BLKCTL of those domains,
> which needs a separate driver.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 76f040e4be5e..a841fb2d0458 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -4,6 +4,8 @@
>   */
>  
>  #include <dt-bindings/clock/imx8mm-clock.h>
> +#include <dt-bindings/power/imx8mm-power.h>
> +#include <dt-bindings/reset/imx8mq-reset.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -547,6 +549,61 @@
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mm-gpc";
> +				reg = <0x303a0000 0x10000>;
> +				interrupt-parent = <&gic>;
> +				interrupt-controller;

This does not validate against your GPC dtschema. Please add DTS which
passes own schema from day one (except existing issues).

Best regards,
Krzysztof
