Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA8EFA5861
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 15:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729832AbfIBNvV convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 2 Sep 2019 09:51:21 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:40687 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729823AbfIBNvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 09:51:21 -0400
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4FE5EFF80E;
        Mon,  2 Sep 2019 13:51:14 +0000 (UTC)
Date:   Mon, 2 Sep 2019 15:51:13 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
Message-ID: <20190902155113.40b00fa0@xps13>
In-Reply-To: <20190902044231.GA17348@bogus>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
        <20190830210607.22644-2-miquel.raynal@bootlin.com>
        <20190902044231.GA17348@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for the review, one question below.

Rob Herring <robh@kernel.org> wrote on Mon, 02 Sep 2019 14:39:09 +0100:

> On Fri, Aug 30, 2019 at 11:06:06PM +0200, Miquel Raynal wrote:
> > Document the logicPD I2S FPGA block bindings in yaml.
> > 
> > Syntax verified with dt-doc-validate.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > new file mode 100644
> > index 000000000000..cbff641af199
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
> > +
> > +maintainers:
> > +  - Miquel Raynal <miquel.raynal@bootlin.com>
> > +
> > +description: |
> > +  The IP supports I2S playback/capture audio. It acts as a slave and
> > +  clocks should come from the codec. It only supports two channels and
> > +  S16_LE format.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: xlnx,logicpd-i2s
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description:
> > +      Base address and size of the IP core instance.
> > +
> > +  interrupts:
> > +    minItems: 1
> > +    maxItems: 2
> > +    items:
> > +      - description: tx interrupt
> > +      - description: rx interrupt
> > +    description:
> > +      Either the Tx interruption or the Rx interruption or both.  
> 
> The schema says either tx or both. Doesn't really matter here as it's 
> just numbers.

I see , I'll drop the 'items' entry.

> 
> > +
> > +  interrupt-names:
> > +    minItems: 1
> > +    maxItems: 2
> > +    items:
> > +      - const: tx
> > +      - const: rx  
> 
> But here it does matter.
> 
> The easiest way to express this is:
> 
> oneOf:
>   - items:
>       - enum: [ tx, rx ]
>   - items:
>       - const: tx
>       - const: rx
> 

Does this enforce an order? (I don't know if it matters, though, but in
the bellow example I put the Rx interrupt first).

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupts-controller
> > +
> > +examples:
> > +  - |
> > +    logii2s_dai: logii2s-dai@43c10000 {
> > +        reg = <0x43c10000 0x1000>;
> > +        compatible = "xlnx,logicpd-i2s-dai";
> > +        interrupt-parent = <&intc>;
> > +        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>, <0 30 IRQ_TYPE_LEVEL_HIGH>;
> > +        interrupt-names = "rx", "tx";
> > +    };
> > -- 
> > 2.20.1
> >   
> 

Thanks,
Miquèl
