Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF2FD60085E
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 10:10:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiJQIK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 04:10:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbiJQIK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 04:10:28 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D2846866
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:10:24 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29H8A7II101306;
        Mon, 17 Oct 2022 03:10:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1665994207;
        bh=DcaX+n7/l8tciEU0Vu2jBSoMvY3jNO6bqbCzrMREmM4=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=UdfASsvQ+6ivyIJomLc/0uhCuNIM1ptLZgTu3C/5J/IiUgvBov/8p+kP3BfM2IGhN
         h6RDqFW1NE/Z46hYXOTBJriDvErQDpUOOBjNcqMAoNr/J3tTvgXlndrPVKF4tMRvND
         5woIEvu+NWbuE6n4uvKI1sfPugMTY3Eg0xzJVRiQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29H8A7oP025695
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Oct 2022 03:10:07 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 17
 Oct 2022 03:10:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 17 Oct 2022 03:10:06 -0500
Received: from ubuntu (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with SMTP id 29H8A0it094416;
        Mon, 17 Oct 2022 03:10:01 -0500
Date:   Mon, 17 Oct 2022 01:09:59 -0700
From:   Matt Ranostay <mranostay@ti.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC:     <vigneshr@ti.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: k3-j72*: correct compatible for syscon
 entries
Message-ID: <Y00N1yvHrkKoeJ8i@ubuntu>
References: <20221012180052.89840-1-mranostay@ti.com>
 <0118faac-7d50-ddb2-2914-0610b83efe6c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0118faac-7d50-ddb2-2914-0610b83efe6c@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 13, 2022 at 09:05:11AM -0400, Krzysztof Kozlowski wrote:
> On 12/10/2022 14:00, Matt Ranostay wrote:
> > Add missing ti,j721e-system-controller to bus defines in mcu/wakeup
> > domains to avoid the following similar warnings from dt-schema checks:
> > 
> > arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'
> > 
> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
> >  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
> >  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> > index e5be78a58682..b5c666f98ba4 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> > @@ -35,7 +35,7 @@ k3_reset: reset-controller {
> >  	};
> >  
> >  	mcu_conf: syscon@40f00000 {
> > -		compatible = "syscon", "simple-mfd";
> > +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
> 
> That's a different SoC, so probably you should use dedicated compatible
> here.

Since there isn't any notable difference between these platforms for the simple-mfd
controller I'm thinking it maybe makes sense to have a ti,generic-system-controller
compatible. Thoughts?

- Matt 

> 
> >  		reg = <0x00 0x40f00000 0x00 0x20000>;
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> > index df08724bbf1c..5d9ec221fa34 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> > @@ -35,7 +35,7 @@ k3_reset: reset-controller {
> >  	};
> >  
> >  	mcu_conf: syscon@40f00000 {
> > -		compatible = "syscon", "simple-mfd";
> > +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
> >  		reg = <0x0 0x40f00000 0x0 0x20000>;
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > index 4d1bfabd1313..3845d162d3c6 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> > @@ -69,7 +69,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
> >  	};
> >  
> >  	mcu_conf: syscon@40f00000 {
> > -		compatible = "syscon", "simple-mfd";
> > +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
> 
> Here as wekk - it's a j721s2?
> 
> >  		reg = <0x0 0x40f00000 0x0 0x20000>;
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> 
> Best regards,
> Krzysztof
> 
