Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDF2772CC07
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 19:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235459AbjFLRGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 13:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234238AbjFLRGk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 13:06:40 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1CEFE7E
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 10:06:33 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686589591;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HQBc3fhdsVp5qzH3qA/+QTN+oL4mlTTyS8nfMMlKL1M=;
        b=GrMQJJF42taq7fRwipCnc6tPQTRxB15dXVKh4N+qUV427ePamLeuuw2gHyPgo3FCu1juSN
        eIZDbMjgwSgq7iad/iccPsXergkpUPECDuuRc8LJEdhPfROQnLPgaMqK9qTfKUbw3taLLz
        z4PdhPMNki4ox4CfUsBDPNEtVTdX3m+4J20TqycmP73d+Okj68IrqekS1OHgenvczkrYT9
        jQIxieYVZLsN7LEx0zbfmd+en0uzQSOKFLv6OOxuH43q0D5PpBHjcjJC70bRMiWtea7mSQ
        ImqZDJyz0/xuITY7aL45BZW5BqBX9+ul34H0DHLj+6PBGYVmyEkkkRAX+Lhgkg==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 029EAFF807;
        Mon, 12 Jun 2023 17:06:28 +0000 (UTC)
Date:   Mon, 12 Jun 2023 19:06:26 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Tudor Ambarus <tudor.ambarus@linaro.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/2] mtd: spi-nor: Support for another sst flash
Message-ID: <20230612190626.7a6ee8d6@xps-13>
In-Reply-To: <b5c403ad-f8d2-5f00-e345-ef412a706544@linaro.org>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
        <b5c403ad-f8d2-5f00-e345-ef412a706544@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tudor,

tudor.ambarus@linaro.org wrote on Mon, 12 Jun 2023 11:03:55 +0100:

> On 6/9/23 15:43, Miquel Raynal wrote:
> > Hello Tudor, =20
>=20
> Hi, Miquel!
>=20
> >=20
> > Here are a couple of patches adding support for the sst26vf032b spi-nor,
> > nothing specific here. I hope I ran all the required tests correctly,
> > otherwise let me know. =20
>=20
> The tests are fine, thanks. I think it's debatable whether we include
> the output of the tests in the commit message or in the comments section
> below the --- line, but I'm fine either way.

I have a slight preference to have them in the commit log, this way
they are part of the git history and easier to find. But I agree, since
we now have well tracked mailing lists, my concerns might slowly go
away.

> I had some comments for the patches, I'll let you read them.

Yep, I'll make additional tests and see what I can come up with.

> Cheers,
> ta
> >=20
> > Cheers,
> > Miqu=C3=A8l
> >=20
> > Miquel Raynal (2):
> >   dt-bindings: mtd: spi-nor: Document sst26vf0xxb flash series
> >   mtd: spi-nor: Add support for sst26vf032b flash
> >=20
> >  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
> >  drivers/mtd/spi-nor/sst.c                                | 4 ++++
> >  2 files changed, 5 insertions(+), 1 deletion(-)
> >  =20


Thanks,
Miqu=C3=A8l
