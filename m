Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65FAB725A94
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 11:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240196AbjFGJeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 05:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240193AbjFGJdu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 05:33:50 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A63E1BF1
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 02:33:24 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686130397;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=yq+u6KBIixoyRRSctbLzLzxRpq6stiZ8c6Ns65RSIuA=;
        b=Q2Y+AHSyZBKNzlTG+6grWLT4eLbw6EXKMBRCq3tIWdwxpDsTeOkFfwFca4sK2tQwx9s07+
        zDbpsRoG40WZCRtp/aFscYccumUovEDaKHCNRQx/lOouwjeOKBHwAlpeyqNVWZEEP2gcCE
        hLG2nZiyhFSDdiLs0DeQUuduHW4+4gEDxPotjX84VOR12lwK2lIqZjju60dYMmUfSP2MPu
        v1Q14VenbLFWgU3mUqvvgZSyIoKirqgvZTLu2AePmvg60gJHjIW7UG/7WjMw4SiTZRM0Kb
        2KO7Wjgt43uwMG34to2ovhVF8LQDaBdPBHXbiqX9lt3QiVPlXVnVKFD5cqipMg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1227A24000F;
        Wed,  7 Jun 2023 09:33:14 +0000 (UTC)
Date:   Wed, 7 Jun 2023 11:33:14 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
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
Message-ID: <20230607113314.5da62276@xps-13>
In-Reply-To: <168607750937.1468225.8457774415279003681.robh@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <20230606175246.190465-8-miquel.raynal@bootlin.com>
        <168607750937.1468225.8457774415279003681.robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

robh@kernel.org wrote on Tue, 06 Jun 2023 12:52:00 -0600:

> On Tue, 06 Jun 2023 19:52:36 +0200, Miquel Raynal wrote:
> > List all the possible properties in the NAND chip as per the example and
> > set unevaluatedProperties to false in the NAND chip section.
> >=20
> > Cc: Paul Cercueil <paul@crapouillou.net>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/mtd/ingenic,nand.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >  =20
>=20
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> ./Documentation/devicetree/bindings/mtd/ingenic,nand.yaml: Unable to find=
 schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.=
yaml

It seems like your automated tooling failed to apply the second patch
in this series (creating raw-nand-chip.yaml). It says "sha1 information
is lacking or useless". This work is based on a recent -rc so I'm not
sure what is "lacking or useless" in this case.

Anyway, do you plan to give this series a look anyway? Or should I
rebase against a specific branch?

Thanks,
Miqu=C3=A8l

> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
td/ingenic,nand.example.dtb: nand-controller@1: nand@1: False schema does n=
ot allow {'reg': [[1]], 'nand-ecc-step-size': [[1024]], 'nand-ecc-strength'=
: [[24]], 'nand-ecc-mode': ['hw'], 'nand-on-flash-bbt': True, 'pinctrl-name=
s': ['default'], 'pinctrl-0': [[4294967295]], 'partitions': {'compatible': =
['fixed-partitions'], '#address-cells': [[2]], '#size-cells': [[2]], 'parti=
tion@0': {'label': ['u-boot-spl'], 'reg': [[0, 0, 0, 8388608]]}, 'partition=
@800000': {'label': ['u-boot'], 'reg': [[0, 8388608, 0, 2097152]]}, 'partit=
ion@a00000': {'label': ['u-boot-env'], 'reg': [[0, 10485760, 0, 2097152]]},=
 'partition@c00000': {'label': ['boot'], 'reg': [[0, 12582912, 0, 67108864]=
]}, 'partition@4c00000': {'label': ['system'], 'reg': [[0, 79691776, 1, 421=
5275520]]}}}
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicet=
ree/bindings/mtd/ingenic,nand.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
td/ingenic,nand.example.dtb: nand-controller@1: nand@1: Unevaluated propert=
ies are not allowed ('nand-ecc-mode', 'nand-ecc-step-size', 'nand-ecc-stren=
gth', 'nand-on-flash-bbt', 'partitions', 'reg' were unexpected)
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicet=
ree/bindings/mtd/ingenic,nand.yaml
>=20
> doc reference errors (make refcheckdocs):
>=20
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202306=
06175246.190465-8-miquel.raynal@bootlin.com
>=20
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>=20
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>=20
> pip3 install dtschema --upgrade
>=20
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>=20

