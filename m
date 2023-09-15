Return-Path: <devicetree+bounces-624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B27A2307
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0741281F8C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757D611CA0;
	Fri, 15 Sep 2023 15:58:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F46F11C8D
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:58:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B89EC433C7;
	Fri, 15 Sep 2023 15:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694793497;
	bh=rHPOWSi7ajq/kQXPUpK+1+DizBbjV6FvUrJCRMYwJxQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkgZXP7EvoPYQ//HjY99w5xFtAmxtvjMDOeP1+7oGYQd3hC+DDUm+/G/yDr0LJPFq
	 7pMN4plHAvsLMhWTooH/VAfydyrzfRHOdEpsfk1BsB6wILO9WQRhqg012ZdhCSSjHo
	 XbEx5O3/1oLDKu52PWRNkTv627AlJYCbzya81B7Lf+1l/ve9Jj06wgp4PH7zbH9LfK
	 tYwt/K4Tvmwf2l5mTTZG0F43RTIcMlEqlG4h2hsJYOlyKNKMVvhoDmmsjTKt9TbWiS
	 CxN6BMmYnkAUphrNPZfMYhNLW+Lcjo+SDinkWaGiSh9GjnO1zPmrtfOfNq8YKrGywg
	 9RfwfOU3An2yA==
Date: Fri, 15 Sep 2023 16:58:12 +0100
From: Conor Dooley <conor@kernel.org>
To: "Matyas, Daniel" <Daniel.Matyas@analog.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	"linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: hwmon: Add possible new properties
 to max31827 bindings
Message-ID: <20230915-battle-shrouded-9d7e9e3cd6c0@spud>
References: <20230914075948.208046-1-daniel.matyas@analog.com>
 <20230914075948.208046-2-daniel.matyas@analog.com>
 <20230914-qualify-ragweed-b06b7b7923c9@spud>
 <PH0PR03MB677168B3D2689B4D553443E089F6A@PH0PR03MB6771.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fu/FZ+WQJsjjwQ/a"
Content-Disposition: inline
In-Reply-To: <PH0PR03MB677168B3D2689B4D553443E089F6A@PH0PR03MB6771.namprd03.prod.outlook.com>


--fu/FZ+WQJsjjwQ/a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:31:13PM +0000, Matyas, Daniel wrote:
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > On Thu, Sep 14, 2023 at 10:59:45AM +0300, Daniel Matyas wrote:

> > > +  adi,alrm-pol:
> >=20
> > Characters are not at a premium, is there a reason not to use the full
> > words? "flt-q" in particular would be quite cryptic if I saw it in a dt=
s.
> >=20
> > > +    description:
> > > +      Sets the alarms active state.
> > > +            - 0 =3D active low
> > > +            - 1 =3D active high
> > > +      For max31827 and max31828 the default alarm polarity is low. F=
or
> > max31829
> > > +      it is high.
> >=20
> > This constraint can be expressed in the binding, rather than in free fo=
rm
> > text like done here. Ditto below.

> Ok, but how? The default values are different depending on the compatible=
 string. I searched for similar examples, but I found nothing...
>=20
> Some bindings use 'default: ' to declare the default values, but this is =
the default for every chip.

Something like
allOf:
  - if:
      properties:
        compatible:
          contains:
            const: adi,max31829
    then:
      properties:
        adi,alrm-pol:
          default: 1
    else:
      properties:
        adi,alrm-pol:
          default: 0

Cheers,
Conor.

--fu/FZ+WQJsjjwQ/a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQR/FAAKCRB4tDGHoIJi
0jsgAP4jkMxSLKa4saLHIsoqeAjgLQaDQ1jseRxF06yoFniMZAEA8vhX/6PTOojt
+Hlpg9H2JENwURZ0ZmJL1RBWpL5nUQ8=
=MgnR
-----END PGP SIGNATURE-----

--fu/FZ+WQJsjjwQ/a--

