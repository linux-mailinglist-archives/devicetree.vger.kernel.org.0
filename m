Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C88B049E486
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 15:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237721AbiA0OWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 09:22:19 -0500
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:56715 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230206AbiA0OWT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jan 2022 09:22:19 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id BAD9E5C01D6;
        Thu, 27 Jan 2022 09:22:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 27 Jan 2022 09:22:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=HW6a8zVCyw1MgHBmx+iwaRE8kRhwZx2zT01aez
        O0xag=; b=nMNAsRj1o4N5fW5GOukNe/cz84L2JOl7mau/Bir//xaUUkWe31bkUk
        oMNUJ77clEZoTmC9IrDZU9P2PbGNWsdyze4qONxtcfhK9mDnc6kPJ0k0cxCNaHY5
        FQQ45NGP2Gei7Z4WeBWFoZhcQ6o1A4XaqtCGeIvUDCMl65+fFOV28HdzaWoKzJIk
        nFriDiouOs/Ds/XT+qCpwJmJ52q56kKH2oYOjfWPS2sOdq992PMPZzK92t1tCw0e
        J+S06g9G/suUxqD+PdilPhtCZxpoczoxWp6kEkM5PiqUYhY3lpwBYLFxAeoglA06
        WpDnAfPFOGCSnUwoTxcjNj9PLdEuMTWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HW6a8zVCyw1MgHBmx
        +iwaRE8kRhwZx2zT01aezO0xag=; b=Aji2W6TgvJgQil/EnXR6RheIZO3qVsnMU
        aFhq5FcF41SM2a+nXfRRA/SjbIxAkCF1soRbkzpvgDq7lXb1gWGI+D2iMK5GFJUR
        D2RdbZCKud8LRh6rrxXpaabTwSAcXeisJebXg6tzRSXSyr8X6FWEXdVBEwLFnFSs
        xVywbPJOb1PtVNkqJb32zPEHqSctwm4aYRUepV8SOpQQMJpBeJSCzj0rT/NEmasv
        DqYN8E0wNsREkeA93Ifg4/CIyYxOhJrnbFwxLaJmFCgvxonzGfCV0vyrhm5qtJFE
        a+e3nyQAVkGHgH+7n724PmfG8QJscpnNcAHHcXtzfGTUV+btDmOpw==
X-ME-Sender: <xms:maryYW_S-IZuQcc0PiGj_rGALUMEnwNu6sA7Aon5aMpMq7DCmuu3pw>
    <xme:maryYWtvS40WIQB4wBJtrH9U3PwF1TwXwEFuzzamvPKAtjyIU_F5gEacp-FXcLTqY
    Od9oDckgXmuSuFOSRA>
X-ME-Received: <xmr:maryYcDqPGd-uwSsxsxqG0ZvflHff9hTFVeraYJ1LwUMouAI7aT7mf1RzWE3uYetqvuas5xQZozMs_NDEsBkX4VkJhNBAkZmE2o77u8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeefgdeigecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeffteetveeijeetuefhffegkeetgffhieelheehtdduudethffhjedtvddtudel
    vdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
    vggthh
X-ME-Proxy: <xmx:mqryYeffu93wNGw40C4nmdYkoBztnrS9b6pJLv9QxdOSb1Tlh2Hjww>
    <xmx:mqryYbOjXytWWBCsUlYjKOMK-JGHsC2b3AHYldBuYKiV9WQcrPapMA>
    <xmx:mqryYYkhtggZbZHzTitKvlRfGvxdprYz5jEePiGrE9Iq6JeMYMZ84Q>
    <xmx:mqryYUgD_EbyxnMh_m6hDV4B2kd_XNgG4T07l9APYxGPP5aLg_W1Gw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Jan 2022 09:22:17 -0500 (EST)
Date:   Thu, 27 Jan 2022 15:22:15 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Message-ID: <20220127142215.fesipdslabur43sx@houat>
References: <20220111110635.804371-1-maxime@cerno.tech>
 <20220111110635.804371-2-maxime@cerno.tech>
 <Yd2Ahn3+FVv/Aks7@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7duvnl3dvvqxia5r"
Content-Disposition: inline
In-Reply-To: <Yd2Ahn3+FVv/Aks7@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7duvnl3dvvqxia5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Tue, Jan 11, 2022 at 03:05:10PM +0200, Laurent Pinchart wrote:
> On Tue, Jan 11, 2022 at 12:06:35PM +0100, Maxime Ripard wrote:
> > Following the previous patch, let's introduce a generic panel-lvds
> > binding that documents the panels that don't have any particular
> > constraint documented.
> >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >=20
> > ---
> >=20
> > Changes from v2:
> >   - Added a MAINTAINERS entry
> >=20
> > Changes from v1:
> >   - Added missing compatible
> >   - Fixed lint
> > ---
> >  .../bindings/display/panel/panel-lvds.yaml    | 57 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> >  2 files changed, 58 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/pan=
el-lvds.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds=
=2Eyaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> > new file mode 100644
> > index 000000000000..fcc50db6a812
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/panel-lvds.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Generic LVDS Display Panel Device Tree Bindings
> > +
> > +maintainers:
> > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > +  - Thierry Reding <thierry.reding@gmail.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +  - $ref: /schemas/display/lvds.yaml/#
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: panel-lvds
> > +
> > +  not:
> > +    properties:
> > +      compatible:
> > +        contains:
> > +          enum:
> > +            - advantech,idk-1110wr
> > +            - advantech,idk-2121wr
> > +            - innolux,ee101ia-01d
> > +            - mitsubishi,aa104xd12
> > +            - mitsubishi,aa121td01
> > +            - sgd,gktw70sdae4se
>=20
> I still don't like this :-( Couldn't we instead do
>=20
> select:
>   properties:
>     compatible:
>       contains:
>         enum:
>           - auo,b101ew05
>           - tbs,a711-panel
>=20
> ?

That works too, I'll send another version.

Maxime

--7duvnl3dvvqxia5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYfKqlwAKCRDj7w1vZxhR
xXlFAPoDfUSXsOdKC1jqPogq35LVWUz8Zwp4N+Bd0rvx9RY34QEAmWWjeVZ2EXQI
zRPnwqK4m7vDqTwrgSsAu5/Z73F+Ngk=
=dGBb
-----END PGP SIGNATURE-----

--7duvnl3dvvqxia5r--
