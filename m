Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6BD149938
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 08:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728527AbfFRGrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 02:47:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:53894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728195AbfFRGrY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 02:47:24 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D5771217D4;
        Tue, 18 Jun 2019 06:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560839895;
        bh=oLT6VuKCCoaxaxIsbpmOjPErgpekiwn2N5t01iZKuEI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wcJdNmUGOOCM2wM2BEXDvs/a7RbUX+/xwRPkWzayl5lvhFCwJ25yLR+YPTJY0Yzw0
         A4c0cncgVU9drXtum+7BbUtq60m80oGAWq3EgcwESVRadLCYShalhjQBj567MyZ0mO
         2/NPgiMNw38EZVte3kLthywilHiFpJR7i9g5C+8g=
Date:   Tue, 18 Jun 2019 14:37:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Frank Li <frank.li@nxp.com>
Cc:     "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190618063626.GB29468@dragon>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 01, 2019 at 06:43:32PM +0000, Frank Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Please resend without using 'Content-Transfer-Encoding: base64'.

Shawn

> ---
> 
> Notes:
>     No change from v9 to v12
> 
>     Change from v8 to v9
>     * put ddr-pmu under ddr_subsystem bus
> 
>     Change from v3 to v8
>     * none
> 
>     Change from v2 to v3
>     * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..a33e08c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -378,6 +378,20 @@
>  		};
>  	};
>  
> +	ddr_subsyss: bus@5c000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
> +
> +		ddr-pmu@5c020000 {
> +			compatible = "fsl,imx8-ddr-pmu";
> +			reg = <0x5c020000 0x10000>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +	};
> +
>  	lsio_subsys: bus@5d000000 {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> -- 
> 2.5.2
> 
