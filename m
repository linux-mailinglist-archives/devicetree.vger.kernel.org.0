Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8C9062F20D
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 11:01:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235245AbiKRKBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 05:01:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241566AbiKRKBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 05:01:39 -0500
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27518FB22
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 02:01:38 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AIA1WYg096704;
        Fri, 18 Nov 2022 04:01:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668765692;
        bh=xkiAjQRiMbSn988sCU4HjOJEM0heVOrXmzKQ7LH748Q=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=vsGU7KRUI0OsVhR0T514+IlKHmQFjBANzZ/KfNC1JuI4j4U8Chdq9cs4AUCVumTrh
         SogTQPFuLA0dvMS1jNnLue+W+q2iM28yQMpwNjTz4LFMuM/0b5vyNDJDMHC4v57OTM
         7NPR/NxwEsfMYXr36ipjZrlbqBjNo257puKxaYM0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AIA1WLn025134
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 18 Nov 2022 04:01:32 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 18
 Nov 2022 04:01:32 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 18 Nov 2022 04:01:32 -0600
Received: from ubuntu (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with SMTP id 2AIA1FvG074625;
        Fri, 18 Nov 2022 04:01:17 -0600
Date:   Fri, 18 Nov 2022 02:01:14 -0800
From:   Matt Ranostay <mranostay@ti.com>
To:     Vaishnav Achath <vaishnav.a@ti.com>
CC:     <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v5 3/8] arm64: dts: ti: k3-j721s2-mcu-wakeup: Add support
 of OSPI
Message-ID: <Y3dX6ma57kAROwuQ@ubuntu>
References: <20221103044125.172864-1-mranostay@ti.com>
 <20221103044125.172864-4-mranostay@ti.com>
 <eac6b79f-fc0f-5e8b-4bd2-7dbb6c159bf8@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eac6b79f-fc0f-5e8b-4bd2-7dbb6c159bf8@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 16, 2022 at 02:03:25PM +0530, Vaishnav Achath wrote:
> 
> 
> On 03/11/22 10:11, Matt Ranostay wrote:
> > From: Aswath Govindraju <a-govindraju@ti.com>
> > 
> > Add support for two instance of OSPI in J721S2 SoC.
> > 
> > Cc: Vignesh Raghavendra <vigneshr@ti.com>
> > Cc: Nishanth Menon <nm@ti.com>
> > Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     | 40 +++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > index 3264b8e8faea..034122be2ed5 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > @@ -306,4 +306,44 @@ cpts@3d000 {
> >  			ti,cpts-periodic-outputs = <2>;
> >  		};
> >  	};
> > +
> > +	fss: syscon@47000000 {
> > +		compatible = "syscon", "simple-mfd";
> 
> Looks like the update here to add "ti,j721e-system-controller" compatible is in
> PATCH 6/8, it could have been in the same patch here instead of editing the same
> node again in the series.
> 

Will fix in next revision.

- Matt


> > +		reg = <0x0 0x47000000 0x0 0x100>;
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +		ranges;
> > +
> > +		ospi0: spi@47040000 {
> > +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> > +			reg = <0x00 0x47040000 0x00 0x100>,
> > +			      <0x5 0x0000000 0x1 0x0000000>;
> > +			interrupts = <GIC_SPI 840 IRQ_TYPE_LEVEL_HIGH>;
> > +			cdns,fifo-depth = <256>;
> > +			cdns,fifo-width = <4>;
> > +			cdns,trigger-address = <0x0>;
> > +			clocks = <&k3_clks 109 5>;
> > +			assigned-clocks = <&k3_clks 109 5>;
> > +			assigned-clock-parents = <&k3_clks 109 7>;
> > +			assigned-clock-rates = <166666666>;
> > +			power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +		};
> > +
> > +		ospi1: spi@47050000 {
> > +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> > +			reg = <0x00 0x47050000 0x00 0x100>,
> > +			      <0x7 0x0000000 0x1 0x0000000>;
> > +			interrupts = <GIC_SPI 841 IRQ_TYPE_LEVEL_HIGH>;
> > +			cdns,fifo-depth = <256>;
> > +			cdns,fifo-width = <4>;
> > +			cdns,trigger-address = <0x0>;
> > +			clocks = <&k3_clks 110 5>;
> > +			power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +		};
> > +
> > +	};
> >  };
> 
> Reviewed-by: Vaishnav Achath <vaishnav.a@ti.com>
> 
> -- 
> Regards,
> Vaishnav
