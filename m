Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A342734C00
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 08:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjFSG7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 02:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbjFSG7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 02:59:15 -0400
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE561AC
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:59:12 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687157950;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Y1KdaauZRk96Ps44rUmpp7eWpG6S5yUxJCxmfYf6qgM=;
        b=ZzcjdfySthabM0zwwHRt1qjl5uHoBJyBFM3a9KGwn4wmcEgpXqz7RoiRfUc3aaoWzPKPLM
        kYCaHQXaMTFzt+56IoAZJ2CIwyeQ8NnBwsm5nt3fxqMlnfJooKNiSkxa9DF2YQIwizBIkp
        ElV4CwsedGEeLQtYM4DK22tQ/JeF8g8agIlgjxqIpaEHJ385URefEz09+mk+5sCg5/tiyG
        KffZMbLAmIy1jrPns2MU3S4Fo61BHOcYDw4lIbRrVlvFnHZF91leRj5UzAAqrS+nK2QIhb
        479hBJsQcBD3cpiGAf7ADVY8WyEEzcDO/dphmff7/pRV6rYIXyPgjerlDkwJbw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B0FA5E000D;
        Mon, 19 Jun 2023 06:59:08 +0000 (UTC)
Date:   Mon, 19 Jun 2023 08:59:07 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 02/17] dt-bindings: mtd: Create a file for raw NAND
 chip properties
Message-ID: <20230619085907.70218553@xps-13>
In-Reply-To: <f7218445-77e7-7429-5d81-ee7380a3e045@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <20230606175246.190465-3-miquel.raynal@bootlin.com>
        <f7218445-77e7-7429-5d81-ee7380a3e045@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

krzk@kernel.org wrote on Mon, 19 Jun 2023 08:28:28 +0200:

> On 06/06/2023 19:52, Miquel Raynal wrote:
> > In an effort to constrain as much as we can the existing binding, we
> > want to add "unevaluatedProperties: false" in all the NAND chip
> > descriptions part of NAND controller bindings. But in order to do that
> > properly, we also need to reference a file which contains all the
> > "allowed" properties. Right now this file is nand-chip.yaml but in
> > practice raw NAND controllers may use additional properties in their
> > NAND chip children node. These properties are listed under
> > nand-controller.yaml, which makes the "unevaluatedProperties" checks
> > fail while the description are valid. We need to move these NAND chip
> > related properties into another file, because we do not want to pollute
> > nand-chip.yaml which is also referenced by eg. SPI-NAND devices.
> >=20
> > Let's create a raw-nand-chip.yaml file to reference all the properties a
> > raw NAND chip description can contain. The chain of inheritance becomes:
> >   nand-controller.yaml <- raw-nand-chip.yaml
> >   raw-nand-chip.yaml   <- nand-chip.yaml
> >   spi-nand.yaml        <- nand-chip.yaml =20
>=20
> ...
>=20
> > -  The interpretation of these parameters is implementation-defined, so
> > -  not all implementations must support all possible
> > -  combinations. However, implementations are encouraged to further
> > -  specify the value(s) they support.
> > -
> >  properties:
> >    $nodename:
> >      pattern: "^nand-controller(@.*)?"
> > @@ -51,79 +41,8 @@ properties:
> > =20
> >  patternProperties:
> >    "^nand@[a-f0-9]$":
> > -    $ref: "nand-chip.yaml#" =20
>=20
> You work on some old tree, judging by email addresses you CC and by
> this. I would expect here current next, but this is even pre v6.4-rc1!
> Working on something older than current master branch doss not make any
> sense.

This is really based on v6.4-rc1, I think Rob's tooling is applying the
patches against -rc1 so I try to keep the robots happy by picking that
tag as base. I know you are removing the quotes so I went through my
series and dropped them from all the files which now reference
raw-nand-chip.yaml, but of course I missed that one, I am sorry, I will
drop the quotes here as well.

Thanks,
Miqu=C3=A8l
