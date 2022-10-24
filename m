Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F134F609C4D
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 10:18:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbiJXIS3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 04:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbiJXISE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 04:18:04 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A52806500F
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 01:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666599377; x=1698135377;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=bXK1aob4hsgkJ/UGYit2zlsv7bO/CwXtzWh4iUKBUo0=;
  b=aXPfKKpKrfzgQITmo1NecMdf+QFWGpAoPEtGD4oBe47EDMDBO9SBIK2a
   ah0U0lCLNxYyvPc+U8u1WIoLWdgBuSNZTwR1r6O01U6egNkejE4RR9vvl
   tNURlb0tjmHIbA2A21n3t8ONGSbewbILp2+j8Pn1gywcurONRk00/rfWH
   grBxA+sz+2Z+70CZmhix7jPssZ1vKSmNguzVTKJk6spHACwGVP6DZlxvo
   2pljd9xmG6ctOcANJveAr92GrQvrhswQP/m3QTQHXfZQUedO5bosEc6zf
   uxUZRiqC+cbGk/t8PdMB+xNpIX7gOQkyXTZLwXq/fyPGc1niIO32IjP1E
   Q==;
X-IronPort-AV: E=Sophos;i="5.95,207,1661810400"; 
   d="scan'208";a="26924517"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 24 Oct 2022 10:15:33 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 24 Oct 2022 10:15:33 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 24 Oct 2022 10:15:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666599333; x=1698135333;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=bXK1aob4hsgkJ/UGYit2zlsv7bO/CwXtzWh4iUKBUo0=;
  b=dgxuaPcQRu47kty6E1B3j72SQuvSi4SSRsULH/Re7ExY99PBtoUVF4PS
   6yIsjuWWrOygfm1w7Crn2hQhrCPvrQ06dr9g5CgVTSNATzizF88jA3RJQ
   uz6rNeLDDTU6lNhI1PIfRA7G0CcogkATsmV1tPLL/uImrzc1mYmKwzGnd
   UMqJJhspkBPce2uCRb8Nbvx8z9frxvx4vh5c+ErcGKbKAcILtPqilsuhY
   JVCI/R5DE0qcu1ShnDoI/d69Gy1UX7WEHXOh5vlGApga95ZR0aEr6VZGm
   vRGyzKLxLcX6zk7pC7W/0sxhLg9rNpCWsKow1R4BAoPgAwku53fU1UIgQ
   g==;
X-IronPort-AV: E=Sophos;i="5.95,207,1661810400"; 
   d="scan'208";a="26924516"
Subject: Re: Re: [PATCH 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Oct 2022 10:15:33 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 04411280056;
        Mon, 24 Oct 2022 10:15:33 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Mon, 24 Oct 2022 10:15:28 +0200
Message-ID: <5614294.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221024013123.GV125525@dragon>
References: <20220926112622.2912885-1-alexander.stein@ew.tq-group.com> <20221024013123.GV125525@dragon>
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

Hello Shawn,

Am Montag, 24. Oktober 2022, 03:31:23 CEST schrieb Shawn Guo:
> On Mon, Sep 26, 2022 at 01:26:22PM +0200, Alexander Stein wrote:
> > extcon does not work somehow, so switch to usb-role-switch instead.
> 
> So extcon was added without testing?

It had been tested, but apparently only the USB Host case :( extcon itself 
does work and detects ID pin correctly. Cable states switch when a USB device 
(mass storage) is attached and removed, thus mass storage is detect and 
usable.
But unfortunately this is not the case for USB device using g_serial udc 
driver. IMHO this seems to be a problem within chipidea usb driver.
Using usb-role-switch instead, both USB host and USB device do work.

Best regards,
Alexander

> Shawn
> 
> > Fixes: dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree for
> > TQMa8MQML with i.MX8MM") Signed-off-by: Alexander Stein
> > <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 32 +++++++++++++++----
> >  1 file changed, 26 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> > b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts index
> > bfb44630da6b..56323c989d55 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> > @@ -34,11 +34,25 @@ reg_usdhc2_vmmc: regulator-vmmc {
> > 
> >  		off-on-delay-us = <12000>;
> >  	
> >  	};
> > 
> > -	extcon_usbotg1: extcon-usbotg1 {
> > -		compatible = "linux,extcon-usb-gpio";
> > +	connector {
> > +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> > +		type = "micro";
> > +		label = "X19";
> > 
> >  		pinctrl-names = "default";
> > 
> > -		pinctrl-0 = <&pinctrl_usb1_extcon>;
> > -		id-gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-0 = <&pinctrl_usb1_connector>;
> > +		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> > +
> > +		ports {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			port@0 {
> > +				reg = <0>;
> > +				usb_dr_connector: endpoint {
> > +					remote-endpoint = 
<&usb1_drd_sw>;
> > +				};
> > +			};
> > +		};
> > 
> >  	};
> >  
> >  };
> > 
> > @@ -106,13 +120,19 @@ &usbotg1 {
> > 
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_usbotg1>;
> >  	dr_mode = "otg";
> > 
> > -	extcon = <&extcon_usbotg1>;
> > 
> >  	srp-disable;
> >  	hnp-disable;
> >  	adp-disable;
> >  	power-active-high;
> >  	over-current-active-low;
> > 
> > +	usb-role-switch;
> > 
> >  	status = "okay";
> > 
> > +
> > +	port {
> > +		usb1_drd_sw: endpoint {
> > +			remote-endpoint = <&usb_dr_connector>;
> > +		};
> > +	};
> > 
> >  };
> >  
> >  &usbotg2 {
> > 
> > @@ -242,7 +262,7 @@ pinctrl_usbotg1: usbotg1grp {
> > 
> >  			   <MX8MM_IOMUXC_GPIO1_IO13_USB1_OTG_OC		
0x84>;
> >  	
> >  	};
> > 
> > -	pinctrl_usb1_extcon: usb1-extcongrp {
> > +	pinctrl_usb1_connector: usb1-connectorgrp {
> > 
> >  		fsl,pins = <MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		
0x1c0>;
> >  	
> >  	};




