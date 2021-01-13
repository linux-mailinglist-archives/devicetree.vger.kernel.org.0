Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24E4E2F4F29
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 16:50:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727068AbhAMPtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 10:49:35 -0500
Received: from wout4-smtp.messagingengine.com ([64.147.123.20]:33175 "EHLO
        wout4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727053AbhAMPtf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 10:49:35 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 01E6044C;
        Wed, 13 Jan 2021 10:48:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 13 Jan 2021 10:48:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=QRTswYs8tX2TyPXmPO2ToC01g4a
        8oT5uUxW18FHGQkw=; b=B4P7X8Z3+ZJypa7J7pHj+YFpd4fSKUAWbqsg3WcRQRm
        dHZyeJD3xwpmn/5nNFhIssY+kikq1yf7C42AN1CuOr2jjV+4oaKQhZVC0m/4boNy
        H5UB26R9Ihn00erEbXieYFPkzdJlxI0D67QAE2owW63VSON9bLvZ+jdyFDg75fuz
        6G1vDRTpA7M2DinEdMcaPKmJkl99uXdLvK13BoNXHU3aZl2JSfibVjw77+uMJvHz
        +1Fgp1Lh4CXJLsNR57lVsbK1KfFpesJCLu1P7TpKeXwDSX00JI3Yr0LqJU1CtDXO
        tDAMtvA0Rci9b9EKZJ0yG/wQ82UeMhtOSpMjxiSP7mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=QRTswY
        s8tX2TyPXmPO2ToC01g4a8oT5uUxW18FHGQkw=; b=qlAC10s7ZoLqJxtzK8hkbG
        C2G1WlRXGh0oagS/i48csXUQDl4j3121Tv7rOmkRO2/HF7TvAR5zSZRRbJOd9LDK
        VAv0hiWdEIhUd87MVdp6WyNGXYI8gpGHot1zSoSUGkGTYDsFXigVH95VsP/CBjdF
        jwIJCWXB69BN6wEI7JMb4ZJVljCp57mTlwpx15lVj7RBEz7ELjuLbeW353Jp5WM0
        unv1a1epfqC66OWYDq4f1Rusk+H0llEgYR8Y/AK97RfusTcmmsIVB5mBHO2sdlWT
        kGA0a6Hh5PTfPFcT76ZimohhJ2LkjuyGY5I+nyANF9xkA+54ydsveMK3N2Aap5mQ
        ==
X-ME-Sender: <xms:Sxb_X-xk1TOtkUOsWMmjOQddZu732hlZCzXmecab57phex2_vTYM_w>
    <xme:Sxb_X6OBjeRhcen08uAjTxoA2aQnLATf7X6cOha38-D5kUaOQUb_IiCK04qPaRyAz
    yU-QWBezQQyhwSJXbM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedukedrtdefgdektdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeejudduheeuffeigfduhfefjefhkeduudeihfefudeuueejheefteetueefgeej
    heenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgpdhfrhgvvgguvghskhhtoh
    hprdhorhhgpdhgihhthhhusgdrtghomhenucfkphepledtrdekledrieekrdejieenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
    estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Sxb_X9OZIfDTbLmU1Ks3p1VGuFZ6IDkfg_-_Vf9jnLFpr5KTJE0-Tg>
    <xmx:Sxb_X8T9sPiz1A9yec_wTfBWVGvRbxOGC8Gn5PeB29b7_p-11FdL6w>
    <xmx:Sxb_X_AtCd8dnWesQ36en035w4WUn3daYDPNzAq-W1H6jukAQIq0Ww>
    <xmx:TBb_XxH6dQ1Y54P2KexbILXp-SqqKZHIXIJ7GuGEAaYYpn7Q65H6DA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id EDB39108005C;
        Wed, 13 Jan 2021 10:48:26 -0500 (EST)
Date:   Wed, 13 Jan 2021 16:48:25 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V3] dt-bindings: gpu: Convert v3d to json-schema
Message-ID: <20210113154825.ekebwpbbdbafxy75@gilmour>
References: <1610189433-29985-1-git-send-email-stefan.wahren@i2se.com>
 <20210113091520.btk53z5mrhmaqd6h@gilmour>
 <5d6daa40-9b30-5d8d-d363-fa44af21e81a@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="j53skxk4isw6747q"
Content-Disposition: inline
In-Reply-To: <5d6daa40-9b30-5d8d-d363-fa44af21e81a@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--j53skxk4isw6747q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2021 at 01:53:38PM +0100, Stefan Wahren wrote:
> Hi Maxime,
>=20
> Am 13.01.21 um 10:15 schrieb Maxime Ripard:
> > Hi,
> >
> > On Sat, Jan 09, 2021 at 11:50:32AM +0100, Stefan Wahren wrote:
> >> This converts the v3d bindings to yaml format.
> >>
> >> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> >> ---
> ...
> >> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b=
/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> >> new file mode 100644
> >> index 0000000..3b543d4
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> >> @@ -0,0 +1,72 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/gpu/brcm,bcm-v3d.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Broadcom V3D GPU Bindings
> >> +
> >> +maintainers:
> >> +  - Eric Anholt <eric@anholt.net>
> >> +  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >> +
> >> +properties:
> >> +  $nodename:
> >> +    pattern: '^gpu@[a-f0-9]+$'
> >> +
> >> +  compatible:
> >> +    enum:
> >> +      - brcm,7268-v3d
> >> +      - brcm,7278-v3d
> >> +
> >> +  reg:
> >> +    items:
> >> +      - description: hub register (required)
> >> +      - description: core0 register (required)
> >> +      - description: GCA cache controller register (if GCA controller=
 present)
> >> +      - description: bridge register (if no external reset controller)
> >> +    minItems: 2
> > maxItems will be set to 2 in this case, while it would be 4 I guess?
>=20
> This confuses me. Based on this patch [1] by Rob, i would assume that
> maxItems is derived from item list length.
>=20
> [1] -
> https://lists.freedesktop.org/archives/dri-devel/2020-December/292309.html

Yeah, you're right

My understanding was that maxItems was set to whatever minItems was if
maxItems was missing, but dt-validate also checks for whether it's a
list and will fill it like you said:

https://github.com/devicetree-org/dt-schema/blob/master/dtschema/lib.py#L258

Maxime

--j53skxk4isw6747q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/8WSQAKCRDj7w1vZxhR
xQyWAQCgG6eKLGmMcZlt8rZXoYmEZLi2/5edtkkbr0BfgLl1VAEAnnT0AFAo8tWU
YOYDL7kMNr0q3IPLZNaNdslOAWgzGgg=
=fmge
-----END PGP SIGNATURE-----

--j53skxk4isw6747q--
