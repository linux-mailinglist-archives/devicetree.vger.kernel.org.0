Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8F684BEF55
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 03:22:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231173AbiBVCOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 21:14:44 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238432AbiBVCOn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 21:14:43 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD58415A17
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 18:14:17 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7A5E1614BE
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 02:14:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9409BC340E9;
        Tue, 22 Feb 2022 02:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645496056;
        bh=W10t9pBFl/Qpk+AaFC7B2lcPTz+UcEoj3rAESOoyJpQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fYNb2J/ImTjETrTKkswqrqa4v65JvrM/zCTqPDwg0T1tmYHzBOVdiF3Wm1Gtfqtkv
         LHXfWU80FLANV7EsQEwVs6+69nxnpZPMfTilkxAkxOAGFpbymdzdC92CgHhH4JRhAN
         urawu/8p+x5kaQH3tmICQXDn8g2nMKNPRckZKgHjbsXQ+veAX7Uwo4yRrZnSbh62BI
         or+c17UFTXAT+AsmUtpMQ3w7ayixJcdrDaYm6zETZt56QzLvecadJjsdrIohVNjo7L
         zQbiEt56zdaEt6IunliJPYX/OcoEZ3Rglnr6/IFv/ZPqkQWamNEUCxwZeI9BfE7vDk
         JqOtpyEj+Q1xA==
Date:   Tue, 22 Feb 2022 10:14:10 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH 2/5] ARM: dts: imx6ul: add TQ-Systems MBa6ULx
 device trees
Message-ID: <20220222021410.GU2249@dragon>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
 <20220208134223.908757-3-alexander.stein@ew.tq-group.com>
 <20220213031211.GJ4909@dragon>
 <2816666.e9J7NaK4W3@steina-w>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2816666.e9J7NaK4W3@steina-w>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 04:45:58PM +0100, Alexander Stein wrote:
...
> > > diff --git a/arch/arm/boot/dts/mba6ulx.dtsi
> > > b/arch/arm/boot/dts/mba6ulx.dtsi new file mode 100644
> > > index 000000000000..3a35b1efdc1f
> > > --- /dev/null
> > > +++ b/arch/arm/boot/dts/mba6ulx.dtsi
> > > @@ -0,0 +1,615 @@
> > > +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> > > +/*
> > > + * Copyright 2018-2022 TQ-Systems GmbH
> > > + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
> > > + */
> > > +
> > > +/ {
> > > +	model = "TQ-Systems MBA6ULx Baseboard";
> > > +
> > > +	aliases {
> > > +		mmc0 = &usdhc2;
> > > +		mmc1 = &usdhc1;
> > > +		rtc0 = &rtc0;
> > > +		rtc1 = &snvs_rtc;
> > > +	};
> > > +
> > > +	backlight: backlight {
> > > +		compatible = "pwm-backlight";
> > > +		power-supply = <&reg_mba6ul_3v3>;
> > > +		enable-gpios = <&expander_out0 4 GPIO_ACTIVE_HIGH>;
> > > +		status = "disabled";
> > > +	};
> > > +
> > > +	beeper: beeper {
> > > +		compatible = "gpio-beeper";
> > > +		gpios = <&expander_out1 6 GPIO_ACTIVE_HIGH>;
> > > +	};
> > > +
> > > +	chosen {
> > > +		stdout-path = &uart1;
> > > +	};
> > 
> > Move 'chosen' node up.
> 
> Ok. The binding does not say anything regarding the order with respect to the 
> alias node. I've seen examples of both order. So I went with alias 1st, chosen 
> 2nd.

Sorry for not being clear, but I was asking to put 'chosen' before
backlight and beeper nodes.

Shawn
