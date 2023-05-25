Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148C3710FAA
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 17:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234112AbjEYPdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 11:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233645AbjEYPdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 11:33:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD02418D
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 08:33:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 59F7961155
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 15:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AB7BC433EF;
        Thu, 25 May 2023 15:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685028827;
        bh=R/0sYGOUGm5iNb1+bPkPKlgQmZZL0k1s6pKYpNlqQKI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cCaMdUxiwlLKqJXV0qbYeLCKrHZBS+NQFHpcd9WcNidlEea0Phd7wjP33GlmNRGsh
         vcX4m/QlBUvC/QMVCOmr/5e89qFcB37FaVqY1Ud6NG2E6oStnSI65DzQyopyVQU68N
         Phm1W4Ar3khSzemCjHC0oKtzoUwNEPwlOYfNBr/X/7RTcD9Qh9S9fi0OpD8iOCZCsI
         xCV8xbLPzjm6+w/2ejTcK5wrNXa0mpUyuDA04X4i4R7+A1fbtJ5Z9fMtUYJegphNWn
         iCDBmOuKdGG6ViD4Ws6a1RGHQqaITPyhIRweS9yFf7jvhWi1TYxJPpwjS/kvV1+3zT
         QeWq0RxedPn3g==
Date:   Thu, 25 May 2023 16:33:43 +0100
From:   Conor Dooley <conor@kernel.org>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: dt_binding_check report false alarm?
Message-ID: <20230525-unlearned-trusting-1ed0cf6a6364@spud>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
 <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="CFxmMaNzIEG8k6h0"
Content-Disposition: inline
In-Reply-To: <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--CFxmMaNzIEG8k6h0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 25, 2023 at 08:23:30AM -0700, William Zhang wrote:
> Sorry for the multiple emails. Our mail relay server was not working
> properly.

I only got one /shrug

> On 05/25/2023 06:23 AM, Conor Dooley wrote:
> > Hey William,
> >=20
> > On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
> > > Hi,
> > >=20
> > > It seems dt_binding_check reports a false error when run on this
> > > modified yaml. I picked this simple file just to demostrate this issu=
e.
> > > Basically I made the interrupts and interrupt-names as optional
> > > properties. But when there are two interrupts present, then
> > > interrupt-names are required.  However in the example, I don't define
> > > interrupts and interrupt-name at all, the dt binding check reports er=
ror
> > > that interrupt-names are required:
> >=20
> > Rob and Krzysztof would know more than me, but since they're not
> > around...
> >=20
> > > diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yam=
l b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > index 563a31605d2b..c37a3a64a78c 100644
> > > --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > @@ -32,11 +32,18 @@ properties:
> > >     clock-names:
> > >       const: ipg
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +        interrupts:
> > > +          minItems: 2
> >=20
> > ...I don't think you can actually do this and "minItems: 2" will always
> > evaluate to true because it is an assignment. Don't hold me to that
> > though! The standard pattern here is to do:
> > allOf:
> >    - if:
> >        properties:
> >          compatible:
> >            contains:
> >              const: foo
> >      then:
> >        required:
> >          - interrupt-names
> >=20
> > Cheers,
> > Conor.
> >=20
> Our device can use one or two interrupt, or choose to not use interrupt at
> all(polling mode). Interrupt names is only required when there are two
> interrupts(so the driver code can tell which is which).  So I will need to
> check if it contains two interrupts. My check does work if I have two
> interrupt but don't have interrupt name, the check catches the error.  If=
 I
> have one interrupt without interrupt name, the check pass. Only when I do=
es
> not have interrupt and interrupt name,  it falsely report error.  Looks to
> me that it does not treat minItem =3D 0 case properly.

Right. I would not bother with the "only interrupt-names when 2
interrupts" stuff & do the simple thing of always making it required
when you have interrupts.
Then you can use allOf and oneOf to allow for both schemes for the new
device and keep enforcement of 2 items for the existing one.

Cheers,
Conor.

> > > +    then:
> > > +      required:
> > > +        - interrupt-names
> > > +
> > >   required:
> > >     - compatible
> > >     - reg
> > > -  - interrupts
> > > -  - interrupt-names
> > >     - clocks
> > >     - clock-names
> > > @@ -49,6 +56,4 @@ examples:
> > >           reg =3D <0x53fac000 0x4000>;
> > >           clocks =3D <&clks 111>;
> > >           clock-names =3D "ipg";
> > > -        interrupts =3D <49>, <50>;
> > > -        interrupt-names =3D "scm", "smn";
> > >       };
> > > --=20
> > > 2.34.1
> > >=20
> >=20
> >=20



--CFxmMaNzIEG8k6h0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG9/1wAKCRB4tDGHoIJi
0hEpAQDdY7ORGUelBFzCsXernO5QjtC3/gE4LvW57/SLWrIacgD/ZFwmUAyCJQuq
pFNoVwdRxDoEx84RoXyPdiT9ZprhfAc=
=BIFh
-----END PGP SIGNATURE-----

--CFxmMaNzIEG8k6h0--
