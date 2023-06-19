Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEAA0734C44
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 09:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjFSHTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 03:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjFSHTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 03:19:15 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6D6CE4
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 00:19:13 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687159152;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=k1veaGQ2wOdpEaAy0NCuYfkXutrbxrLHWI4Iiw5PKCg=;
        b=nW4j5Mnd/ro6eB9V51g+7y+suGmrcIdQbF8ApvvKPRYCKs4aFfRYQ/4kZMbaJmFT94vnKh
        b9auw/VPpGZ+2zD5IIxGC5Ak77WS/6/7Ejm+KnzCMgCKkmiwQCwAHFX6wr1O+stPNmtMaC
        U2vRZZkEbwioM5BX/zdPYiJpDpoTr3U5ePkiM+vJYdblEFfG/aw2/SsHO8oNqiIPT8qtAJ
        zMQk03U6jkaZLBMlkRErsvN8Ak9eMY1qSMTNbGSwcq4bfkVHgKr4MDdpjZ7f1isPl6j7AA
        UQ/iXSYfioSCzi/bgiweeP/a37mN3kmnX0/sFYQwktp128iy5lvdB/v5jwnbEg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0EBEE1BF20F;
        Mon, 19 Jun 2023 07:19:09 +0000 (UTC)
Date:   Mon, 19 Jun 2023 09:19:09 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v2 05/17] dt-bindings: mtd: qcom: Fix a property
 position
Message-ID: <20230619091909.179a29ec@xps-13>
In-Reply-To: <3f4f4beb-4136-312a-be0b-5ec018b4329d@linaro.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <20230606175246.190465-6-miquel.raynal@bootlin.com>
        <3f4f4beb-4136-312a-be0b-5ec018b4329d@linaro.org>
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

Hi Krzysztof,

krzysztof.kozlowski@linaro.org wrote on Mon, 19 Jun 2023 08:54:13 +0200:

> On 06/06/2023 19:52, Miquel Raynal wrote:
> > qcom,boot-partitions is a NAND chip property, not a NAND controller
> > property. Move the description of the property into the NAND chip
> > section and just enable the property in the if/else block.
> >=20
> > Fixes: 5278cc93a97f ("dt-bindings: mtd: qcom_nandc: document qcom,boot-=
partitions binding")
> > Cc: Manivannan Sadhasivam <mani@kernel.org>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  .../devicetree/bindings/mtd/qcom,nandc.yaml   | 41 +++++++++++--------
> >  1 file changed, 25 insertions(+), 16 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Do=
cumentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > index 07024ee45951..7217d8a64d14 100644
> > --- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > @@ -45,6 +45,22 @@ patternProperties:
> >          enum:
> >            - 512
> > =20
> > +      qcom,boot-partitions:
> > +        $ref: /schemas/types.yaml#/definitions/uint32-matrix
> > +        items:
> > +          items:
> > +            - description: offset
> > +            - description: size
> > +        description:
> > +          Boot partition use a different layout where the 4 bytes of s=
pare
> > +          data are not protected by ECC. Use this to declare these spe=
cial
> > +          partitions by defining first the offset and then the size.
> > +
> > +          It's in the form of <offset1 size1 offset2 size2 offset3 ...>
> > +          and should be declared in ascending order.
> > +
> > +          Refer to the ipq8064 example on how to use this special bind=
ing.
> > +
> >  allOf:
> >    - $ref: "nand-controller.yaml#" =20
>=20
> Also based on some old tree.

I do have=20

1f79a611e74c ("dt-bindings: mtd: Drop unneeded quotes")

in my log, so I don't understand the quotes. When I re-generate the
patches, they no longer appear. I must have done something silly at
some point without noticing. My apologies. I'll "try" again.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>=20
> Best regards,
> Krzysztof
>=20


Thanks,
Miqu=C3=A8l
