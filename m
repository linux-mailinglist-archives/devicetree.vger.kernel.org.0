Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7955F2FA764
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 18:22:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436513AbhARRWL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 18 Jan 2021 12:22:11 -0500
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:60767 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406875AbhARRWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 12:22:05 -0500
X-Greylist: delayed 6969 seconds by postgrey-1.27 at vger.kernel.org; Mon, 18 Jan 2021 12:22:05 EST
X-Originating-IP: 86.201.233.230
Received: from xps13 (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id EB838FF806;
        Mon, 18 Jan 2021 17:21:18 +0000 (UTC)
Date:   Mon, 18 Jan 2021 18:21:17 +0100
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
Message-ID: <20210118182117.311feb44@xps13>
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

Just another question.

> > +patternProperties:
> > +  "^.*@[0-9a-f]+$":  
> 
> You can drop '^.*':
> 
> "@[0-9a-f]+$"

Here you advise to drop the beginning + wildcard of the regex matching
for I2C children, which indeed makes sense to me.

[...]

> > +  "^.*@[0-9a-f]+,[0-9a-f]+$":

Later in the file, we use another regex to match I3C devices. But here
if I drop ^.* from the regex, I get the following error:

schemas/i3c/i3c.yaml: ignoring, error in schema: patternProperties: @[0-9a-f]+,[0-9a-f]+$
<path>/i3c.yaml: patternProperties:@[0-9a-f]+,[0-9a-f]+$: 'oneOf' conditional failed, one must be fixed:
	Additional properties are not allowed ('properties', 'required' were unexpected)
	<path>/i3c.yaml: patternProperties:@[0-9a-f]+,[0-9a-f]+$: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
	Additional properties are not allowed ('properties', 'required', 'type' were unexpected)
	<path>/i3c.yaml: patternProperties:@[0-9a-f]+,[0-9a-f]+$: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
	'boolean' was expected

I can keep this extra "^.*" but I would like to understand the error
better because this does not look right.

Thanks,
Miquèl
