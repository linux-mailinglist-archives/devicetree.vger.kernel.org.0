Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF73475BEE
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:37:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243971AbhLOPhD convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 15 Dec 2021 10:37:03 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:37781 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243796AbhLOPhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:37:02 -0500
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id C644320000E;
        Wed, 15 Dec 2021 15:36:58 +0000 (UTC)
Date:   Wed, 15 Dec 2021 16:36:57 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Pratyush Yadav <p.yadav@ti.com>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
        Magnus Damm <magnus.damm@gmail.com>,
        Gareth Williams <gareth.williams.jx@renesas.com>,
        Phil Edworthy <phil.edworthy@renesas.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v3 1/4] dt-bindings: mtd: rzn1: Describe Renesas RZ/N1
 NAND controller
Message-ID: <20211215163657.0ae52a78@xps13>
In-Reply-To: <YbjxrFyfIz8Qydpb@robh.at.kernel.org>
References: <20211209143228.525234-1-miquel.raynal@bootlin.com>
        <20211209143228.525234-2-miquel.raynal@bootlin.com>
        <YbjxrFyfIz8Qydpb@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> > +  clock-names:
> > +    items:
> > +      - const: nand_hclk
> > +      - const: nand_eclk  
> 
> 'nand_' is redundant.

Actually the nand_ prefix was voluntary to be consistent with the
specification which called these two clocks NAND_HCLK and NAND_EXLK.
But whatever, I'll change the names.

> > +  "#address-cells": true
> > +  "#size-cells": true
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +
> > +additionalProperties: true  
> 
> unevaluatedProperties: false

Not sure why I proposed this property in the first place. I'll correct.

Thanks,
Miquèl
