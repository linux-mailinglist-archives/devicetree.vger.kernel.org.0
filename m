Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5904B2834
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 15:48:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238502AbiBKOrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 09:47:19 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235874AbiBKOrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 09:47:19 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E27B0
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644590837; x=1676126837;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LfMj6eMrcMmEnTgfyY9DGDn3hwCmG/vd2QP66q6etF4=;
  b=SEil+LE/eMi4gVi2pc9BNdKRU8NUgfuMlPtZ+HFaFPFLFlKrZ010HFpR
   tI7+sKOwpPBKyFOky6AHKSgM81b8k/xstvtU3wJg0fxPPcyURAfguIsNG
   UHhx07woz3RFZ+SoT4M0OEDQuyP44roHOerLaeXu95bzCsbQAvzv9y3mj
   trgbVAWT4xjWwYltsKsb3gimK+BxDj6Oc/lzraYRRveyFyMGJ6y7LcbmQ
   MQbgYrxM24jGNgfw68NG4X3OmWPLRJFBi7NUUqtz+kMyhlp7ZU/VKTAGX
   pGvnQlYBGfSm8lgaDK4NViI1HWGAODunhbdcRYTbAA3vG6y1rlzl7oPSi
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,361,1635199200"; 
   d="scan'208";a="22042644"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 11 Feb 2022 15:47:15 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 11 Feb 2022 15:47:15 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 11 Feb 2022 15:47:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644590835; x=1676126835;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LfMj6eMrcMmEnTgfyY9DGDn3hwCmG/vd2QP66q6etF4=;
  b=EjcVaP0eLvlWgM5Ww013UIJN+7OoMeirEfb+kF793sh7q5CsXEhth8nL
   tWEYxUlwbO5AqvSL0X57oPYMCtvo2WcQXdCDX2KSco+hLmndcLPDg+nFF
   0HVBcjkoP+4ygWOkvvkODYbD8monrc101dDEVbiosu+8U9mAYL8G727u7
   W3cvxLki8uJkPt3lW9yc7WifgXTf5O5+LLUnF3204GqFszZ/9Lc2kS0mm
   cBXpXags6IB5ZIqUYll0MfV6khPHNCNRJseAfgPaJ9YkWcWhDqCDwb7Yt
   XRqBtajQRfW56f8U69TeoEKjGc3XJxXuQvckBItp1R05Xm6VrsSwOtMTE
   g==;
X-IronPort-AV: E=Sophos;i="5.88,361,1635199200"; 
   d="scan'208";a="22042643"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Feb 2022 15:47:15 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 70086280065;
        Fri, 11 Feb 2022 15:47:15 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH 4/8] ARM: dts: imx6ul: fix adc node compatible
Date:   Fri, 11 Feb 2022 15:47:12 +0100
Message-ID: <5796355.lOV4Wx5bFT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220211034707.GK4909@dragon>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com> <20220125135014.3041002-5-alexander.stein@ew.tq-group.com> <20220211034707.GK4909@dragon>
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

Am Freitag, 11. Februar 2022, 04:47:07 CET schrieb Shawn Guo:
> On Tue, Jan 25, 2022 at 02:50:10PM +0100, Alexander Stein wrote:
> > fsl,imx6ul-adc is not listed in the binding, so remove it. Fixes the
> > dt_binding_check warning:
> > adc@2198000: compatible:0: 'fsl,vf610-adc' was expected
> > adc@2198000: compatible: ['fsl,imx6ul-adc', 'fsl,vf610-adc'] is too long
> > adc@2198000: compatible: Additional items are not allowed ('fsl,vf610-adc'
> > was unexpected)
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  arch/arm/boot/dts/imx6ul.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> > index df8b4ad62418..d6c2b0ad3eac 100644
> > --- a/arch/arm/boot/dts/imx6ul.dtsi
> > +++ b/arch/arm/boot/dts/imx6ul.dtsi
> > @@ -920,7 +920,7 @@ usdhc2: mmc@2194000 {
> > 
> >  			};
> >  			
> >  			adc1: adc@2198000 {
> > 
> > -				compatible = "fsl,imx6ul-adc", 
"fsl,vf610-adc";
> > +				compatible = "fsl,vf610-adc";
> 
> Maybe we should add compatible "fsl,imx6ul-adc" to bindings?

In this case "fsl,imx6sx-adc" has to be added as well. I'll do it in a v2.

Regards,
Alexander

> >  				reg = <0x02198000 0x4000>;
> >  				interrupts = <GIC_SPI 100 
IRQ_TYPE_LEVEL_HIGH>;
> >  				clocks = <&clks IMX6UL_CLK_ADC1>;




