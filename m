Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C18C438AC3C
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 13:34:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239639AbhETLgB convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 20 May 2021 07:36:01 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:53435 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241419AbhETLdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 07:33:22 -0400
X-Greylist: delayed 61521 seconds by postgrey-1.27 at vger.kernel.org; Thu, 20 May 2021 07:33:22 EDT
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B1C6CFF80D;
        Thu, 20 May 2021 11:31:56 +0000 (UTC)
Date:   Thu, 20 May 2021 13:31:55 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Michael Walle <michael@walle.cc>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 10/19] dt-binding: memory: pl353-smc: Convert to
 yaml
Message-ID: <20210520133155.02700d2c@xps13>
In-Reply-To: <fd29436201e8e5932a8a027472f1064a@walle.cc>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
        <20210519182636.1110080-11-miquel.raynal@bootlin.com>
        <fd29436201e8e5932a8a027472f1064a@walle.cc>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michael,

Michael Walle <michael@walle.cc> wrote on Thu, 20 May 2021 13:09:05
+0200:

> Am 2021-05-19 20:26, schrieb Miquel Raynal:
> [..]
> 
> > +examples:
> > +  - |
> > +    smcc: memory-controller@e000e000 {
> > +      compatible = "arm,pl353-smc-r2p1", "arm,primecell";
> > +      reg = <0xe000e000 0x0001000>,
> > +            <0xe1000000 0x5000000>;
> > +      clock-names = "memclk", "apb_pclk";
> > +      clocks = <&clkc 11>, <&clkc 44>;
> > +      ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
> > +                0x1 0x0 0xe2000000 0x2000000 /* SRAM/NOR CS0 region */
> > +                0x2 0x0 0xe4000000 0x2000000>; /* SRAM/NOR CS1 region > */
> > +      #address-cells = <2>;
> > +      #size-cells = <1>;
> > +
> > +      nand0: nand-controller@0,0 {  
> 
> what about nfc (or nfc0) here? If I use this reference on my board it
> looks kinda odd:

While the node name (nand-controller@) is fixed, the label IIRC is
totally arbitrary, so any string here should do the trick. I agree that
nand0 is rather confusing and I don't like it much, just kept that for
legacy reasons (many DT declare the NAND controller and label it
"nand"). I'm fine changing that to nfc0 though, I'll update the
example.

> 
> &nand {
>         status = "okay";
> 
>         nand@0 {
>                 reg = <0>;
>                 nand-use-soft-ecc-engine;
>                 nand-ecc-algo = "bch";
>         };
> };
> 
> -michael

Thanks,
Miquèl
