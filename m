Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3A844B0D39
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 13:10:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234560AbiBJMKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 07:10:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbiBJMKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 07:10:50 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFFF1098
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 04:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644495051; x=1676031051;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nAdroOfhDKWAx0dxTTeJoRwSvUVUVyT6jUggDfYhJuM=;
  b=eRzns+wJWSO5AqKgQMl05cOlJEPEQnS4lrTVdmd+sBLRk6ZBS4E1usYT
   K2YAdm+qkF6K8ZalxZjQlszRIItsoavfdZ/2u75uEoQuolZ17ZichpdOk
   P9EEQOr3VXuTlIZhEvMPDuKBTuwsljGk1yQ9hl5E5+MGMwrGLTb+dv+a/
   g/UTm2gzjRvB78yOZEulISAkZALyFU175JCLVoiB/+wDLm841e5B/+vB7
   kNpv5TtfdfD7lLpO/bh9LVR8GcthzuFaUHXU6lCOVJZRL+RqmPmie1jqW
   AeO/vavP/UXA3UvqyoEIxGTBELDIwg2NJY41BfvDpezEiCpT6NVGseR27
   A==;
X-IronPort-AV: E=Sophos;i="5.88,358,1635199200"; 
   d="scan'208";a="22014737"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 10 Feb 2022 13:10:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 10 Feb 2022 13:10:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 10 Feb 2022 13:10:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644495050; x=1676031050;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nAdroOfhDKWAx0dxTTeJoRwSvUVUVyT6jUggDfYhJuM=;
  b=ILSAwGsdqdqoo9apuRoic1Fa+EiOu1pW0Y88IPjuIfvIetlGwTzY7spX
   jqUXk4K8gJfPcLqeDEgEg4zGc/2YnngXLX9d3KLkatvC8uTJH3KwKhw9Z
   gWd1EGZFqoPTjH6LvY2HKAe2I274gLFKSK9LQWW89rrBtbOkDOYhDQg0o
   EgEMD7Fj8xPjaWVkjtwAJbgNY0hEay2/d+b7VRNtD2Wg1M3MZ33JUryFz
   hmAAup67n/agcityTy1cN/Mx9J465JY5X30OTsNvGLEPk5KaAGM5F00ef
   3+J1dAfVP+utBeDXGWwU8oEHz7TzGDWBah5Xv71V8BgI54JWkZoS+NrW7
   A==;
X-IronPort-AV: E=Sophos;i="5.88,358,1635199200"; 
   d="scan'208";a="22014736"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Feb 2022 13:10:50 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D66E6280065;
        Thu, 10 Feb 2022 13:10:49 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH 5/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
Date:   Thu, 10 Feb 2022 13:10:47 +0100
Message-ID: <4652639.44csPzL39Z@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <0c84c2af-045d-54bc-ef46-296390e58c14@canonical.com>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com> <20220208134223.908757-6-alexander.stein@ew.tq-group.com> <0c84c2af-045d-54bc-ef46-296390e58c14@canonical.com>
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

Hi Krzysztof,

Am Dienstag, 8. Februar 2022, 17:09:33 CET schrieb Krzysztof Kozlowski:
> On 08/02/2022 14:42, Alexander Stein wrote:
> > Add device trees for the MBa6ULx mainboard with TQMa6ULLxL SoMs.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  arch/arm/boot/dts/Makefile                    |  1 +
> >  .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   | 15 ++++
> >  arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     | 76 +++++++++++++++++++
> >  3 files changed, 92 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
> >  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 3a6eccb6371a..9bf89273ae71 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -710,6 +710,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
> > 
> >  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
> >  	imx6ull-phytec-segin-lc-rdk-nand.dtb \
> >  	imx6ull-tqma6ull2-mba6ulx.dtb \
> > 
> > +	imx6ull-tqma6ull2l-mba6ulx.dtb \
> > 
> >  	imx6ulz-14x14-evk.dtb \
> >  	imx6ulz-bsh-smm-m2.dtb
> >  
> >  dtb-$(CONFIG_SOC_IMX7D) += \
> > 
> > diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
> > b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts new file mode 100644
> > index 000000000000..33437aae9822
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
> > @@ -0,0 +1,15 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> > +/*
> > + * Copyright 2018-2022 TQ-Systems GmbH
> > + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx6ull-tqma6ull2l.dtsi"
> > +#include "mba6ulx.dtsi"
> > +
> > +/ {
> > +	model = "TQ Systems TQMa6ULL2L SoM on MBa6ULx board";
> > +	compatible = "tq,imx6ull-tqma6ull2l-mba6ulx", "tq,imx6ull-
tqma6ull2l",
> > "fsl,imx6ull"; +};
> > diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> > b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi new file mode 100644
> > index 000000000000..8e4d5cd18614
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
> > @@ -0,0 +1,76 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> > +/*
> > + * Copyright 2018-2022 TQ-Systems GmbH
> > + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
> > + */
> > +
> > +#include "imx6ull.dtsi"
> > +#include "imx6ul-tqma6ul-common.dtsi"
> > +#include "imx6ul-tqma6ulxl-common.dtsi"
> > +
> > +/ {
> > +	model = "TQ Systems TQMa6ULL2L SoM";
> > +	compatible = "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
> > +};
> > +
> 
> This entire file is exactly the same as tqma6ull2l.dtsi. What's the
> point of creating additional flavor which is exactly the same? The
> models look compatible, don't they?

Thanks for your fast feedback. You mean imx6ull-tqma6ull2.dtsi (wthout 
trailing 'l')? In this case it's not exactly the same, because the LGA version 
includes 'imx6ul-tqma6ulxl-common.dtsi' while the non-LGA one includes 
'imx6ul-tqma6ulx-common.dtsi'.

I this make things a bit more clear.
Regards,
Alexander



