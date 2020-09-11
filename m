Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 239B7266282
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 17:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726543AbgIKPvX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 11:51:23 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:43242 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726527AbgIKPu7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 11:50:59 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08BDYQgU062283;
        Fri, 11 Sep 2020 08:34:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599831267;
        bh=X5h4PGpLmndSYLWN66OgcHNDubJLIYpRRn0lxAhuCQI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=SbdYOpewLBvT3O1CbF+mBKrs831ZS5BWWgWxt7e8QoRv7X4LBgaGwEOuQc0yXYLuB
         TejhEDOvqNtrctGexC0HCde0ctwlk23IProNiUVR0hDvb7l1finDtZy/VNKHYUUIM7
         gbMrApP3Xy+nBf1yDJpBtNk0JKGCXJmPc/66LfOk=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08BDYQcp022955
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 11 Sep 2020 08:34:26 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 11
 Sep 2020 08:34:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 11 Sep 2020 08:34:26 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08BDYQBN110293;
        Fri, 11 Sep 2020 08:34:26 -0500
Date:   Fri, 11 Sep 2020 08:34:26 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 4/5] arm64: dts: ti: Add support for J7200 SoC
Message-ID: <20200911133426.fnmkhcindt4jai3o@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-5-lokeshvutla@ti.com>
 <20200910171928.xzfwhix46lcsiup7@akan>
 <83122b2e-4dba-a2f9-b722-e510acfa9135@ti.com>
 <20200910182020.t4xkpgyzu5ryxkp5@akan>
 <2f06e21a-798d-cbe2-80cc-202a8069ce9f@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2f06e21a-798d-cbe2-80cc-202a8069ce9f@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:47-20200910, Suman Anna wrote:
> On 9/10/20 1:20 PM, Nishanth Menon wrote:
> > On 12:54-20200910, Suman Anna wrote:
> > [...]
> > 
> >>>> +		};
> >>>
> >>> I think we could introduce base infrastructure stuff like intr and
> >>> inta nodes here? Also, the gpio_intr?
> >>
> >> FYI, they are currently being added in Patch 1 from Grygorii's "[v2,0/4] arm64:
> >> dts: ti: k3-j7200: add dma and mcu cpsw" series,
> >> https://patchwork.kernel.org/cover/11763711/
> >>
> >> The overall series seems to have some dependencies, so better to separate out
> >> those nodes and include as an additional add-on patch to this series, atleast it
> >> can unblock all others who use the TI-SCI Interrupt node.
> >>
> > 
> > There is dependency on udma which in turn needs chipid stuff merged,
> > but I dont see anything preventing inta intr (which are infrastructure
> > components) from being merged in. It is not just udma driver that uses these
> > infrastructure.
> 
> Yep, I also meant the same.

ok. Please squash the ia/intr in to this patch as well.

> 
> > 
> > [...]
> >>>> +
> >>>> +/ {
> >>>> +	model = "Texas Instruments K3 J7200 SoC";
> >>>> +	compatible = "ti,j7200";
> >>>> +	interrupt-parent = <&gic500>;
> >>>> +	#address-cells = <2>;
> >>>> +	#size-cells = <2>;
[...]
> >>>> +		serial11 = &main_uart9;
> >>>> +	};
> >>>> +
> >>>
> >>> might be nice to leave a chosen { }; here to indicate board
> >>> files fill it up.. just to maintain consistency with rest of SoC dtsis?
> >>
> >> Doesn't serve any purpose IMO. I remember commenting about that blank node to
> >> remove it during some earlier reviews.
> > 
[...]
> 
> Yeah ok to add back then.


Lets squash the change to this patch.

Looking forward to the v4.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
