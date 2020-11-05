Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 386C02A8037
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 14:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730466AbgKEN7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 08:59:06 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:52899 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730687AbgKEN7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 08:59:06 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id DE1AC580360;
        Thu,  5 Nov 2020 08:59:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 05 Nov 2020 08:59:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=qzvBcbHMYK6sYMX+WfvSh0Q3ayc
        RLE9JGot8QENfnDc=; b=PTQ81uS+613B4vzd+PKweotT+H1+XD49AOZynuZMf00
        wMuaVAK/UPj8bJ2VAjwErVpR3fpEmuYAyPKT09/E2aFwK17cH1dJy+2+nRrJxBuZ
        NkjcalBfLdTeXUSuqMQRJhTejSJ1TfqVt8Y8EsNJjL/DZ3KQFp8pDrgX87mAeaXi
        PQVjMljRHDpn4wNOHy7ipQle4k3zartYoHCVgLqC/wVwkfv5VY5Etg01LxqlPwku
        LCuWFxkCxSj9WbIZmqM4q8jmK8Sy2E1polrVR3wGHeuwRJ468NwWLatXn9Zfk1Xv
        5DprdLeyJtqeNugKnfg9BSjDm2Pd695uwAAVPc65wHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=qzvBcb
        HMYK6sYMX+WfvSh0Q3aycRLE9JGot8QENfnDc=; b=mwCwlKpORJRmFkrnqQraIP
        Q+yWtazzMLgPNR5DdNqetHCN/9fIdzU2ho3GxjnGkzbvtE+M7epaOMWXbAfSi9hW
        Q6GJAJrVU+yzP8h57tdsyIsTe0xjNYwMCQ10l9BzXyDUnwrh/azNBfCgjZNuYooF
        EZaxKZYHyWYrJz2sQyJ68LoEv9BrnXsq3665cp0WyaJZ9DDFf1TRASaGFQ8i3Sd/
        ps3I1soUTsV0y7i0/ofFIPqKpo/z0KdfuUge7tHGstoKrDKJx1bmZY+zt5R0Wb0i
        ES3d1dQLubn0/HLhnc7OMtRxTG1uLjJ2ik5B1tzOm4MAMkduAN2BL0XO2CVj961A
        ==
X-ME-Sender: <xms:JwWkXxKhhRSpM0PaosDjBqflM9TUkoKarLNbiXkxAEm61MgZAzQbXA>
    <xme:JwWkX9LcKSwTupwTX5A7-1-9xKL7ko6b7J2JLPaxTzweHCh8tRMMZkvJRttoI564r
    EGTdzct37cXPGZK-gw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtjedgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JwWkX5sJMA8dVBR8iPS1209Y4sEZ7AQj64JS3BTOsjcz47CX4ue4DA>
    <xmx:JwWkXybF3ClYKoHVZxXHB0YOGiW5Oel6dYWFtta44X79MJMAnNMPWQ>
    <xmx:JwWkX4bZaxuv1_NYx0qRZ2B1cm4-y0JQlWsTcdR_hu8BIUu5VTryKg>
    <xmx:JwWkX-w9uqDGQLgxbTxSxELZVgQsl957rAPLLcQsdHIfOn5saQuAPQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 54535306005C;
        Thu,  5 Nov 2020 08:59:03 -0500 (EST)
Date:   Thu, 5 Nov 2020 14:59:02 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Hoegeun Kwon <hoegeun.kwon@samsung.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 7/7] drm/vc4: kms: Don't disable the muxing of an
 active CRTC
Message-ID: <20201105135902.qycsbsvkns6e66fe@gilmour.lan>
References: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
 <CGME20201029081313epcas1p165edbd0c8e54d978a8130f5fb9d2a422@epcas1p1.samsung.com>
 <469ead5de989938fcf079505cbc232a620e713bc.1603888799.git-series.maxime@cerno.tech>
 <19c6fec6-c118-6229-f683-e180ce2631b4@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wxyq3fidkoqttkit"
Content-Disposition: inline
In-Reply-To: <19c6fec6-c118-6229-f683-e180ce2631b4@samsung.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wxyq3fidkoqttkit
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Nov 02, 2020 at 05:47:04PM +0900, Hoegeun Kwon wrote:
> Hi Maxime,
>=20
> Thanks for V2 patch.
>=20
>=20
> On 10/28/20 9:41 PM, Maxime Ripard wrote:
> > The current HVS muxing code will consider the CRTCs in a given state to
> > setup their muxing in the HVS, and disable the other CRTCs muxes.
> >
> > However, it's valid to only update a single CRTC with a state, and in t=
his
> > situation we would mux out a CRTC that was enabled but left untouched by
> > the new state.
> >
> > Fix this by setting a flag on the CRTC state when the muxing has been
> > changed, and only change the muxing configuration when that flag is the=
re.
> >
> > Fixes: 87ebcd42fb7b ("drm/vc4: crtc: Assign output to channel automatic=
ally")
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >   drivers/gpu/drm/vc4/vc4_drv.h |  1 +-
> >   drivers/gpu/drm/vc4/vc4_kms.c | 84 +++++++++++++++++++++-------------=
--
> >   2 files changed, 50 insertions(+), 35 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_dr=
v.h
> > index c6208b040f77..c074c0538e57 100644
> > --- a/drivers/gpu/drm/vc4/vc4_drv.h
> > +++ b/drivers/gpu/drm/vc4/vc4_drv.h
> > @@ -523,6 +523,7 @@ struct vc4_crtc_state {
> >   	struct drm_mm_node mm;
> >   	bool feed_txp;
> >   	bool txp_armed;
> > +	bool needs_muxing;
> >   	unsigned int assigned_channel;
> >  =20
> >   	struct {
> > diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_km=
s.c
> > index 2aa726b7422c..409aeb19d210 100644
> > --- a/drivers/gpu/drm/vc4/vc4_kms.c
> > +++ b/drivers/gpu/drm/vc4/vc4_kms.c
> > @@ -224,10 +224,7 @@ static void vc5_hvs_pv_muxing_commit(struct vc4_de=
v *vc4,
> >   {
> >   	struct drm_crtc_state *crtc_state;
> >   	struct drm_crtc *crtc;
> > -	unsigned char dsp2_mux =3D 0;
> > -	unsigned char dsp3_mux =3D 3;
> > -	unsigned char dsp4_mux =3D 3;
> > -	unsigned char dsp5_mux =3D 3;
> > +	unsigned char mux;
> >   	unsigned int i;
> >   	u32 reg;
> >  =20
> > @@ -235,50 +232,59 @@ static void vc5_hvs_pv_muxing_commit(struct vc4_d=
ev *vc4,
> >   		struct vc4_crtc_state *vc4_state =3D to_vc4_crtc_state(crtc_state);
> >   		struct vc4_crtc *vc4_crtc =3D to_vc4_crtc(crtc);
> >  =20
> > -		if (!crtc_state->active)
> > +		if (!vc4_state->needs_muxing)
> >   			continue;
> >  =20
> >   		switch (vc4_crtc->data->hvs_output) {
> >   		case 2:
> > -			dsp2_mux =3D (vc4_state->assigned_channel =3D=3D 2) ? 0 : 1;
> > +			mux =3D (vc4_state->assigned_channel =3D=3D 2) ? 0 : 1;
> > +			reg =3D HVS_READ(SCALER_DISPECTRL);
> > +			HVS_WRITE(SCALER_DISPECTRL,
> > +				  (reg & ~SCALER_DISPECTRL_DSP2_MUX_MASK) |
> > +				  VC4_SET_FIELD(mux, SCALER_DISPECTRL_DSP2_MUX));
> >   			break;
> >  =20
> >   		case 3:
> > -			dsp3_mux =3D vc4_state->assigned_channel;
> > +			if (vc4_state->assigned_channel =3D=3D VC4_HVS_CHANNEL_DISABLED)
> > +				mux =3D 3;
> > +			else
> > +				mux =3D vc4_state->assigned_channel;
> > +
> > +			reg =3D HVS_READ(SCALER_DISPCTRL);
> > +			HVS_WRITE(SCALER_DISPCTRL,
> > +				  (reg & ~SCALER_DISPCTRL_DSP3_MUX_MASK) |
> > +				  VC4_SET_FIELD(mux, SCALER_DISPCTRL_DSP3_MUX));
> >   			break;
> >  =20
> >   		case 4:
> > -			dsp4_mux =3D vc4_state->assigned_channel;
> > +			if (vc4_state->assigned_channel =3D=3D VC4_HVS_CHANNEL_DISABLED)
> > +				mux =3D 3;
> > +			else
> > +				mux =3D vc4_state->assigned_channel;
> > +
> > +			reg =3D HVS_READ(SCALER_DISPEOLN);
> > +			HVS_WRITE(SCALER_DISPEOLN,
> > +				  (reg & ~SCALER_DISPEOLN_DSP4_MUX_MASK) |
> > +				  VC4_SET_FIELD(mux, SCALER_DISPEOLN_DSP4_MUX));
> > +
> >   			break;
> >  =20
> >   		case 5:
> > -			dsp5_mux =3D vc4_state->assigned_channel;
> > +			if (vc4_state->assigned_channel =3D=3D VC4_HVS_CHANNEL_DISABLED)
> > +				mux =3D 3;
> > +			else
> > +				mux =3D vc4_state->assigned_channel;
> > +
> > +			reg =3D HVS_READ(SCALER_DISPDITHER);
> > +			HVS_WRITE(SCALER_DISPDITHER,
> > +				  (reg & ~SCALER_DISPDITHER_DSP5_MUX_MASK) |
> > +				  VC4_SET_FIELD(mux, SCALER_DISPDITHER_DSP5_MUX));
> >   			break;
> >  =20
> >   		default:
> >   			break;
> >   		}
> >   	}
> > -
> > -	reg =3D HVS_READ(SCALER_DISPECTRL);
> > -	HVS_WRITE(SCALER_DISPECTRL,
> > -		  (reg & ~SCALER_DISPECTRL_DSP2_MUX_MASK) |
> > -		  VC4_SET_FIELD(dsp2_mux, SCALER_DISPECTRL_DSP2_MUX));
> > -
> > -	reg =3D HVS_READ(SCALER_DISPCTRL);
> > -	HVS_WRITE(SCALER_DISPCTRL,
> > -		  (reg & ~SCALER_DISPCTRL_DSP3_MUX_MASK) |
> > -		  VC4_SET_FIELD(dsp3_mux, SCALER_DISPCTRL_DSP3_MUX));
> > -
> > -	reg =3D HVS_READ(SCALER_DISPEOLN);
> > -	HVS_WRITE(SCALER_DISPEOLN,
> > -		  (reg & ~SCALER_DISPEOLN_DSP4_MUX_MASK) |
> > -		  VC4_SET_FIELD(dsp4_mux, SCALER_DISPEOLN_DSP4_MUX));
> > -
> > -	reg =3D HVS_READ(SCALER_DISPDITHER);
> > -	HVS_WRITE(SCALER_DISPDITHER,
> > -		  (reg & ~SCALER_DISPDITHER_DSP5_MUX_MASK) |
> > -		  VC4_SET_FIELD(dsp5_mux, SCALER_DISPDITHER_DSP5_MUX));
> >   }
> >  =20
> >   static void
> > @@ -769,21 +775,29 @@ static int vc4_pv_muxing_atomic_check(struct drm_=
device *dev,
> >   		return -EINVAL;
> >  =20
> >   	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_=
state, i) {
> > +		struct vc4_crtc_state *old_vc4_crtc_state =3D
> > +			to_vc4_crtc_state(old_crtc_state);
>=20
> In my opinion, the old_vc4_crtc_state definition is better to move to=20
> patch6.
> Build error occurs in patch6 because old_vc4_crtc_state is used in patch6.

You're totally right, I've fixed it in my third version, thanks!
Maxime

--wxyq3fidkoqttkit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6QFJgAKCRDj7w1vZxhR
xZ2hAP4wEKZizsJhQ4Iv2J3mUACUh/6wbj7eQJ9EpqV6HOj6SwD+OYWSKXtx40J4
uBBCidzBw+amMcU/OtX/i+JIxQHIygE=
=fjgV
-----END PGP SIGNATURE-----

--wxyq3fidkoqttkit--
