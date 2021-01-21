Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3DE82FEF85
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:55:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728162AbhAUPxF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:53:05 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49844 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731598AbhAUPwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:52:53 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFov5K081392;
        Thu, 21 Jan 2021 09:50:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611244257;
        bh=Lp4JIQQRMt3tqIOHvExZrmeXWhvjJa+S9Eo2U+RvSd8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=wbX2hnRHWEqLvrPpUeAfkrpVUaiA5VoUGNRuxtZNEwI9ptMZfIxV69UHvXBvZnxf0
         WE+lBSC3upEBuacrst5N8mjEkmh4i4VjOaoNQDlkZjZjoNvOqkccDR5+TP766cwbwS
         gbNrVWdvQRTNNqXXXDaWgD6sHmOZBuIR6rE+osmA=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFov9t106442
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:50:57 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:50:56 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:50:56 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFouIG056349;
        Thu, 21 Jan 2021 09:50:56 -0600
Date:   Thu, 21 Jan 2021 09:50:56 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG nodes
Message-ID: <20210121155056.hdmirxidvnelz6tc@cyclic>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-2-s-anna@ti.com>
 <20210121153757.kuknwzrzc3xmnase@machine>
 <a664de6c-3018-c383-d82a-b84bdfb39102@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a664de6c-3018-c383-d82a-b84bdfb39102@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09:43-20210121, Suman Anna wrote:
> On 1/21/21 9:37 AM, Nishanth Menon wrote:
> > On 13:48-20210114, Suman Anna wrote:
> > [...]
> > 
> >> +
> >> +		icssg1_intc: interrupt-controller@20000 {
> >> +			compatible = "ti,icssg-intc";
> >> +			reg = <0x20000 0x2000>;
> >> +			interrupt-controller;
> >> +			#interrupt-cells = <3>;
> >> +			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
> >> +			interrupt-names = "host_intr0", "host_intr1",
> >> +					  "host_intr2", "host_intr3",
> >> +					  "host_intr4", "host_intr5",
> >> +					  "host_intr6", "host_intr7";
> > 
> > 
> > Could you look at https://pastebin.ubuntu.com/p/rbZrv3sDFk/
> > 
> 
> Yes, I am aware of these, and I have already noted it in my cover-letter.
> "Note that the interrupt nodes will generate a warning about missing
> '#address-cells' when compiled using W=2, but adding that currently
> fails the dtbs_check, so going with the dt binding compliance."
> 
> I have submitted two incremental patches, one against the binding [1] and
> another against dts [2].
> 
> regards
> Suman
> 
> [1]
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210115205819.19426-1-s-anna@ti.com/
> [2]
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210115210625.20427-1-s-anna@ti.com/


Aah.. I missed it..  thanks, will remove from my queue.. please post once things are
cleanedup and ready..

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
