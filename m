Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AC864B20D2
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 09:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345443AbiBKI5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 03:57:10 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231935AbiBKI5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 03:57:10 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AC24E6C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 00:57:09 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2726D61E2A
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 982E0C340E9;
        Fri, 11 Feb 2022 08:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644569828;
        bh=Z1hdFw/aj47eNjrve8QSKR6IQytXdTYgGyB3PpHw4dk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dwcyzNAdASY4KX+7L2O15ZAYg1ePnVgVVCFMT8DR5Jc/ol/IPfK/hOSNOv68muVRT
         7dPerExB3N4q1mluihGLzMl9msY2QhRNiSEiedQmEBtCvpT98SviQAAu+qVhnJ4UTJ
         KTr8hG3E7J8tpsRegMBbaada720zawdxp9x4CXvn7Yh4+mPQChTiBxISeLwwLiVGo2
         bjCQ0iMwWNUGlE5/7nlKT7OgXMz3fxYCXLg6hnRT1QLu8UuNpFWTKyHYlPz4BSlDJQ
         Px9+SioGlK3mle9ABPgUrRp40i0PGLE7VzS8A2Pa6/lxY9NnJ1sNzE7uZUU9trXQoC
         dVJIQBtQvBHhg==
Date:   Fri, 11 Feb 2022 16:57:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Vladimir Oltean <vladimir.oltean@nxp.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: fsl-ls1028a-qds: Drop overlay syntax
 hard coding
Message-ID: <20220211085703.GR4909@dragon>
References: <20220129070912.9836-1-shawnguo@kernel.org>
 <20220129070912.9836-2-shawnguo@kernel.org>
 <20220131110659.7lu7ccfcktfhgddm@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131110659.7lu7ccfcktfhgddm@skbuf>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 11:07:00AM +0000, Vladimir Oltean wrote:
> Hi Shawn,
> 
> On Sat, Jan 29, 2022 at 03:09:11PM +0800, Shawn Guo wrote:
> > As suggested by commit 9ae8578b517a ("of: Documentation: change overlay
> > example to use current syntax"), there is no need to have overlay syntax
> > be hard coded in the device tree source file any more.
> > 
> > Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> > ---
> 
> This looks good.
> 
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> Just one minor comment below:
> 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> > index 8ffb707a1576..bd88438c2ecd 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds-65bb.dts
> > @@ -11,98 +11,78 @@
> >  /dts-v1/;
> >  /plugin/;
> >  
> > -/ {
> > -	fragment@0 {
> > -		target = <&mdio_slot1>;
> > -
> > -		__overlay__ {
> > -			#address-cells = <1>;
> > -			#size-cells = <0>;
> > -
> > -			slot1_sgmii: ethernet-phy@2 {
> > -				/* AQR112 */
> > -				reg = <0x2>;
> > -				compatible = "ethernet-phy-ieee802.3-c45";
> > -			};
> > -		};
> > -	};
> > +&mdio_slot1 {
> >  
> 
> Can you please delete this blank line?

Fixed.  Thanks for spotting it, Vladimir!

Shawn

> 
> > -	fragment@1 {
> > -		target = <&enetc_port0>;
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  
> > -		__overlay__ {
> > -			phy-handle = <&slot1_sgmii>;
> > -			phy-mode = "2500base-x";
> > -			managed = "in-band-status";
> > -			status = "okay";
> > -		};
> > +	slot1_sgmii: ethernet-phy@2 {
> > +		/* AQR112 */
> > +		reg = <0x2>;
> > +		compatible = "ethernet-phy-ieee802.3-c45";
> >  	};
> > +};
