Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5260D71134F
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 20:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbjEYSMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 14:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbjEYSMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 14:12:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 779F2D8
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 11:12:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E3D8A64858
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 18:12:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA766C433EF;
        Thu, 25 May 2023 18:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685038336;
        bh=1Sf/QoELd/T/VDVpW55/fKOZFX4f/aEI1nJveV/+ghM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uV8u2H2Pq2Cw/kaoNvBWHJxgZkY48gbftNm0FNQBlG9CScyLpty/7bwUOsuFBM2Tg
         +zhZGfDWmvsvQYMiLe3R6l3ZoaROItTxBNwVYhmKLWfTzdZTyUk2AKgsxQ+FGjItXp
         5gxRYEdHIOZo67/5LuRt36PtiWX5/eHhdLssVqSBl5m6P+ywBphyfH+8HYWOMUnxC/
         aEthtAYG8BwMb2ToIVi1oXsT966XxMLMfUsHvcCPfTf4fyAnSUoTcMhhOzktFwXSOR
         kQgty29/aK9ZMXu5iIWQAq9AQ5vQgROs6rwT+a+nXD0H9WQ+mS7dv2z4dUgEqoHvoj
         VSiQPXARslthw==
Date:   Thu, 25 May 2023 19:12:12 +0100
From:   Conor Dooley <conor@kernel.org>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: dt_binding_check report false alarm?
Message-ID: <20230525-mating-mutt-36a506094d38@spud>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
 <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
 <20230525-unlearned-trusting-1ed0cf6a6364@spud>
 <c7fe5781-5213-8a39-f7f7-a1f5e94249cd@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="HSqGj0Df3zlxGxm+"
Content-Disposition: inline
In-Reply-To: <c7fe5781-5213-8a39-f7f7-a1f5e94249cd@broadcom.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--HSqGj0Df3zlxGxm+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 25, 2023 at 10:10:46AM -0700, William Zhang wrote:
>=20
>=20
> On 05/25/2023 08:33 AM, Conor Dooley wrote:
> > On Thu, May 25, 2023 at 08:23:30AM -0700, William Zhang wrote:
> > > Sorry for the multiple emails. Our mail relay server was not working
> > > properly.
> >=20
> > I only got one /shrug
> >=20
> That's good.  Maybe it only flushed queued email to internal email accoun=
ts.
>=20
> > > On 05/25/2023 06:23 AM, Conor Dooley wrote:
> > > > Hey William,
> > > >=20
> > > > On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
> > > > > Hi,
> > > > >=20
> > > > > It seems dt_binding_check reports a false error when run on this
> > > > > modified yaml. I picked this simple file just to demostrate this =
issue.
> > > > > Basically I made the interrupts and interrupt-names as optional
> > > > > properties. But when there are two interrupts present, then
> > > > > interrupt-names are required.  However in the example, I don't de=
fine
> > > > > interrupts and interrupt-name at all, the dt binding check report=
s error
> > > > > that interrupt-names are required:
> > > >=20
> > > > Rob and Krzysztof would know more than me, but since they're not
> > > > around...
> > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc=
=2Eyaml b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > > > index 563a31605d2b..c37a3a64a78c 100644
> > > > > --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > > > +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> > > > > @@ -32,11 +32,18 @@ properties:
> > > > >      clock-names:
> > > > >        const: ipg
> > > > > +allOf:
> > > > > +  - if:
> > > > > +      properties:
> > > > > +        interrupts:
> > > > > +          minItems: 2
> > > >=20
> > > > ...I don't think you can actually do this and "minItems: 2" will al=
ways
> > > > evaluate to true because it is an assignment. Don't hold me to that
> > > > though! The standard pattern here is to do:
> > > > allOf:
> > > >     - if:
> > > >         properties:
> > > >           compatible:
> > > >             contains:
> > > >               const: foo
> > > >       then:
> > > >         required:
> > > >           - interrupt-names

> > > Our device can use one or two interrupt, or choose to not use interru=
pt at
> > > all(polling mode). Interrupt names is only required when there are two
> > > interrupts(so the driver code can tell which is which).  So I will ne=
ed to
> > > check if it contains two interrupts. My check does work if I have two
> > > interrupt but don't have interrupt name, the check catches the error.=
  If I
> > > have one interrupt without interrupt name, the check pass. Only when =
I does
> > > not have interrupt and interrupt name,  it falsely report error.  Loo=
ks to
> > > me that it does not treat minItem =3D 0 case properly.
> >=20
> > Right. I would not bother with the "only interrupt-names when 2
> > interrupts" stuff & do the simple thing of always making it required
> > when you have interrupts.
> > Then you can use allOf and oneOf to allow for both schemes for the new
> > device and keep enforcement of 2 items for the existing one.

> I agree it is better to keep it simple. Sorry I am still new to yaml but
> what is the best way to check if interrupt property exist?  What I can th=
ink
> of is similar
>=20
>  - if:
>       properties:
>         interrupts:
>           minItems: 1
>     then:
>       required:
>         - interrupt-names
>=20
> But this still reports the same error when there is no interrupt.

Yeah, you don't need to do something like that.
It's hard to say exactly without your actual patch, but I think you're
over complicating things :)
What you seem to want to do (from where I am sitting) is something like:
	dependencies:
	  interrupts: interrupt-names

and not put interrupts/interrupt-names in the required bit.
That way, if you have interrupts, you need to have interrupt-names too
but you can have neither.

But yeah, without something resembling the "real" patch, rather than
hacking at the fsl one, it is kinda hard to say.

Cheers,
Conor.


>=20
> > > > > +    then:
> > > > > +      required:
> > > > > +        - interrupt-names
> > > > > +
> > > > >    required:
> > > > >      - compatible
> > > > >      - reg
> > > > > -  - interrupts
> > > > > -  - interrupt-names
> > > > >      - clocks
> > > > >      - clock-names
> > > > > @@ -49,6 +56,4 @@ examples:
> > > > >            reg =3D <0x53fac000 0x4000>;
> > > > >            clocks =3D <&clks 111>;
> > > > >            clock-names =3D "ipg";
> > > > > -        interrupts =3D <49>, <50>;
> > > > > -        interrupt-names =3D "scm", "smn";
> > > > >        };
> > > > > --=20
> > > > > 2.34.1
> > > > >=20
> > > >=20
> > > >=20
> >=20
> >=20



--HSqGj0Df3zlxGxm+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG+k/AAKCRB4tDGHoIJi
0n5gAQDTaRGRGnImqIsPiotvGYvVhpAv2dJRGk3h39xceSi9DgD/VrFhtP+LvPGr
kcAa7RK3y6Cg/6mykaC0jZM5vXaLbgs=
=C3zW
-----END PGP SIGNATURE-----

--HSqGj0Df3zlxGxm+--
