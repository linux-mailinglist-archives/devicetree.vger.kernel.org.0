Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6282EC7C7
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 02:36:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726352AbhAGBgb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 20:36:31 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:41682 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbhAGBgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 20:36:31 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1071Yo85003428;
        Wed, 6 Jan 2021 19:34:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609983290;
        bh=K6kjDaGHe+BTTW8SJQNpbcxlMlxyIG2kWiogvic5Qnw=;
        h=Date:From:To:CC:In-Reply-To:References:Subject;
        b=B/610Bf2sApgbhLZpBFgxNPi1dRfY7A30koI8jZHwFZQBPfclDC79sc+KqtyH5Z5h
         AhR5LWAQA8f5TBtsSwOSapfTpXf0DiDRnsho4QAbpTT8lpSIbINAeiqyBf9G80vivz
         x146qe022ssAilGsDJt3NfrUndmW1lBiNvgwb5cI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1071YoTk098697
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 6 Jan 2021 19:34:50 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 Jan
 2021 19:34:50 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 Jan 2021 19:34:50 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1071YoL3000440;
        Wed, 6 Jan 2021 19:34:50 -0600
Date:   Wed, 6 Jan 2021 19:34:50 -0600
From:   Gowtham A Tammana <g-tammana@ti.com>
To:     Nishanth Menon <nm@ti.com>, Gowtham Tammana <g-tammana@ti.com>
CC:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Message-ID: <5ff6653a50f17_7e672b1c8bc1b0b0b9@uda0271916b.notmuch>
In-Reply-To: <20201218140725.6ierioowdufl52bv@unfilled>
References: <20201217000716.11091-1-g-tammana@ti.com>
 <20201217000716.11091-3-g-tammana@ti.com>
 <20201218140725.6ierioowdufl52bv@unfilled>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j7200-main: Add main domain
 watchdog entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nishanth Menon wrote:
> On 18:07-20201216, Gowtham Tammana wrote:
> > Add DT entries for main domain watchdog instances.
> 
> Please add a note to indicate that these are the only watchdogs that
> are visible to Linux and ARMv8 systems.

Will update in v2.
> 
> You may need to repost the dts patch once you have the 
> > 
> > Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
> > ---
> >  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> > index 72d6496e88dd..de430d44c2a6 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> > @@ -303,6 +303,24 @@ main_uart9: serial@2890000 {
> >  		clock-names = "fclk";
> >  	};
> >  
> > +	watchdog0: watchdog@2200000 {
> 
> If you are going to strengthen the node-names up (recommend we
> do that), you might want to use a regex and lock things down.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation//devicetree/bindings/watchdog/ti,rti-wdt.yaml#n26
> 
> That is much better option that expecting people to read the example and
> follow the convention.

there's one defined in [1] which is listed as included schema.

[1]:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/watchdog/watchdog.yaml#19

> 
> > +		compatible = "ti,j7-rti-wdt";
> > +		reg = <0x0 0x2200000 0x0 0x100>;
> we try and keep 0x00 instead of 0x0 -> see other places in the dtsi

Do see them now, will fix them in v2.

Thanks for the review,
Gowtham

> > +		clocks = <&k3_clks 252 1>;
> > +		power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
> > +		assigned-clocks = <&k3_clks 252 1>;
> > +		assigned-clock-parents = <&k3_clks 252 5>;
> > +	};
> > +
> > +	watchdog1: watchdog@2210000 {
> > +		compatible = "ti,j7-rti-wdt";
> > +		reg = <0x0 0x2210000 0x0 0x100>;
> > +		clocks = <&k3_clks 253 1>;
> > +		power-domains = <&k3_pds 253 TI_SCI_PD_EXCLUSIVE>;
> > +		assigned-clocks = <&k3_clks 253 1>;
> > +		assigned-clock-parents = <&k3_clks 253 5>;
> > +	};
> > +
> >  	main_i2c0: i2c@2000000 {
> >  		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
> >  		reg = <0x00 0x2000000 0x00 0x100>;
> 
> -- 
> Regards,
> Nishanth Menon
> Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


