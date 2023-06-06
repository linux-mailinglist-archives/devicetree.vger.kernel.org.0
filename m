Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA7C724CAE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 21:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239518AbjFFTON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 15:14:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239452AbjFFTNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 15:13:55 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66DC21FC2
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 12:13:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B526A63081
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 19:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FD26C4339B;
        Tue,  6 Jun 2023 19:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686078808;
        bh=vFnpFQ44mkdUZbzKi9dsvAsFETfL1UOywZQbuu3Sivk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IdNLE8W5CjmtXWVos7Ej9cQpxKmzriPbffgvqsG9UndoN5z+H9WNI7RaF8iU5aTyB
         LoX2JTkagVpnow5hSsP1rQW81z4/Vv8MUcyknQIRKnRAkpdNYF3Sk7V1rAioOmmZDx
         ou0hd8dwIv+NXiPiAEhQLyZkhzyNUTUD/vULse+KFFsj6UDnjtMthQYlsYA+vGNQ1c
         QO8ILSE10UQaYhF7MilM8/G1nInyQcAszu7vqufxiAvW5qm3IQq83542bIo5ISZJag
         M2kEm0wsA8Ja9vkzcTbUEEDfDp26XxQ6iowCg3kH18xI3GSo5ceFIHqvKS8b8tayH+
         JCAQXinOxxe/A==
Date:   Tue, 6 Jun 2023 20:13:22 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Markus Niebel <Markus.Niebel@tq-group.com>,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/3] dt-bindings: arm: add TQMa8Xx boards
Message-ID: <20230606-navy-stitch-4a1f011d524c@spud>
References: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
 <20230606112108.685885-2-alexander.stein@ew.tq-group.com>
 <20230606120730.6exdpylr24qn6hdw@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="IVLHu89T/yTQ9etV"
Content-Disposition: inline
In-Reply-To: <20230606120730.6exdpylr24qn6hdw@pengutronix.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--IVLHu89T/yTQ9etV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 06, 2023 at 02:07:30PM +0200, Marco Felsch wrote:
> Hi Alexander,
>=20
> On 23-06-06, Alexander Stein wrote:
> > TQMa8Xx is a SOM series featuring NXP i.MX8X SoC.
> > They are called TQMa8XQP and TQMa8XDP respectively.
> > MBa8Xx is an evaluation mainboard for this SOM
> >=20
> > Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documenta=
tion/devicetree/bindings/arm/fsl.yaml
> > index 2510eaa8906dd..c4dcdac43bafb 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1195,6 +1195,23 @@ properties:
> >            - const: toradex,colibri-imx8x
> >            - const: fsl,imx8qxp
> > =20
> > +      - description:
> > +          TQMa8Xx is a series of SOM featuring NXP i.MX8X system-on-ch=
ip
> > +          variants. It is designed to be clicked on different carrier =
boards
> > +          MBa8Xx is the starterkit
> > +        oneOf:
> > +          - items:
> > +              - enum:
> > +                  - tq,imx8dxp-tqma8xdp-mba8xx # TQ-Systems GmbH TQMa8=
XDP SOM on MBa8Xx
> > +              - const: tq,imx8dxp-tqma8xdp     # TQ-Systems GmbH TQMa8=
XDP SOM (with i.MX8DXP)
> > +              - const: fsl,imx8dxp
> > +              - const: fsl,imx8qxp
> 				^
> Should be removed? The rest lgtm, so feel free to add my:
>=20
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Ye, with that removed, assuming it is a typo,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--IVLHu89T/yTQ9etV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZH+FUgAKCRB4tDGHoIJi
0mAuAQDe1IhCG4hVo+nZOTwNSqbQN1/7CDaq3c6Pou5DhPhw3gD9ENYYnljdPTbn
xFa39MM07I+4SlZIDVUZLiE0XV3gTA8=
=Rk3I
-----END PGP SIGNATURE-----

--IVLHu89T/yTQ9etV--
