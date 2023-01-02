Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C87C365AE8D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 10:07:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbjABJHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 04:07:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjABJHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 04:07:30 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 437E0C34
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 01:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672650449; x=1704186449;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hY0HSlsTCyK5Fcj80DybP31EoEFbnIv5wUs3Grr3MSI=;
  b=duY0dAhZWymc2TM7imsiUGAT/Ja8rTNyvXovCmP5n5sbmPKd9LcvQ7wd
   +PHvZgOVatCGsaWlUbG9ZCiwuqRxSnAOVei7HNHW82qRTgSGq3cvUspTd
   LcKkdwEWmBIsI5AbrEVYaL05oCVnCd4RhCLEBia3zkKG+dc7IIH2VOOqQ
   9uOuyVW6heDBY8gnZZkm7jDDpmlAgUj4dJ/9GlbwpTRbWrZqGP4DAIqW0
   RLOjO1gWOW0m1p48xpasm7RsIEEPnvOLsXpVD/LgK//srelJDfkigkdD2
   UW0r9hncNVmyZo5EYyzWyITeqC6Bac72A3aARJgnDjfpWP6NMTdslx/I1
   A==;
X-IronPort-AV: E=Sophos;i="5.96,293,1665439200"; 
   d="scan'208";a="28199828"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 10:07:27 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 10:07:27 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 10:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672650447; x=1704186447;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hY0HSlsTCyK5Fcj80DybP31EoEFbnIv5wUs3Grr3MSI=;
  b=fQsDwAyhaqQ15zv+S7RRaYU1Jk1VZ+PuzIu3HWTJ6kXeyWgNxP0Aq9mM
   MrkFAf0+5YRoe79e1A17sLgUvj/TU1Yc4twnxw2p5V+yF7RZroC3Ji0eT
   rWXh7tO7fZg9yPBJ5awK3qrWQVYU04EB8a5fxUF+H3k5lN3egSZa21p4R
   c+iXDCf+LLwM48EY9OT5uZlSb7i/QQbCKngrmMazhQF74vdnh3zMVOjnx
   e3tPoGaCX98rl9USCqiTMUvWSy7/ojOX6osdWBD123tZJnBuuevhn7nie
   X0IELiZZ6v4w2/762WErMeTPp9VSXWkHMrHwfvXlGZkFbIwUVvhXH5Zvb
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,293,1665439200"; 
   d="scan'208";a="28199827"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 10:07:27 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        by vtuxmail01.tq-net.de (Postfix) with ESMTP id 24ED3280056;
        Mon,  2 Jan 2023 10:07:27 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Richard Leitner <richard.leitner@linux.dev>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL
Date:   Mon, 02 Jan 2023 10:07:26 +0100
Message-ID: <2222186.iZASKD2KPV@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <Y6F27Wzaal76/lU5@g0hl1n.net>
References: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com> <20221208090842.2869374-2-alexander.stein@ew.tq-group.com> <Y6F27Wzaal76/lU5@g0hl1n.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Richard,

Am Dienstag, 20. Dezember 2022, 09:48:45 CET schrieb Richard Leitner:
> Hi Alexander,
> 
> thanks for the series.
> 
> On Thu, Dec 08, 2022 at 10:08:42AM +0100, Alexander Stein wrote:
> > This adds an overlay for the supported LVDS display tianma tm070jvhg33.
> > The display timings have to be specified explicitly. Using the typical
> > pixel clock, the LDB clock can not be configured as the 7-fold of that.
> > By setting pixel clock to 74.25 MHz, LDB can be configured to exactly
> > 519.75 MHz.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > To be hold I'm unsure where to list the overlays. I checked other overlays
> > and opted to added them at the end of imx8mp section.
> > 
> >  arch/arm64/boot/dts/freescale/Makefile        |  4 ++
> >  .../imx8mp-tqma8mpql-mba8mpxl-lvds.dtso       | 61 +++++++++++++++++++
> >  2 files changed, 65 insertions(+)
> >  create mode 100644
> >  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
> ...
> 
> > diff --git
> > a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso new
> > file mode 100644
> > index 0000000000000..ea44d605342ba
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
> > @@ -0,0 +1,61 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> > +/*
> > + * Copyright (c) 2022 TQ-Systems GmbH <linux@ew.tq-group.com>,
> > + * D-82229 Seefeld, Germany.
> > + * Author: Alexander Stein
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&{/} {
> > +	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql",
> > "fsl,imx8mp"; +};
> > +
> > +&backlight_lvds {
> > +	status = "okay";
> > +};
> > +
> > +&display {
> > +	compatible = "tianma,tm070jvhg33";
> > +	status = "okay";
> > +
> > +	panel-timing {
> > +		clock-frequency = <74250000>;
> > +		hactive = <1280>;
> > +		vactive = <800>;
> > +		hfront-porch = <64>;
> > +		hback-porch = <5>;
> > +		hsync-len = <1>;
> > +		vfront-porch = <40>;
> > +		vback-porch = <2>;
> > +		vsync-len = <1>;
> > +		de-active = <1>;
> > +	};
> > +
> > +	port {
> > +		panel_in_lvds0: endpoint {
> > +			remote-endpoint = <&ldb_lvds_ch0>;
> > +		};
> > +	};
> > +};
> > +
> > +&lcdif2 {
> > +	status = "okay";
> > +};
> > +
> > +&lvds_bridge {
> > +	status = "okay";
> > +
> > +	ports {
> > +		port@1 {
> > +			ldb_lvds_ch0: endpoint {
> > +				remote-endpoint = <&panel_in_lvds0>;
> > +			};
> > +		};
> > +	};
> > +};
> 
> Wouldn't it be possible and easier to read if this was &ldb_lvds_ch0
> only instead of the "whole" &lvds_bridge?
> 
> &ldb_lvds_ch0 {
> 	remote-endpoint = <&panel_in_lvds0>;
> };

Yes it is possible and easier to read. Unfortunately dtbs_check will raise the 
follwing warnings when doing so:
> arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo: Warning 
(graph_port): /fragment@4: graph port node name should be 'port'
> ../arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso:
47.15-49.3: Warning (graph_endpoint): /fragment@4/__overlay__: graph endpoint 
node name should be 'endpoint'
> ../arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso:
47.15-49.3: Warning (graph_endpoint): /fragment@4/__overlay__: graph 
connection to node '/fragment@2/__overlay__/port/endpoint' is not 
bidirectional

I'm not sure which way is the preferred/correct one or if this is just an 
issue in dtc, raising the warnings.

Best regards,
Alexander

> > +
> > +&pwm2 {
> > +	status = "okay";
> > +};
> 
> regards;rl




