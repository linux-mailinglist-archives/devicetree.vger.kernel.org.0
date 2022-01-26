Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D70D049C87C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 12:19:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240595AbiAZLTD convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 26 Jan 2022 06:19:03 -0500
Received: from relay11.mail.gandi.net ([217.70.178.231]:35717 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240606AbiAZLTC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 06:19:02 -0500
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 8435B10000A;
        Wed, 26 Jan 2022 11:18:56 +0000 (UTC)
Date:   Wed, 26 Jan 2022 12:18:55 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Pratyush Yadav <p.yadav@ti.com>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        linux-spi@vger.kernel.org
Subject: Re: [PATCH v4 2/3] spi: dt-bindings: Describe stacked/parallel
 memories modes
Message-ID: <20220126121855.1139be2d@xps13>
In-Reply-To: <CAL_Jsq+1X1V8UUHgfKaSbhZLtche3bqnCj62jFRVWzQLEc3hng@mail.gmail.com>
References: <20211210201039.729961-1-miquel.raynal@bootlin.com>
        <20211210201039.729961-3-miquel.raynal@bootlin.com>
        <YbjVSNAC8M5Y1nHp@robh.at.kernel.org>
        <20211216160226.4fac5ccc@xps13>
        <CAL_Jsq+1X1V8UUHgfKaSbhZLtche3bqnCj62jFRVWzQLEc3hng@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> > It seemed like the only possible way (that the tooling would validate)
> > was to use:
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint64-matrix
> >
> > So I assumed I was defining a matrix of AxB elements, where A is the
> > number of devices I want to "stack" and B is the number of values
> > needed to describe its size, so 1.  
> 
> Yeah, that's well reasoned and I agree. The other array case is you
> have N values where each value represents different data rather than
> instances of the same data. The challenge is for the schema fixups to
> recognize which is which without saying the schema must look like
> exactly X or Y as there will be exceptions.

Ok, now I see the problem on the tooling side and why you chose not to
use this syntax.

> > I realized that the following example, which I was expecting to work,
> > was failing:
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint64-array
> > dt:             <property> = <uint64>, <uint64>;
> >
> > Indeed, as you propose, this actually works but describes two values
> > (tied somehow) into a single element, which is not exactly what I
> > wanted:
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint64-array
> > dt:             <property> = <uint64 uint64>;
> >
> > But more disturbing, all the following constructions worked, when using
> > 32-bits values instead:
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint32-array
> > dt:             <property> = <uint32 uint32>;
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint32-array
> > dt:             <property> = <uint32>, <uint32>;
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint32-matrix
> > dt:             <property> = <uint32 uint32>;
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint32-matrix
> > dt:             <property> = <uint32>, <uint32>;  
> 
> That works because there's some really ugly code to transform the
> schema into both forms.

Good to know, this kind of puzzled me when I tried all the
configurations :)

> > I am fine waiting a bit if you think there is a need for some tooling
> > update on your side. Otherwise, do you really think that this solution
> > is the one we should really use?
> >
> > bindings:       $ref: /schemas/types.yaml#/definitions/uint64-array
> > dt:             <property> = <uint64 uint64>;  
> 
> Because of the /bits/ issue, yes.
> 
> More importantly, the bracketing in dts files is not going to matter
> soon (from a validation perspective). I'm working on moving validation
> from using the yaml encoded DT (which depends on and preserves
> brackets) to using dtbs. This will use the schemas to decode the
> property values into the right format/type.

Ok.

Well, thanks for the feedback, with the latest dt-schema the tooling
now validates the binding so I am going to send it as a v6 to collect
your Ack.

Thanks,
Miquèl
