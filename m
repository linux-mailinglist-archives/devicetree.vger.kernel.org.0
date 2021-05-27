Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A83F392BC4
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 12:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236091AbhE0K1z convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 27 May 2021 06:27:55 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:37305 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236112AbhE0K1v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 06:27:51 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id A2A7F60010;
        Thu, 27 May 2021 10:26:12 +0000 (UTC)
Date:   Thu, 27 May 2021 12:26:06 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 08/19] dt-binding: memory: pl353-smc: Fix the reg
 property in the example
Message-ID: <20210527122606.48beb3e6@xps13>
In-Reply-To: <20210521015535.GA2483864@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
        <20210519182636.1110080-9-miquel.raynal@bootlin.com>
        <20210521015535.GA2483864@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Rob Herring <robh@kernel.org> wrote on Thu, 20 May 2021 20:55:35 -0500:

> On Wed, May 19, 2021 at 08:26:25PM +0200, Miquel Raynal wrote:
> > The reg property should describe the entire accessible zone, not only
> > the one the driver wants to access. With this in mind, the example
> > should map two regions instead of one to be entirely accurate.  
> 
> No, not really. The address space is already covered by 'ranges'. Unless 
> you need the range in the arm,pl353-smc-r2p1 driver.

Thanks for the clarification, I didn't understand the range property
correctly then.

This extra region should not be accessed from the SMC driver so I'll
drop the extra changes.

> 
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../devicetree/bindings/memory-controllers/pl353-smc.txt       | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> > index 1335b94291ad..9d220d4cb39d 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> > +++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> > @@ -27,7 +27,8 @@ Example:
> >  		compatible = "arm,pl353-smc-r2p1", "arm,primecell";
> >  		clock-names = "memclk", "apb_pclk";
> >  		clocks = <&clkc 11>, <&clkc 44>;
> > -		reg = <0xe000e000 0x1000>;
> > +		reg = <0xe000e000 0x0001000>,
> > +		      <0xe1000000 0x5000000>;
> >  		#address-cells = <2>;
> >  		#size-cells = <1>;
> >  		ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
> > -- 
> > 2.27.0
> >   

Thanks,
Miquèl
