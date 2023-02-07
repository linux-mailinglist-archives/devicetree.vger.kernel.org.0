Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DBA768D720
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 13:47:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbjBGMrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 07:47:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231893AbjBGMrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 07:47:06 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBD5314E91
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 04:47:04 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <str@pengutronix.de>)
        id 1pPNN9-0003vy-Bd; Tue, 07 Feb 2023 13:46:55 +0100
Received: from str by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <str@pengutronix.de>)
        id 1pPNN8-0007si-S3; Tue, 07 Feb 2023 13:46:54 +0100
Date:   Tue, 7 Feb 2023 13:46:54 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 1/2] ARM: dts: socfpga: Add enclustra PE1 devicetree
Message-ID: <20230207124654.GA793@pengutronix.de>
References: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
 <159d831a-7a36-bf2b-3ee8-d4338e999b9f@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <159d831a-7a36-bf2b-3ee8-d4338e999b9f@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 07, 2023 at 11:49:58AM +0100, Krzysztof Kozlowski wrote:
> On 07/02/2023 10:41, Steffen Trumtrar wrote:
> > The enclustra PE1 is a baseboard from enclustra GmbH for the enclustra
> > Mercury AA1+ SOM.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/Makefile                    |  1 +
> >  .../boot/dts/socfpga_arria10_mercury_pe1.dts  | 55 +++++++++++++++++++
> >  2 files changed, 56 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index d08a3c450ce7..2714b70f2a67 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1179,6 +1179,7 @@ dtb-$(CONFIG_ARCH_S5PV210) += \
> >  dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
> >  	socfpga_arria5_socdk.dtb \
> >  	socfpga_arria10_chameleonv3.dtb \
> > +	socfpga_arria10_mercury_pe1.dtb \
> >  	socfpga_arria10_socdk_nand.dtb \
> >  	socfpga_arria10_socdk_qspi.dtb \
> >  	socfpga_arria10_socdk_sdmmc.dtb \
> > diff --git a/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts b/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> > new file mode 100644
> > index 000000000000..a236489afbc2
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> > @@ -0,0 +1,55 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2023 Steffen Trumtrar <kernel@pengutronix.de>
> > + */
> > +/dts-v1/;
> > +#include "socfpga_arria10_mercury_aa1.dtsi"
> > +
> > +/ {
> > +	model = "enclustra,mercury-pe1";
> 
> This is user-visible string, not compatible. git grep for examples.

Oops, stupid me. Sorry, will fix that of course.


Thanks,
Steffen Trumtrar

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
