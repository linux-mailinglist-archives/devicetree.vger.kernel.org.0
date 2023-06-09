Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17AC872935E
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240978AbjFIIhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:37:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240979AbjFIIhd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:37:33 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB3E34223
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:36:58 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686299809;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=a1eY5GTnPw+xhSBGqh+ImXa9pURJfbwTwAGOSZRd94M=;
        b=An+in9OvQ9JsndWXNv5l+3JCLSEaeOgvoiA8F/nTrD2dvT9jzP2lb71VyS6m9X9gZ65Uf2
        z67aa8dShB3by9Fv4UuH0qS5WDgcPZXw/+Rf+bh9tnYcqPAs8OrIsea6PWQxFy4iZPDrPI
        8azZrp93E6W2E4lBywflY6RL/7a2lfq3gmXYNkUxG3nk4PiehmEKFnhhxJiG2d2+pa7zqy
        mdVOfuj7xwXC12LvJuv7U/II+EoVC5EreDoed9QrR0C1gj6N3d7MHB6qMW08iDj/mZta1T
        78Pm5xB5zm5raSz3pDIGBwYqsUQW1f185ltRJdp0GimNy+l+aHJgda/PgfdXIA==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6D28A1C0006;
        Fri,  9 Jun 2023 08:36:47 +0000 (UTC)
Date:   Fri, 9 Jun 2023 10:36:44 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Pratyush Yadav <pratyush@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Walle <michael@walle.cc>,
        Paul Cercueil <paul@crapouillou.net>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2 07/17] dt-bindings: mtd: ingenic: Prevent NAND chip
 unevaluated properties
Message-ID: <20230609103644.5924186c@xps-13>
In-Reply-To: <20230608152041.GA2702460-robh@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <20230606175246.190465-8-miquel.raynal@bootlin.com>
        <168607750937.1468225.8457774415279003681.robh@kernel.org>
        <20230607113314.5da62276@xps-13>
        <20230608152041.GA2702460-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

robh@kernel.org wrote on Thu, 8 Jun 2023 09:20:41 -0600:

> On Wed, Jun 07, 2023 at 11:33:14AM +0200, Miquel Raynal wrote:
> > Hi Rob,
> >=20
> > robh@kernel.org wrote on Tue, 06 Jun 2023 12:52:00 -0600:
> >  =20
> > > On Tue, 06 Jun 2023 19:52:36 +0200, Miquel Raynal wrote: =20
> > > > List all the possible properties in the NAND chip as per the exampl=
e and
> > > > set unevaluatedProperties to false in the NAND chip section.
> > > >=20
> > > > Cc: Paul Cercueil <paul@crapouillou.net>
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/mtd/ingenic,nand.yaml | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >    =20
> > >=20
> > > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_ch=
eck'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > >=20
> > > yamllint warnings/errors:
> > >=20
> > > dtschema/dtc warnings/errors:
> > > ./Documentation/devicetree/bindings/mtd/ingenic,nand.yaml: Unable to =
find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-c=
hip.yaml =20
> >=20
> > It seems like your automated tooling failed to apply the second patch
> > in this series (creating raw-nand-chip.yaml). It says "sha1 information
> > is lacking or useless". This work is based on a recent -rc so I'm not
> > sure what is "lacking or useless" in this case. =20
>=20
> The base used is rc1.

Ack.

>=20
> > Anyway, do you plan to give this series a look anyway? Or should I
> > rebase against a specific branch? =20
>=20
> Yes, I'll leave it in the queue. I'm just getting back after being out a=
=20
> month.

Sure. Good luck with your month-old backlog :)

Thanks,
Miqu=C3=A8l
