Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E719F2F6886
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 19:01:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725946AbhANR4f convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 12:56:35 -0500
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:54983 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726743AbhANR4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 12:56:35 -0500
X-Originating-IP: 86.201.233.230
Received: from xps13 (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 96DCBE0004;
        Thu, 14 Jan 2021 17:55:52 +0000 (UTC)
Date:   Thu, 14 Jan 2021 18:55:51 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: i3c: Describe Silvaco master
 binding
Message-ID: <20210114185551.5a4ef35d@xps13>
In-Reply-To: <20210111200821.GA2978830@robh.at.kernel.org>
References: <20201228161107.11804-1-miquel.raynal@bootlin.com>
        <20201228161107.11804-3-miquel.raynal@bootlin.com>
        <20210111200821.GA2978830@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> > +properties:
> > +  compatible:
> > +    const: silvaco,i3c-master  
> 
> Kind of generic. Only 1 version?

I appended a -v1 because I have no clue of the numbering neither if
more versions will actually come.

[...]

> > +
> > +  clocks:
> > +    items:
> > +      - description: pclk, the system clock
> > +      - description: fast_clk, for the bus
> > +      - description: slow_clk, for other events  
> 
> The names of the clocks go...

Issues corrected.

[...]

> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0  
> 
> This 2 should be defined by a bus binding. Care to convert i3c.txt?

Please see v4 of this series, which includes a converstion attempt to
i3c.yaml. I am far from comfortable with yaml schema but, let's see
what you think.

Thanks,
Miquèl
