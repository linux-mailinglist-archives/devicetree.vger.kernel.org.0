Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1276529B6CD
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 16:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1798430AbgJ0P0t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 11:26:49 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33966 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1797646AbgJ0PYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 11:24:46 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RFOeZ9115604;
        Tue, 27 Oct 2020 10:24:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603812280;
        bh=gYIc7L9zr2Xitt2QXvxO1kWxMznTiqyHpDHcqOOL424=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=lf9ya1kxoUh94vFdD+1o9iRoOf4ige83KuyO9xopM97B7HKIUwN77b4qhcOPbi+Pz
         xm9zZ7tJsZIfq4hER1oZu3SfO4Oa5Ukm+SSr0DHJAF4RlhIuMe+9pOS8V2u6aEEKsa
         L05S6J2SEOWmRZlCc7yHbwPhd1H4f6N/VAgT7LUA=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RFOdNa064168
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 10:24:39 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 10:24:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 10:24:39 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RFOdj4016732;
        Tue, 27 Oct 2020 10:24:39 -0500
Date:   Tue, 27 Oct 2020 10:24:39 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: ti: am654-base-board: fix clock node name
Message-ID: <20201027152439.l44e4ugrxy7kilce@prelaw>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-5-tomi.valkeinen@ti.com>
 <20201027123941.tgkqxx4rk56sl5tf@crafty>
 <ffcaa8a3-539d-62ed-2d46-560f2173dd83@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ffcaa8a3-539d-62ed-2d46-560f2173dd83@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:55-20201027, Tomi Valkeinen wrote:
> On 27/10/2020 14:39, Nishanth Menon wrote:
> > On 12:41-20201027, Tomi Valkeinen wrote:
> >> The fixed clock for OV5640 is named 'clock' which is a very generic name
> >> and easily leads to conflicts. I encountered this with a similarly named
> >> fixed-clock node in k3-am654-evm-tc358876.dtso, which then overrode the
> >> OV5640 fixed clock, causing OV5640 not to work when tc358876 overlay had
> >> been loaded.
> >>
> >> Rename the node to 'fixed-clock-ov5640'.
> >>
> >> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> >> ---
> >>  arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> >> index d12dd89f3405..6801dbddeac5 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> >> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> >> @@ -55,7 +55,7 @@ sw6 {
> >>  		};
> >>  	};
> >>  
> >> -	clk_ov5640_fixed: clock {
> >> +	clk_ov5640_fixed: fixed-clock-ov5640 {
> >>  		compatible = "fixed-clock";
> >>  		#clock-cells = <0>;
> >>  		clock-frequency = <24000000>;
> > 
> > I think you could post this independently as well.
> > 
> > https://github.com/devicetree-org/devicetree-specification/blob/v0.3/source/devicetree-basics.rst#generic-names-recommendation
> > 
> > There is a strong desire to use standard node names and
> > clock is recommended. even though there are tons of fixed-clock
> > compatible clocks in the kernel today, as of v5.10-rc1:
> > 
> > $ git grep fixed-clock- arch/arm64/boot/dts/
> > $ git grep fixed-clock- arch/arm/boot/dts/
> > 
> > As a node name is not used. Do you want to see how other
> > platforms are trying to resolve similar issues?
> 
> There doesn't seem to be a standard:
> 
> $ git grep -B2 fixed-clock arch/arm/boot/dts/
> 
> The node names are just about everything.

Yeah - I just dont want us top be the one to go create yet another
variant.

You could make the node name stricter by adding something like the
following to the yaml:
Documentation/devicetree/bindings/clock/fixed-clock.yaml

I dont see anything explicit here:
https://github.com/devicetree-org/dt-schema/blob/master/schemas/clock/clock.yaml

properties:
  nodename:
    pattern: "^(clock)(@[0-9a-f]+|-[0-9a-f]+)?$"

Adding Mike and Stephen for thoughts..

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
