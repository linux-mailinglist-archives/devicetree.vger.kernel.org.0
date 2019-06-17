Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 680A7487A5
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 17:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726292AbfFQPnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 11:43:45 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:35194 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbfFQPnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 11:43:45 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFhePR087255;
        Mon, 17 Jun 2019 10:43:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560786220;
        bh=yf3NckogOID0WqY1afMZo0XONPybbeINOiKuGiFNtok=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=r3nm4vEoZFXQX16M89fhULQHtOWDkphokLZxN66caHfyYUNdqkIvyQtpFblao+nIV
         MXgQbSti6UsbjVAsfIgdVg6KicA2D4mgv0uHxZEY9p8A0P5DIBiHOZZx7d6MGMUVhh
         lhLAiDpY38COxkf2u1QHAm3d+roeIgyFNNi8agKI=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFhetM071169
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Jun 2019 10:43:40 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:43:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:43:39 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFhdgh018434;
        Mon, 17 Jun 2019 10:43:39 -0500
Date:   Mon, 17 Jun 2019 10:42:31 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>
CC:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Roger Quadros <rogerq@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
Message-ID: <20190617154230.shycra7u74qwqdcf@kahuna>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17:54-20190617, Tero Kristo wrote:
> On 30/05/2019 13:49, Nishanth Menon wrote:
> > On 16:13-20190529, Suman Anna wrote:
> > > From: Roger Quadros <rogerq@ti.com>
> > > 
> > > Add the MSCM RAM address space to the ranges property of the cbass_main
> > > interconnect node so that the addresses can be translated properly.
> > > 
> > > This fixes the probe failure in the sram driver for the MSMC RAM node.
> > > 
> > > Signed-off-by: Roger Quadros <rogerq@ti.com>
> > > Signed-off-by: Suman Anna <s-anna@ti.com>
> > > ---
> > > 
> > > The following error message is seen without this:
> > > [    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
> > > [    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22
> > > 
> > > regards
> > > Suman
> > > 
> > >   arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > index 50f4be2047a9..68b3f954f1d1 100644
> > > --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > @@ -68,6 +68,7 @@
> > >   			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
> > >   			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
> > >   			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
> > > +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
> > >   			 /* MCUSS Range */
> > >   			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> > >   			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
> > > -- 
> > > 2.21.0
> > > 
> > 
> > Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
> > of early rc fixes please.
> > 
> > Acked-by: Nishanth Menon <nm@ti.com>
> 
> Hmm, what is the failure this causes, except the probe message? SRAM driver
> obviously won't work but is it used for anything at the moment anyways?
> 
> I would rather queue this towards 5.3.

Yes, this should be good enough for 5.3

-- 
Regards,
Nishanth Menon
