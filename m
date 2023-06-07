Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3B272567F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 09:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233778AbjFGHzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 03:55:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238101AbjFGHyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 03:54:39 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF5E1FC7
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 00:53:29 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686124408;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=YcLRZhDifkjO9el4TbmvvBrGVYIDPPuPnUdWOdVzOlc=;
        b=bsUNg6sge6L1MvYN7SL9TM4wSWi11Ohh/2Zvqnb5kpaZfcySdP8scKqX2oAVVaIZ8cbUnO
        LBbtOp3OQxUJ5iNHpKi7jcHY2lpDAOUPwlQlnA0VP+abt/iHuXSbX1Eosdn03MKylQQHY5
        bIwO3/qAT+59Qk1DIsZ97LnevKPzXq80lhB4mbN3siqn0ACNM+UxW1g7vcaL+VKghA5gCD
        fmutkzZTuafujRw0zD93ZKQQOnEjUAbP3KmAcDurl/sLr+bi7COGh22OFJTwP0nt46WjTA
        K8x2v4sgM+J0+6VlNRKgx1Nv9QTEtjZbBV6fsbtnvV1zFMyYGIst6FPGt3J8xA==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 60F29240005;
        Wed,  7 Jun 2023 07:53:25 +0000 (UTC)
Date:   Wed, 7 Jun 2023 09:53:25 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        "Michael Walle" <michael@walle.cc>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v2 06/17] dt-bindings: mtd: qcom: Prevent NAND chip
 unevaluated properties
Message-ID: <20230607095325.36cacdc1@xps-13>
In-Reply-To: <6bfc7652-ab2b-3a22-8ef7-7ba421eb4d93@alliedtelesis.co.nz>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <20230606175246.190465-7-miquel.raynal@bootlin.com>
        <6bfc7652-ab2b-3a22-8ef7-7ba421eb4d93@alliedtelesis.co.nz>
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

Hi Chris,

Chris.Packham@alliedtelesis.co.nz wrote on Tue, 6 Jun 2023 22:27:23
+0000:

> On 7/06/23 05:52, Miquel Raynal wrote:
> > List all the possible properties in the NAND chip as per the example and
> > set unevaluatedProperties to false in the NAND chip section.
> >
> > Cc: Manivannan Sadhasivam <mani@kernel.org>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >   Documentation/devicetree/bindings/mtd/qcom,nandc.yaml | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Do=
cumentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > index 7217d8a64d14..581973f452ff 100644
> > --- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > @@ -34,7 +34,9 @@ properties:
> >   patternProperties:
> >     "^nand@[a-f0-9]$":
> >       type: object
> > +    $ref: raw-nand-chip.yaml
> >       properties:
> > +
> >         nand-bus-width:
> >           const: 8
> >  =20
> > @@ -61,6 +63,8 @@ patternProperties:
> >  =20
> >             Refer to the ipq8064 example on how to use this special bin=
ding.
> >  =20
> > +    unevaluatedProperties: false
> > +
> >   allOf:
> >     - $ref: "nand-controller.yaml#"
> >    =20
>=20
> This doesn't appear to be working as intended. If I add the following
>=20
> diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml=20
> b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> index 581973f452ff..7a910a62c7b8 100644
> --- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> +++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> @@ -220,6 +220,7 @@ examples:
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 partition@0 {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 label =3D "boot-nand";
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg =3D <0 0x58a0000>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nonsense;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 };
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 partition@58a0000 {
>=20
>=20
> Then I'd expect to get a complaint from `make mrproper; make=20
> DT_CHECKER_FLAGS=3D-m dt_binding_check DT_SCHEMA_FILES=3Dqcom,nandc.yaml`=
=20
> but it seems to let this through.

I am just fixing the NAND chip node while this is a partition node. We
need to constrain more all the schemas, let's start with the beginning
:)

Thanks,
Miqu=C3=A8l
