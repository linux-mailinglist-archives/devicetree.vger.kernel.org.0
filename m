Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E32B7018E8
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 20:02:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237370AbjEMSC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 14:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237520AbjEMSCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 14:02:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0F42D5B
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:01:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EE39D61B63
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 18:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B36F6C433D2;
        Sat, 13 May 2023 18:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684000839;
        bh=cRm0MQi7YAIbwZp7hUzWj9ox4SWbb/lO1iti+PZt1+g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tvw6uXW7iASonTRQJCOuCXlSkPLSfq5GK2E+f15KT54whDftiNN+AIqDGqUtyra3f
         0hHCOYVYKPtq6LicQ1PKqxJIVp+2Tonwwjp4/FbaM9SgbgR3teve1C9Oa9uTKBEiSl
         jVwA3PZXRHBHxOvHraKA0LpI/qXlJTudl+xz41ieu7m8uIHb9ziHUxyNtRRzCQN0IU
         UvJHg7KEWPp7dYqGjDzsasraxq0RSYSHo/krf3L9pgzxwYK8s8CfcWfVopwty254CF
         rlSJQfdO6wOU1EEZy3pX8lKMiFRXqjyND7KnyWJifJOJKfPDcwayuozNtBe0xEri3l
         ZYruYzAh2cWEA==
Date:   Sat, 13 May 2023 19:00:34 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-riscv@lists.infradead.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
Subject: Re: [RFC 2/6] dt-bindings: riscv: add riscv,isa-extension-* property
 and incompatible example
Message-ID: <20230513-sixth-pushing-7fb12ee62410@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
 <20230508-sneeze-cesarean-d1aff8be9cc8@spud>
 <90f24883-4653-d099-14cc-38e2ecbbd189@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zcUWM9LxFOFmjxdp"
Content-Disposition: inline
In-Reply-To: <90f24883-4653-d099-14cc-38e2ecbbd189@linaro.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zcUWM9LxFOFmjxdp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 13, 2023 at 07:50:22PM +0200, Krzysztof Kozlowski wrote:
> On 08/05/2023 20:16, Conor Dooley wrote:
> > From: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > This dt-binding is illustrative *only*, it doesn't yet do what I want it
> > to do in terms of enforcement etc. I am yet to figure out exactly how to
> > wrangle the binding such that the individual properties have more
> > generous versions than the generic pattern property.
> > This binding *will* generate errors, and needs rework before it can
> > seriously be considered.
> > Nevertheless, it should demonstrate how I intend such a property be
> > used.

> > +    oneOf:
> > +      - const: v1.0.0
> > +        description: the original incarnation
> > +      - const: v1.0.1
> > +        description: backwards compat was broken here
> > +
> > +patternProperties:
> > +  "^riscv,isa-extension-*":
>=20
> Are all these -i/-m/-a extensions obvious/known to RISC-V folks? I have
> no clue what's this, so the question is: do they need some explanation
> in the bindings?

Yes, these should be well known. In the same way that "neon" should mean
something to someone doing arm64. Nevertheless, the plan is to drop the
string side of this entirely & actually document the meaning of -i/-m/-a
etc.

> > +    description:
> > +      Catch-all property for ISA extensions that do not need any speci=
al
> > +      handling, and of which all known versions are compatible with th=
eir
> > +      original revision.
> > +    $ref: "/schemas/types.yaml#/definitions/string"
>=20
> Drop quotes.
>=20
> > +    enum:
> > +      - v1.0.0
>=20
> Your example should not validate here... you have there v2.0.0 and v1.0.1

As noted in the commit message, this is illustrative only & cannot work.
There doesn't appear to be a way to make the patternProperty fallback
more specific than the explicitly defined properties.
I wanted to get something out for initial thoughts before trying to do
further wrangling, lest it be a complete waste of time.
Consensus seems to be that versions are a thing of the past and that
property-presence based probing is a better idea. See the discussion
on the cover for that.
It does conveniently mean that all this complexity can be thrown in the
bin.

Cheers,
Conor.

--zcUWM9LxFOFmjxdp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF/QQgAKCRB4tDGHoIJi
0sYDAP0ZxrGsgo+DHXtLrkTV5KSGFz1w+5RyzsrFhyfkJeOvkwEA/nOZ3HL/4L9R
h97MiW43ULDBeIrMaddFAm1yluImLQk=
=a1mF
-----END PGP SIGNATURE-----

--zcUWM9LxFOFmjxdp--
