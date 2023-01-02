Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8B4165B39C
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:50:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbjABOu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:50:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236027AbjABOuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:50:25 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 876E07657
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672671019; x=1704207019;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xWe0fbo//gGZ0kTmhEu5DpJUWsf5a5Y8HCASx5UOqQg=;
  b=Dvl2ZurjE29CmL2fR7GVocsBATRqD9RCg7/IzH/dHnxhnYfp7bkZWLOc
   VL8kJH4mqndvktUCzMFvMo9Ysmv5f6AT+2GJ4bFVGTQrl2WXO/oaWW8ao
   l5A7Spt83OKkde10vy+34qP2S5ff/3guXsI9kvkxLaVVU14rGAKsuLLN7
   2XT05SePo0wLmaLaECYkDDsD5jsuGOFcLpi/35l9PCIna6ozmPJjiFAA7
   1ADgl2hR5el5kB9A4d9v4G3d4mJ1ALGWSmLn5J/CxA4bkInJZsRGJGBYQ
   3OlInBqtr/LOVNKhQ5QsH3Jwli/71WZbQkcz4jJ6/WZ4VO6SXf/dcuPtp
   g==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206367"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:50:18 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:50:18 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:50:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672671018; x=1704207018;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xWe0fbo//gGZ0kTmhEu5DpJUWsf5a5Y8HCASx5UOqQg=;
  b=lS5g7S038DneWviHa6nZBE2yAX0lgNXw/TpJDvhquB2tmxkOnlpukBC5
   a7B9wdBVnXL7qoDRkvpYdt7kteTixnZ6ifJIhPNeG60ikI48qscQWShTG
   ql0844NcqKeH8iFa6VzhyuUrfUps2nOeT6gTrF89Dh71MWKIgrnIowoC+
   O/VGwBWwTg7BWwlaJCA6iayg3RTxOzd3IFkn5YB63SafBx4OYtKsRFJ0M
   EoTVlxkn4eiiJWr5KwCvqLuhgT5XBJZwOIc5a+msBHAkhur96FgOhV0oO
   9f+Ct4j7wsA6dECa+Nx3u4sNRVo8PFPb9D/n6r/DUiyoX9UE8IDDWOsWB
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206366"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:50:17 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CA4A9280056;
        Mon,  2 Jan 2023 15:50:17 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/7] arm64: dts: tqma8mpql: Fix temperature sensor compatible
Date:   Mon, 02 Jan 2023 15:50:17 +0100
Message-ID: <3213747.oiGErgHkdL@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221231125758.GZ6112@T480>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com> <20221231125758.GZ6112@T480>
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

Hi Shawn,

Am Samstag, 31. Dezember 2022, 13:57:58 CET schrieb Shawn Guo:
> On Wed, Dec 07, 2022 at 01:41:59PM +0100, Alexander Stein wrote:
> > Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
> > While at it, fix the node name according to device tree spec
> > recommendations. The EEPROM is a separate node anyway.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> Could you combine the series into two patches, one for arm64 and the
> other for ARM?

I just split and resend the series, but I overlooked that you wanted to squash 
them actually :( I'll do another round.

Best regards,
Alexander

> Shawn
> 
> > ---
> > 
> >  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
> >  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
> >  2 files changed, 4 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts index
> > a3340814099aa..f7f657b007a18 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> > @@ -516,9 +516,8 @@ tlv320aic3x04: audio-codec@18 {
> > 
> >  		ldoin-supply = <&reg_vcc_3v3>;
> >  	
> >  	};
> > 
> > -	/* NXP SE97BTP with temperature sensor + eeprom */
> > -	se97_1c: temperature-sensor-eeprom@1c {
> > -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> > +	se97_1c: temperature-sensor@1c {
> > +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
> > 
> >  		reg = <0x1c>;
> >  	
> >  	};
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi index
> > 7bd680a926ce7..ebc29a950ba9a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
> > @@ -63,9 +63,8 @@ &i2c1 {
> > 
> >  	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> >  	status = "okay";
> > 
> > -	/* NXP SE97BTP with temperature sensor + eeprom */
> > -	se97: temperature-sensor-eeprom@1b {
> > -		compatible = "nxp,se97", "jedec,jc-42.4-temp";
> > +	se97: temperature-sensor@1b {
> > +		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
> > 
> >  		reg = <0x1b>;
> >  	
> >  	};




