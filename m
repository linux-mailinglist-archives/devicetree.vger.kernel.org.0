Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC4AD29BE75
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 17:57:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1812930AbgJ0Qqr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 12:46:47 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37676 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1794903AbgJ0POT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 11:14:19 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RFE8Sq114866;
        Tue, 27 Oct 2020 10:14:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603811648;
        bh=3xuGDVFTBJ49TvUcy1qxY6JUDsiWkY+SHGLjukwu7qA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=Xe1dxtfDAgWSEjWpWIfSSP+pjq3ORt1RovrhcviahUYKhO57h1X6dlPKSOon/n6nH
         GsBCMfJjFMCWA1fNKaFxpXHfAaY0SH5D5fJRXhc5aQA3MzDjQP1T+ZRaq63MRW15a0
         yqgeQSeBbKtCmyTYDMfVoek7Tde/WRj5voOaEVJo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RFE8bX047405
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 10:14:08 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 10:14:08 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 10:14:08 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RFE7mw023509;
        Tue, 27 Oct 2020 10:14:08 -0500
Date:   Tue, 27 Oct 2020 10:14:07 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-j721e-common-proc-board: add DP
 to j7 evm
Message-ID: <20201027151407.7c2arettxvly5fhh@cross>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-3-tomi.valkeinen@ti.com>
 <20201027122054.zdjbjfpjkhnc7wdr@silenced>
 <5e095a0b-9369-c15b-f00c-ec5b2b27b870@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5e095a0b-9369-c15b-f00c-ec5b2b27b870@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:44-20201027, Tomi Valkeinen wrote:
> On 27/10/2020 14:20, Nishanth Menon wrote:
> > On 12:41-20201027, Tomi Valkeinen wrote:
> > [...]
> > 
> >> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> >> index 52e121155563..5a36d65755ee 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> >> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> >> @@ -83,6 +83,31 @@ sound0: sound@0 {
> >>  			      "cpb-codec-scki",
> >>  			      "cpb-codec-scki-48000", "cpb-codec-scki-44100";
> >>  	};
> >> +
> >> +	dp_pwr_3v3: fixedregulator-dp-prw {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "dp-pwr";
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +		gpio = <&exp4 0 0>;	/* P0 - DP0_PWR_SW_EN */
> >> +		enable-active-high;
> >> +
> >> +		/* Always on for now, until dp-connector driver can handle this */
> >> +		regulator-always-on;
> >> +	};
> >> +
> >> +	dp0: connector {
> >> +		compatible = "dp-connector";
> > 
> > This is not documented? I see the following on checkpatch:
> > +WARNING: DT compatible string "dp-connector" appears un-documented -- check ./Documentation/devicetree/bindings/
> > +#42: FILE: arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:100:
> > ++              compatible = "dp-connector";
> > +      mechanically convert to the typical style using --fix or --fix-inplace.
> > +      them to the maintainer, see CHECKPATCH in MAINTAINERS.
> 
> Yes, I mentioned this in the cover letter.
> 
Aaah thanks. We may need to look at reposting this patch after it hits mainline.


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
