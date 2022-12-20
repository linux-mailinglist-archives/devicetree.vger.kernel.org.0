Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11064651C91
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 09:49:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbiLTItB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 03:49:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbiLTIs7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 03:48:59 -0500
Received: from out2.migadu.com (out2.migadu.com [IPv6:2001:41d0:2:aacc::])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB680DAE
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 00:48:55 -0800 (PST)
Date:   Tue, 20 Dec 2022 09:48:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1671526133;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=y2lhmK6qQRPitpir7y6s8+FsOFUqN6I2Ys5xUHmYpXI=;
        b=Tv0orzt7dFExIIvgSliQ/MmFAzt2O7aLUdMvsUay/amVrFEQVl7WRRhWJ3gKIJRn5RHIZS
        ukXdIJdh8oPVuMgYR+hqvl5WUhGl9d4E46obrlrZbuSSt/FuRqfLya462dnzcudeh0dCXi
        H5zcETJBj9R1nXHhiXrP8qk7wB/7Gzg=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL
Message-ID: <Y6F27Wzaal76/lU5@g0hl1n.net>
References: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
 <20221208090842.2869374-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221208090842.2869374-2-alexander.stein@ew.tq-group.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

thanks for the series.

On Thu, Dec 08, 2022 at 10:08:42AM +0100, Alexander Stein wrote:
> This adds an overlay for the supported LVDS display tianma tm070jvhg33.
> The display timings have to be specified explicitly. Using the typical pixel
> clock, the LDB clock can not be configured as the 7-fold of that.
> By setting pixel clock to 74.25 MHz, LDB can be configured to exactly
> 519.75 MHz.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> To be hold I'm unsure where to list the overlays. I checked other overlays
> and opted to added them at the end of imx8mp section.
> 
>  arch/arm64/boot/dts/freescale/Makefile        |  4 ++
>  .../imx8mp-tqma8mpql-mba8mpxl-lvds.dtso       | 61 +++++++++++++++++++
>  2 files changed, 65 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso

...

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
> new file mode 100644
> index 0000000000000..ea44d605342ba
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (c) 2022 TQ-Systems GmbH <linux@ew.tq-group.com>,
> + * D-82229 Seefeld, Germany.
> + * Author: Alexander Stein
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +&{/} {
> +	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
> +};
> +
> +&backlight_lvds {
> +	status = "okay";
> +};
> +
> +&display {
> +	compatible = "tianma,tm070jvhg33";
> +	status = "okay";
> +
> +	panel-timing {
> +		clock-frequency = <74250000>;
> +		hactive = <1280>;
> +		vactive = <800>;
> +		hfront-porch = <64>;
> +		hback-porch = <5>;
> +		hsync-len = <1>;
> +		vfront-porch = <40>;
> +		vback-porch = <2>;
> +		vsync-len = <1>;
> +		de-active = <1>;
> +	};
> +
> +	port {
> +		panel_in_lvds0: endpoint {
> +			remote-endpoint = <&ldb_lvds_ch0>;
> +		};
> +	};
> +};
> +
> +&lcdif2 {
> +	status = "okay";
> +};
> +
> +&lvds_bridge {
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			ldb_lvds_ch0: endpoint {
> +				remote-endpoint = <&panel_in_lvds0>;
> +			};
> +		};
> +	};
> +};

Wouldn't it be possible and easier to read if this was &ldb_lvds_ch0
only instead of the "whole" &lvds_bridge?

&ldb_lvds_ch0 {
	remote-endpoint = <&panel_in_lvds0>;
};

> +
> +&pwm2 {
> +	status = "okay";
> +};
> -- 
> 2.34.1
> 

regards;rl
