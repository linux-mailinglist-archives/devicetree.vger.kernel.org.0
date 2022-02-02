Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE7B24A7158
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 14:16:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344294AbiBBNQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 08:16:33 -0500
Received: from wout4-smtp.messagingengine.com ([64.147.123.20]:55199 "EHLO
        wout4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235676AbiBBNQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 08:16:30 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 2E39132022B9;
        Wed,  2 Feb 2022 08:16:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 02 Feb 2022 08:16:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=GMF6rB8GuvA/eG
        9gMFVbec1gC1mmuod3KuyZ4ZlHm7k=; b=m1bSbIzNTJupyNnJTG3vH5svgfK4LW
        EpwqC+s/vCD6+nCaNplb6vvlXqWUpiHZ5Pirf4/nE9JNKNumwbDAfKsexRFwOqZq
        dsga5gm2V1XsPXrRQsGoo3JerhdsOFeu08lkkKSzEcwEPdVAS4gM25pf3u+6Q6PM
        jTSgJXfwIo6afFVJCj8+c1nyIEVWkg3mWJp87UGUC1twoV9EULL8EH3b8HTNO0Z4
        1BzIi9QcBLZompihNijURFyZDQsvTlW4IGCNetLTxMmAzzOBvZl+ZzeXuZwzJUb4
        h3oZrOT8Qa+YRzdiZ/sj3Q4BqHvKD3wefEusE5a0GNhmgYoFQ7sss8Ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=GMF6rB8GuvA/eG9gMFVbec1gC1mmuod3KuyZ4ZlHm
        7k=; b=i9pR5YTmRDHb7lCnvZWI5HAB0R1GHbCa0AYwev7/R8iEtxvnOYT2Yn5Qv
        aZLM82i1tCLH7aPhzp63trvI2mVhPIqC/3NVzPlE1zdlNRVXAnCIWtlSdH3jiqBt
        wmmxW1kGCFXo4PLRfJBYE/yByKKE0FJ4C4Qols2yt8qqipNvNsa04IPEgP8ddACb
        kvo7/RCXSN7WN0blr2hK2MFCEPNHxpEF4zMgPxUds6NkyxBH4+UrfRl7cj7G63+Z
        PlnnjHE/1hYsj04pp+fEy/x2LW3dxYq1WBYIS+T8I8VjRDI+0Q0V4DJLnJOrhlLC
        2E9TuQ4EM4rB9bKAxFMIayRrA6xdw==
X-ME-Sender: <xms:KoT6Yf8MnF3n19_ux_qy22nziIfQac2Cxtu4qXKdNxQWad499YC0Kg>
    <xme:KoT6Ybu-KHSFhFZ4R1SKf5BFlPPiyxePEVbrMnmBizWcLsYmdlTFnGsWhTOBPLiq9
    StzOCiK1b1iDHFcx-8>
X-ME-Received: <xmr:KoT6YdCPeQYrGv6KERQ98All5YEYYN1k4lO40LO-_-78sG5nNkG9sWgaxO-ZlYSce70pcQzPrgLkOnQ4LnsL_wfrqjeFx2e-vfQvSxE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeehgdehtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepgfegvdelgfeuveevueekvedtjefguddvveffhedukeejjeejgfejfedtvdei
    tdegnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdr
    thgvtghh
X-ME-Proxy: <xmx:KoT6YbeHmjEOKkML_4VrhUdhntURghcCJ8QArBrxKsjRWg4i3jV1Wg>
    <xmx:KoT6YUP3sf8qWbRHga9TGCgwt9ULGSrA6U-OtIGx9E2AIGSxMUW8yQ>
    <xmx:KoT6YdkVl0-m1yizlxi_6FIam46LFwEJgjn77CYSGarufc8DRunXBA>
    <xmx:K4T6YVgM7PkxW4iRprd2CMrKS8YgOdsJv1IPIDm88arLi2-2XDf0YQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Feb 2022 08:16:26 -0500 (EST)
Date:   Wed, 2 Feb 2022 14:16:23 +0100
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
Message-ID: <20220202131623.3vfbtuyeemzcxe4k@houat>
References: <20220111110635.804371-1-maxime@cerno.tech>
 <20220111110635.804371-2-maxime@cerno.tech>
 <Yd2Ahn3+FVv/Aks7@pendragon.ideasonboard.com>
 <20220127142215.fesipdslabur43sx@houat>
 <20220202094845.r7td65zxfo5uqg5x@houat>
 <Yfp9UhwWZbHpDjpL@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Yfp9UhwWZbHpDjpL@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 02:47:14PM +0200, Laurent Pinchart wrote:
> On Wed, Feb 02, 2022 at 10:48:45AM +0100, Maxime Ripard wrote:
> > On Thu, Jan 27, 2022 at 03:22:15PM +0100, Maxime Ripard wrote:
> > > On Tue, Jan 11, 2022 at 03:05:10PM +0200, Laurent Pinchart wrote:
> > > > On Tue, Jan 11, 2022 at 12:06:35PM +0100, Maxime Ripard wrote:
> > > > > Following the previous patch, let's introduce a generic panel-lvds
> > > > > binding that documents the panels that don't have any particular
> > > > > constraint documented.
> > > > >=20
> > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > >=20
> > > > > ---
> > > > >=20
> > > > > Changes from v2:
> > > > >   - Added a MAINTAINERS entry
> > > > >=20
> > > > > Changes from v1:
> > > > >   - Added missing compatible
> > > > >   - Fixed lint
> > > > > ---
> > > > >  .../bindings/display/panel/panel-lvds.yaml    | 57 +++++++++++++=
++++++
> > > > >  MAINTAINERS                                   |  1 +
> > > > >  2 files changed, 58 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/display/pan=
el/panel-lvds.yaml
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/display/panel/pane=
l-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.ya=
ml
> > > > > new file mode 100644
> > > > > index 000000000000..fcc50db6a812
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.=
yaml
> > > > > @@ -0,0 +1,57 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/display/panel/panel-lvds.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Generic LVDS Display Panel Device Tree Bindings
> > > > > +
> > > > > +maintainers:
> > > > > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > +  - Thierry Reding <thierry.reding@gmail.com>
> > > > > +
> > > > > +allOf:
> > > > > +  - $ref: panel-common.yaml#
> > > > > +  - $ref: /schemas/display/lvds.yaml/#
> > > > > +
> > > > > +select:
> > > > > +  properties:
> > > > > +    compatible:
> > > > > +      contains:
> > > > > +        const: panel-lvds
> > > > > +
> > > > > +  not:
> > > > > +    properties:
> > > > > +      compatible:
> > > > > +        contains:
> > > > > +          enum:
> > > > > +            - advantech,idk-1110wr
> > > > > +            - advantech,idk-2121wr
> > > > > +            - innolux,ee101ia-01d
> > > > > +            - mitsubishi,aa104xd12
> > > > > +            - mitsubishi,aa121td01
> > > > > +            - sgd,gktw70sdae4se
> > > >=20
> > > > I still don't like this :-( Couldn't we instead do
> > > >=20
> > > > select:
> > > >   properties:
> > > >     compatible:
> > > >       contains:
> > > >         enum:
> > > >           - auo,b101ew05
> > > >           - tbs,a711-panel
> > > >=20
> > > > ?
> > >=20
> > > That works too, I'll send another version.
> >=20
> > Actually, no, it doesn't work.
> >=20
> > If we do this, if we were to have a panel that has panel-lvds but none
> > of the other compatible (because of a typo, or downright invalid
> > binding) we won't validate it and report any error.
> >=20
> > I'll merge this version (together with the v4 version of patch 1)
>=20
> I'm sorry but I *really* *really* dislike this. Having to list all other
> compatible values in this file is a sign that something is wrong in the
> validation infrastructure. People will forget to update it when adding
> new bindings, and will get confused by the result. If I were a
> maintainer for DT bindings I'd nack this.

The validation infrastructure is what it is, and we can't change that.
Rewriting one from scratch isn't reasonable either. That being said, the
*only* case where this has been a problem are the panels because there's
so many pointless schemas which should really be a single schema.

That's the root cause.

I tried to merge all of them, but once again panels seem to be special,
and it was shot down. So be it. But at the end of the day, there's not a
lot of solutions to do what we are doing for every other case out there.

> If a DT has panel-lvds and no other compatible string, or invalid ones,
> won't the validation report that the compatible isn't understood ? I
> think that would be enough.

That's just worse. How would you not get confused if there's an error
that the compatible isn't documented, you search for it, and it's
actually documented there?

We really have two solutions:

  - Either we merge all the panel-lvds schemas in one,

  - Or we have this.

The first was shot down, only the latter remains.

Maxime
