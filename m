Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86F265ACA8D
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 08:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbiIEG2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 02:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236580AbiIEG2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 02:28:37 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3290C21E03
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 23:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662359314; x=1693895314;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WfWbjVdUvWTz4RKxs2T5vp9uD5XLNpzOq3CTK7XEBs4=;
  b=XFP1A3OrKIzKvQ2Su9ReBVvcq2Pnh+cfGiP8TB+/tGlAtnu56aLc7sLw
   B0P6Y6O9Yo1M6fQTJ6F5RG/5QY/vgHmhFLTuMorKBfFwJ0oLvBzkcg8ot
   gUKk+YqoAvr++FQ/Kw0dw4BhJ5tjyauxcJ3DEk99WLSl3CpRa5/QT2pJn
   zCoKHanjOB+bNgsopoCxMj2TnphAV2yDlYg/iSfdIlu/2eHjNCX19CXCd
   cH8EM3mwVVyMiVVhu5gqIA0mKFeFqYsK8cZ5oipO70XMICG18lFfJSpvL
   lPhb3nA1C1sP0UtDB90KYCPldjzdtmfbqt3ljjxcZDJ70OKFZRPsqF0R0
   g==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25976558"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Sep 2022 08:28:31 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 05 Sep 2022 08:28:31 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 05 Sep 2022 08:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662359311; x=1693895311;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=WfWbjVdUvWTz4RKxs2T5vp9uD5XLNpzOq3CTK7XEBs4=;
  b=JrhblJuAWuDq3sUlDItXcxuQ12THu0tTxyeYKfkICLLbFsDjfMZ9wJWb
   EpOLOB4qN1vfdJgUdoxnL2QBfYJKzENXjMwNNI/iOYOPqfzRKMw0zwIEm
   IGlIkabaTYSiosDAD751y6+AVXASSNCLeL/XxVO8PKDIbWjwCUshxlnZJ
   Eph8Tgz8cTeG3lTHGi/q6nnmguPuEv+OsiDt/0FDtPOmxbwGn08vZo80v
   yXESG7widoqWJMoUtyAeX5Cm+PSgJtL3s8teBb+5jm2sFtMEh2z4FGQV8
   h/kVMHd1XD4OZiDjtTp/71SFDzniIpE1KhozPDrk1nHgmXxYbZJKmoQq4
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25976557"
Subject: Re: Re: [PATCH v2 1/1] arm64: dts: tqma8mpql: add USB DR support
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Sep 2022 08:28:31 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 82F93280056;
        Mon,  5 Sep 2022 08:28:31 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
Date:   Mon, 05 Sep 2022 08:28:29 +0200
Message-ID: <5604780.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220905022228.GB1728671@dragon>
References: <20220831074606.1677052-1-alexander.stein@ew.tq-group.com> <20220905022228.GB1728671@dragon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Shawn,

thanks for your feedback.

Am Montag, 5. September 2022, 04:22:28 CEST schrieb Shawn Guo:
> On Wed, Aug 31, 2022 at 09:46:06AM +0200, Alexander Stein wrote:
> > Add support for USB DR on USB1 interface. Host/Device detection is done
> > using the usb-role-switch connector.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > Changes in v2:
> > * Split from previous series
> > * For now enable USB OTG only
> > 
> >  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 40 +++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts index
> > d8ca52976170..b30d75b1fa47 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > @@ -459,6 +459,37 @@ &usdhc2 {
> > 
> >  	status = "okay";
> >  
> >  };
> > 
> > +&usb3_phy0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_usb0>;
> 
> Should the pinctrl be in USB controller instead of PHY node?

That seems reasonable. I'll move this to the USB glue layer node, where also 
the OC and PWR polarity can be changed.

> > +	status = "okay";
> > +};
> > +
> > +&usb3_0 {
> > +	fsl,over-current-active-low;
> > +	status = "okay";
> > +};
> > +
> > +&usb_dwc3_0 {
> 
> These nodes are not in alphabetic order.

Sure, this looks wrong, I'll fix that.

> > +	/* dual role is implemented, but not a full featured OTG */
> > +	hnp-disable;
> > +	srp-disable;
> > +	adp-disable;
> > +	dr_mode = "otg";
> > +	usb-role-switch;
> > +	role-switch-default-mode = "peripheral";
> > +	status = "okay";
> > +
> > +	connector {
> > +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> > +		type = "micro";
> > +		label = "X29";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_usbcon0>;
> > +		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> > +	};
> > +};
> > +
> > 
> >  &iomuxc {
> >  
> >  	pinctrl_backlight: backlightgrp {
> >  	
> >  		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		
0x14>;
> > 
> > @@ -666,6 +697,15 @@ pinctrl_uart4: uart4grp {
> > 
> >  			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	
0x140>;
> >  	
> >  	};
> > 
> > +	pinctrl_usbcon0: usb0congrp {
> > +		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		
0x1c0>;
> > +	};
> > +
> > +	pinctrl_usb0: usb0grp {
> 
> pinctrl_usb0 should go before pinctrl_usbcon0?

Yes, I'll fix that.

Thanks and best regards,
Alexander

> Shawn
> 
> > +		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	
0x1c0>,
> > +			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	
0x1c0>;
> > +	};
> > +
> > 
> >  	pinctrl_usdhc2: usdhc2grp {
> >  	
> >  		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		
0x192>,
> >  		
> >  			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		
0x1d2>,




