Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB3EF7248FD
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 18:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231429AbjFFQYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 12:24:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231700AbjFFQYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 12:24:10 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DCBD171A
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 09:23:34 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686068613;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jmZpdXlMp5uDwoWVTcrxVkLUK6iiazTIo6P0BWoSqI4=;
        b=orBUTnTXiEgUwoeeJi0ZPXGNg69S03p5BoFJQ7yvl0Dn3n5DiYt9CyeZAU0DYH8+XtVzhH
        SC+1XHiudL4icq2bLqAz+gB93QQpRkZi70u6CiG7xtl8WZOX15XrCObo81I4NOJ7SXQjvj
        XzxMfYdDBR55hkrhfKcU5v3jMw3fq5YX6s4QzB0KyU+J5WVeVrthdr3yP5IICaHHIUkHSn
        X+BlPtuqG1btFFbR0PnLPfq3pL8wXpD6nLXCU6QdIvX5szC4XFM8PIVOysVJVmmGZD+doC
        D8SQYN6e87MMoAVjtuXj5o/fiYjzda5aLqIE0oiggSDkNiOLminK75WHu4EE8Q==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id AB2A2C000A;
        Tue,  6 Jun 2023 16:23:29 +0000 (UTC)
Date:   Tue, 6 Jun 2023 18:23:28 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/3] Fix a couple of missing unevaluated properties
Message-ID: <20230606182328.2ac7f0da@xps-13>
In-Reply-To: <20230606103057.137711-1-miquel.raynal@bootlin.com>
References: <20230606103057.137711-1-miquel.raynal@bootlin.com>
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

Hello,

miquel.raynal@bootlin.com wrote on Tue,  6 Jun 2023 12:30:54 +0200:

> As discussed with Krzysztof and Chris, it seems like each NAND
> controller binding should actually explicitely list all the allowed
> properties in a schema and use "unevaluatedProperties: false" in both
> the NAND controller and the NAND chip sections. While this restriction
> always applied on the controller side, this was not enforced on the
> chips side AFAIR.
>=20
> Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@li=
naro.org/

The discussion pointed above has lead to another observation which also
needs to be fixed in this series. A v2 is coming soon.

> While converting Marvell controller bindings, Chris explicitely pointed
> similar bindings which would also trigger errors when using
> "unevaluatedProperties: false" because of the reg/partitions/etc
> properties not being described. Here is an attempt at making these more
> precise and robust.
>=20
> These change made me realize the qcom,boot-partition property
> description was broken, so here is a fix for it.
>=20
> Thanks,
> Miqu=C3=A8l
>=20
> Miquel Raynal (3):
>   dt-bindings: mtd: qcom: Fix a property position
>   dt-bindings: mtd: qcom: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: ingenic: Prevent NAND chip unevaluated properties
>=20
>  .../devicetree/bindings/mtd/ingenic,nand.yaml | 11 +++++
>  .../devicetree/bindings/mtd/qcom,nandc.yaml   | 47 ++++++++++++-------
>  2 files changed, 42 insertions(+), 16 deletions(-)
>=20


Thanks,
Miqu=C3=A8l
