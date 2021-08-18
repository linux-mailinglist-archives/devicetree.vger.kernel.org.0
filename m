Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A523F0122
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 12:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232505AbhHRKBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 06:01:03 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:53239 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231910AbhHRKBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 06:01:02 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 833265C0198;
        Wed, 18 Aug 2021 06:00:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 18 Aug 2021 06:00:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=kZLyEeKCZry5SsJrdGDyx9YCfod
        3H+Q8kZ+LUcg5WBM=; b=i7vLeEjKSGKlHFYzq5IsgVZcyuqpXY3rkMgGmvppWBO
        Gc3McrpOVmnh7GPT0JCvBmLWauDx/atrJMyWjDRGii/OIp6KksZ1lbNYqktmqTM0
        5z12NJeOiKU9cOE8R8EsHLAc8juXgzNZD9UllGR2ArGaUnZTiA6uP2okJMfjUyC7
        wzvkHLc4clv5Q+iNuiEDlysslCwJQ8IIiU/akGGkE56djaWL0JIRwCaLL+JyEGdP
        +6e3e/JYRTrD1DAknuAlzCtm5dmypZB3AYp9ylqVxAQOVy1AF/vxb/n4hj+RO1s/
        zBg2tKcT0m8jRhqttQs4b78l78A0rfCL80h5D5vteEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=kZLyEe
        KCZry5SsJrdGDyx9YCfod3H+Q8kZ+LUcg5WBM=; b=SdSU0e1EFbHncFfDte8G+P
        lMAx2ZD7omTeVAHrCo0RvQWQdRU3hXncDt16q6Mm2NT1gHOloiHdutXw2er3MSQ1
        rT5qz1/SuaMNaPPXuIO8gu9TAAcwQA8Rb/A/wZQeoOOktuaufQLz7VdVmjnISbxn
        3qfLt8RDV8faWRAk3kvV5bzp/+bLcWCjkqeqX01iBhlqk//WFKwt4Y+gO72nSIwc
        lo4AeNBOjocAd/nSc/HSXeEtO8Pq6AmtdbJ0XXgMJufCimn+ol5NbuW6WwiRWhB2
        EdJBMv9Ruua8QOvFamBWBCIBf4EG8rt/a7tY/Rwc96Fj9f+VUUGtWhIQQMDogH6g
        ==
X-ME-Sender: <xms:N9ocYXdqqO80L8kbXl5Bb7t0n2EY96mYLIMcn9SX10YvMj7o-V8M0g>
    <xme:N9ocYdNaBvqt_xT_4jQM3hN9OxJvvg2tZGeTsglkRFGPWb0Pv6vInh1tVxU1-nUNy
    iydyZ3FOhd2Rc2T4MY>
X-ME-Received: <xmr:N9ocYQiWMtbBSfjLxFCyvWAxeqbJGINwk9eeWS4AwJ7xauvRwdJgGD14YSflTxQ00s_UfW-73SdwzfbjZA1XUZ75bv3R5ObCMbbk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleehgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeffteetveeijeetuefhffegkeetgffhieelheehtdduudethffhjedtvddtudel
    vdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
    vggthh
X-ME-Proxy: <xmx:N9ocYY99mCrSRR0a3wDATlyQEwnoYBwX6DZRb_jy2A0yz9Peul-g7w>
    <xmx:N9ocYTu00yFvJI9NnHtEi7efWCLQCh9pprnVlTItfY2t3W5wsh7BWw>
    <xmx:N9ocYXFbW2w5zAt18Wecd-FeEFRKTx-D9v9Mh0AfIB8ZpZYXTi26qg>
    <xmx:OdocYc8_WMLhoy0zsktmPri1AhI-Vdccz3bsEP9_JEHEsZX5FrNfLw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Aug 2021 06:00:23 -0400 (EDT)
Date:   Wed, 18 Aug 2021 12:00:21 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Grant Likely <grant.likely@arm.com>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Subject: Re: [PATCH 05/54] dt-bindings: Convert Reserved Memory binding to a
 schema
Message-ID: <20210818100021.yzzcuadkowy4tfv4@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-6-maxime@cerno.tech>
 <CAL_JsqKAZLBK2UDDUNrO4aaYr886oODB_N_yF70X44gPXs=k5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="n7nlrbexrimtktxt"
Content-Disposition: inline
In-Reply-To: <CAL_JsqKAZLBK2UDDUNrO4aaYr886oODB_N_yF70X44gPXs=k5Q@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--n7nlrbexrimtktxt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Wed, Jul 21, 2021 at 08:30:43AM -0600, Rob Herring wrote:
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yam=
l#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: /reserved-memory Node
> > +
> > +maintainers:
> > +  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel=
=2Eorg>
> > +
> > +description: >
> > +  Reserved memory is specified as a node under the /reserved-memory no=
de. The
> > +  operating system shall exclude reserved memory from normal usage one=
 can
> > +  create child nodes describing particular reserved (excluded from nor=
mal use)
> > +  memory regions. Such memory regions are usually designed for the spe=
cial
> > +  usage by various device drivers.
> > +
> > +properties:
> > +  $nodename:
> > +    const: reserved-memory
> > +
> > +  "#address-cells": true
> > +  "#size-cells": true
> > +  ranges: true
> > +
> > +patternProperties:
> > +  "^(?!(ranges))[a-z,-]*(@[0-9]+)?$":
>=20
> Note that you could drop this and put under 'additionalProperties'.
> You would lose some node name checking, but there's really little
> standard on these nodes.

I didn't realise it could be used that way too, I'll change it.

> > +    type: object
> > +
> > +    description: >
> > +      Each child of the reserved-memory node specifies one or more reg=
ions of
> > +      reserved memory. Each child node may either use a 'reg' property=
 to
> > +      specify a specific range of reserved memory, or a 'size' propert=
y with
> > +      optional constraints to request a dynamically allocated block of=
 memory.
> > +
> > +      Following the generic-names recommended practice, node names sho=
uld
> > +      reflect the purpose of the node (ie. "framebuffer" or "dma-pool"=
). Unit
> > +      address (@<address>) should be appended to the name if the node =
is a
> > +      static allocation.
> > +
> > +    properties:
> > +      reg: true
> > +
> > +      size:
> > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        description: >
> > +          Length based on parent's \#size-cells. Size in bytes of memo=
ry to
> > +          reserve.
> > +
> > +      alignment:
> > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        description: >
> > +          Length based on parent's \#size-cells. Address boundary for
> > +          alignment of allocation.
> > +
> > +      alloc-ranges:
> > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        description: >
> > +          Address and Length pairs. Specifies regions of memory that a=
re
> > +          acceptable to allocate from.
> > +
> > +      compatible:
> > +        oneOf:
> > +          - const: shared-dma-pool
> > +            description: >
> > +              This indicates a region of memory meant to be used as a =
shared
> > +              pool of DMA buffers for a set of devices. It can be used=
 by an
> > +              operating system to instantiate the necessary pool manag=
ement
> > +              subsystem if necessary.
> > +
> > +          # Vendor-specific compatibles in the form <vendor>,[<device>=
-]<usage>
> > +          - const: mediatek,trustzone-bootinfo
>=20
> I think these should be separate schema files. At least, we're going
> to need to support separate files because I don't think we want ones
> adding custom properties here. This would fail unless we add every
> compatible here. We could also be a bit more exact as to which
> properties below apply (e.g. linux,.*-default is only valid for
> shared-dma-pool).

I'm not entirely sure how we can just ignore the vendor compatibles
without raising a warning. Do you have any suggestion?

Thanks!
Maxime

--n7nlrbexrimtktxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYRzaNQAKCRDj7w1vZxhR
xXoEAP0Wb+sDdQFVpE4TOpIzWL60pus62BaBAkK76+r+dEqmagD/ekGoQDd8MZv9
FjRdZeu13zCexoQq5O+jibOPiKbmtwQ=
=l7it
-----END PGP SIGNATURE-----

--n7nlrbexrimtktxt--
