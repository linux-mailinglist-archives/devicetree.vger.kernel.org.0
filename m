Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DD59731B99
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 16:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238390AbjFOOmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 10:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241121AbjFOOmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 10:42:38 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BC742736
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 07:42:37 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686840155;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=0K8cXZkK+l8uDUs0DhDuBAI7qdSdHAj71GuwPplKllw=;
        b=SIe55KkL2sWApd9Kwvy9AeiqaoHVMaaEZcll/41FnvbxxBxOdH6RVvgnVaHpXB/0VucUoH
        eNN08KX7sgqQCi608l9D5qgHPQyz2bhle2YHXuh/WCvxQ87+y6Qw7R0Cst0CgewxAi24Tc
        8UAHxby1F3LxzRqpc5/8KVBnUrfZQ7uy7rVOOe7QuV7RQvBQ0SPMwjt6Mm8ZPd66x80gAX
        a92VuGhX+AzXuGGlrch05zXXfkV7mm8Kc9bNm/FaTLLZPjpzuGgSf/gUjFzcqbzn1fIS/1
        yK8w0qYfhwrPigEaY1vUu+lILHto3MKTzzYM4x2CT+htBFzzcr99EKtwZD4ugQ==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8B246C0009;
        Thu, 15 Jun 2023 14:42:34 +0000 (UTC)
Date:   Thu, 15 Jun 2023 16:42:33 +0200
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
Subject: Re: [PATCH 1/2] dt-bindings: mtd: spi-nor: Document sst26vf0xxb
 flash series
Message-ID: <20230615164233.51a87cbd@xps-13>
In-Reply-To: <d816499e-baab-6200-0780-17a8205b252e@linaro.org>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
        <20230609144324.850617-2-miquel.raynal@bootlin.com>
        <d816499e-baab-6200-0780-17a8205b252e@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tudor,

tudor.ambarus@linaro.org wrote on Mon, 12 Jun 2023 11:00:03 +0100:

> On 6/9/23 15:43, Miquel Raynal wrote:
> > Add compatibles for the sst26vf0{40,80,16,32,64}b flash devices.
> >=20
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b=
/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > index 7149784a36ac..5a788a429b0d 100644
> > --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > @@ -25,7 +25,7 @@ properties:
> >                (mxicy|macronix),mx25l(4005a|1606e|6405d|8005|12805d|256=
35e)|\
> >                (mxicy|macronix),mx25u(4033|4035)|\
> >                (spansion,)?s25fl(128s|256s1|512s|008k|064k|164k)|\
> > -              (sst|microchip),sst25vf(016b|032b|040b)|\
> > +              (sst|microchip),sst(25|26)vf(008|016|032|040|064)b|\ =20
>=20
> We don't add new compatibles to this list, one should instead use the
> generic jedec,spi-nor compatible. Please drop this patch.

Sure. I'll propose a patch to clarify this point in the bindings to
help future-myself.

>=20
> >                (sst,)?sst26wf016b|\
> >                (sst,)?sst25wf(040b|080)|\
> >                winbond,w25x(80|32)|\ =20


Thanks,
Miqu=C3=A8l
