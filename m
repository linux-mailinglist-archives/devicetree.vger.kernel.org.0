Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 562C22FA4C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 16:32:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405692AbhARPcA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 18 Jan 2021 10:32:00 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:42272 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405757AbhARP05 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 10:26:57 -0500
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 3AA3E3AE39F
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 15:26:14 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from xps13 (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E713DFF813;
        Mon, 18 Jan 2021 15:25:09 +0000 (UTC)
Date:   Mon, 18 Jan 2021 16:25:08 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PATCH v4 1/6] dt-bindings: i3c: Convert controller description
 to yaml
Message-ID: <20210118162508.2f2079da@xps13>
In-Reply-To: <20210115170312.GA1434283@robh.at.kernel.org>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com>
        <20210114175558.17097-2-miquel.raynal@bootlin.com>
        <20210115170312.GA1434283@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> > +      reg:
> > +        items:
> > +          - description: |
> > +              1st cell
> > +              ========
> > +
> > +              I2C address. 10 bit addressing is not supported. Devices with
> > +              10-bit address can't be properly passed through DEFSLVS command.
> > +
> > +              2nd cell
> > +              ========
> > +
> > +              Should be 0.
> > +
> > +              3rd cell
> > +              ========
> > +
> > +              Shall encode the I3C LVR (Legacy Virtual Register):
> > +              bit[31:8]: unused/ignored
> > +              bit[7:5]: I2C device index. Possible values:
> > +                * 0: I2C device has a 50 ns spike filter
> > +                * 1: I2C device does not have a 50 ns spike filter but supports
> > +                     high frequency on SCL
> > +                * 2: I2C device does not have a 50 ns spike filter and is not
> > +                     tolerant to high frequencies
> > +                * 3-7: reserved
> > +              bit[4]: tell whether the device operates in FM (Fast Mode) or
> > +                      FM+ mode:
> > +                * 0: FM+ mode
> > +                * 1: FM mode
> > +              bit[3:0]: device type
> > +                * 0-15: reserved  
> 
> We can do a bit better:
> 
> reg:
>   items:
>     - items:  # Note: drop the '-' if we support more than 1 entry
>         - description: I2C address...
>           maximum: 0x7f  # Not sure this works, do we support the high 
>                          # flag bits here?
>         - const: 0
>         - description: I3C LVR (Legacy Virtual Register)...

I definitely think that it is a good move to properly define the fact
that we can accept only a single reg entry with three cells -and their
content, overall-, but this syntax does not work and I really don't find
the right way to describe it.

The error I get is:

---8<---
       reg:
         items:
           - items:
               - description: first item
               - description: second item
--->8---

schemas/i3c/i3c.yaml: ignoring, error in schema: patternProperties: @[0-9a-f]+$: properties: reg
<path>/i3c.yaml: patternProperties:@[0-9a-f]+$:properties:reg: 'anyOf' conditional failed, one must be fixed:
	'maxItems' is a required property
	'items' is not one of ['maxItems', 'description', 'deprecated']
	'items' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'default', '$ref']
	<path>/i3c.yaml: patternProperties:@[0-9a-f]+$:properties:reg:items: 'oneOf' conditional failed, one must be fixed:
		[{'items': [{'description': 'first item'}, {'description': 'second item'}]}] is not of type 'object'
		'items' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'default', '$ref']

I tried defining a phandle array, playing with the dashes, using allOf,
adding maxItems, none of it worked so far so any advice will be highly
appreciated!

Thanks,
Miquèl
