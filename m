Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26E966A3FB9
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 11:57:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjB0K5U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 05:57:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbjB0K5U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 05:57:20 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF2F16AED
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 02:57:18 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pWbBv-0005OS-RD; Mon, 27 Feb 2023 11:57:11 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pWbBu-00041t-QA; Mon, 27 Feb 2023 11:57:10 +0100
Date:   Mon, 27 Feb 2023 11:57:10 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Add FlexSPI support
Message-ID: <20230227105710.ty42l7txx4gpdkw5@pengutronix.de>
References: <20230227104324.249343-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230227104324.249343-1-alexander.stein@ew.tq-group.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On 23-02-27, Alexander Stein wrote:
> Add FlexSPI node for i.MX93.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> This is mainly taken from the downstream kernel with the clock order
> fixed and 'nxp,imx93-fspi' compatible removed.
> I do not know if it makes sense to add an imx93 specific compatible or
> not. imx8mn uses imx8mm only, but imx8mp has it's own. But the latter
> uses the same device data in the driver.
> 
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 3c3d3d570d8c..1d71ca8d1f5a 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -458,6 +458,21 @@ flexcan2: can@425b0000 {
>  				status = "disabled";
>  			};
>  
> +			flexspi1: spi@425e0000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "nxp,imx8mm-fspi";
> +				reg = <0x425e0000 0x10000>, <0x28000000 0x10000000>;

The compatible should always be the first entry, followed by reg.

Regards,
  Marco

> +				reg-names = "fspi_base", "fspi_mmap";
> +				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX93_CLK_FLEXSPI1_GATE>,
> +					 <&clk IMX93_CLK_FLEXSPI1_GATE>;
> +				clock-names = "fspi_en", "fspi";
> +				assigned-clocks = <&clk IMX93_CLK_FLEXSPI1>;
> +				assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>;
> +				status = "disabled";
> +			};
> +
>  			lpuart7: serial@42690000 {
>  				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
>  				reg = <0x42690000 0x1000>;
> -- 
> 2.34.1
> 
> 
> 
