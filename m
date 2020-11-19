Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6E2E2B957B
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 15:52:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728061AbgKSOud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 09:50:33 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:35109 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728028AbgKSOud (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 09:50:33 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id A62E75806F3;
        Thu, 19 Nov 2020 09:50:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 19 Nov 2020 09:50:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=GMJRNJmdeb2D3/v+4JlTfVunrS8
        Yxxt3AOOxgvJeE+o=; b=OkK8vf/H8CPhb/GLuyPWNnrYSSXdxHuDHHWsu4frnSN
        QptH0ylFmrDAjKwSOd0l5SkH/KCUuMP0ay7Sx6QoT4AkzhKLGYHMAovGsehXQ0XO
        jJwOlpaXKAX3Itc8RwFXpmPqbLUw4Jvh+WuRSundNBg7JM/QpVGb2FJsaJWMpgyy
        uQHD5DAbswbZUAsJMpuCHdo1bWGURshfkf9zs1P+kg2VoOFtyx6lHK8rHlrXxlbK
        rFV7U/Jj+N0813U3M/1IkOiGERWbBkBOEWBDZSMjAnwC4LTcT+UanBby63gFdF7n
        E3//ANn8lBY4h29nUBgIF2OxbNZrsQjj2tjJz4Wh3BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=GMJRNJ
        mdeb2D3/v+4JlTfVunrS8Yxxt3AOOxgvJeE+o=; b=pLPHxdgnVB9J8oaSl1fC8d
        ZLXpjZyWugcEHK1Duh17Ygvb5XN9tMclX5DbmoCT8XQSb5mZSm+EVZR5XdMOj68L
        uFhtich6SajCNRDOE4vAj5CAdoWA8Wre/A8XHjQoVMdcUg/2gir4LRp3oCPUzJyW
        g2jIdOxRw2vhBM57dh9WIFMsGY8IBVp0KBzzP+g/QnhOJKRwMPrbrd9neRVJdZHF
        Wk4HbBhoBF3U8j0vmTVaQxhjXbJwmJm2cp1l2ESlnGCqG8L67ZZYTst61SbviK95
        vZeljMmRY1c2kbMnk3eR6xI0+kpelcoJms6pmNaCnsEVANGE+mmL2S0VU1oKio/g
        ==
X-ME-Sender: <xms:NYa2X6dd_BQSMNtGY1SUTZB_tGW2pVmVSnnacjJ4HCbMlAzOmJZCmg>
    <xme:NYa2X0MGghtPwG4JJhbWXvY_y1Tdk6l--c95Px2WCZpANvAvPBGeMhgf_MMyanhly
    P-nD3I5-XSdoqQJxAo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudefjedgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NYa2X7g0IV_tawss_dlBuZus6bkTgoFKpqSy8FXDir7iH6EGyYG0RA>
    <xmx:NYa2X38uBMVAQuFLfhlwRzlrNTBWVlWscXu4FbjRJeK8yDrSsXhdeQ>
    <xmx:NYa2X2uq5d9IoeR3C2IQZqv_4hSsxRlr4og70wJDUC2tlesS6jbClg>
    <xmx:N4a2X2EPYanvqVrUIDQIfFd37gVMeOTNmiWX6uGi4l7tGTx-flHvXg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 3C05D3064AB2;
        Thu, 19 Nov 2020 09:50:29 -0500 (EST)
Date:   Thu, 19 Nov 2020 15:50:27 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Thomas Zimmermann <tzimmermann@suse.de>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/3] drm/vc4: hdmi: Disable Wifi Frequencies
Message-ID: <20201119145027.o2vdcwjbwm6ve6sb@gilmour>
References: <20201029134018.1948636-1-maxime@cerno.tech>
 <20201029134018.1948636-2-maxime@cerno.tech>
 <a5af9bc2-b2f0-9a03-f436-8b18d9af7b89@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rp3qiexqtuhtrguh"
Content-Disposition: inline
In-Reply-To: <a5af9bc2-b2f0-9a03-f436-8b18d9af7b89@suse.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rp3qiexqtuhtrguh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 19, 2020 at 10:20:25AM +0100, Thomas Zimmermann wrote:
> Hi
>=20
> Am 29.10.20 um 14:40 schrieb Maxime Ripard:
> > There's cross-talk on the RPi4 between the 2.4GHz channels used by the =
WiFi
> > chip and some resolutions, most notably 1440p at 60Hz.
> >=20
> > In such a case, we can either reject entirely the mode, or lower slight=
ly
> > the pixel frequency to remove the overlap. Let's go for the latter.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >=20
> > ---
> >=20
> > Changes from v1:
> >    - Change the name of the property
> >    - Test for a range instead of an exact frequency
> > ---
> >   drivers/gpu/drm/vc4/vc4_hdmi.c | 21 +++++++++++++++++++++
> >   drivers/gpu/drm/vc4/vc4_hdmi.h |  8 ++++++++
> >   2 files changed, 29 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_h=
dmi.c
> > index 506c12454086..0d72e519aec4 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > @@ -760,6 +760,9 @@ static void vc4_hdmi_encoder_enable(struct drm_enco=
der *encoder)
> >   {
> >   }
> > +#define WIFI_2_4GHz_CH1_MIN_FREQ	2400000000ULL
> > +#define WIFI_2_4GHz_CH1_MAX_FREQ	2422000000ULL
> > +
> >   static int vc4_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
> >   					 struct drm_crtc_state *crtc_state,
> >   					 struct drm_connector_state *conn_state)
> > @@ -767,12 +770,27 @@ static int vc4_hdmi_encoder_atomic_check(struct d=
rm_encoder *encoder,
> >   	struct drm_display_mode *mode =3D &crtc_state->adjusted_mode;
> >   	struct vc4_hdmi *vc4_hdmi =3D encoder_to_vc4_hdmi(encoder);
> >   	unsigned long long pixel_rate =3D mode->clock * 1000;
> > +	unsigned long long tmds_rate;
> >   	if (vc4_hdmi->variant->unsupported_odd_h_timings &&
> >   	    ((mode->hdisplay % 2) || (mode->hsync_start % 2) ||
> >   	     (mode->hsync_end % 2) || (mode->htotal % 2)))
> >   		return -EINVAL;
> > +	/*
> > +	 * The 1440p@60 pixel rate is in the same range than the first
> > +	 * WiFi channel (between 2.4GHz and 2.422GHz with 22MHz
> > +	 * bandwidth). Slightly lower the frequency to bring it out of
> > +	 * the WiFi range.
> > +	 */
> > +	tmds_rate =3D pixel_rate * 10;
> > +	if (vc4_hdmi->disable_wifi_frequencies &&
> > +	    (tmds_rate >=3D WIFI_2_4GHz_CH1_MIN_FREQ &&
> > +	     tmds_rate <=3D WIFI_2_4GHz_CH1_MAX_FREQ)) {
> > +		mode->clock =3D 238560;
> > +		pixel_rate =3D mode->clock * 1000;
> > +	}
> > +
> >   	if (pixel_rate > vc4_hdmi->variant->max_pixel_clock)
> >   		return -EINVAL;
> > @@ -1717,6 +1735,9 @@ static int vc4_hdmi_bind(struct device *dev, stru=
ct device *master, void *data)
> >   		vc4_hdmi->hpd_active_low =3D hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
> >   	}
> > +	vc4_hdmi->disable_wifi_frequencies =3D
> > +		of_property_read_bool(dev->of_node, "wifi-2.4ghz-coexistence");
> > +
> >   	pm_runtime_enable(dev);
> >   	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_h=
dmi.h
> > index 6815e93b1a48..3843be830601 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.h
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
> > @@ -142,6 +142,14 @@ struct vc4_hdmi {
> >   	int hpd_gpio;
> >   	bool hpd_active_low;
> > +	/*
> > +	 * On some systems (like the RPi4), some modes are in the same
> > +	 * frequency range than the WiFi channels (1440p@60Hz for
> > +	 * example). Should we take evasive actions because that system
> > +	 * has a wifi adapter.
>=20
> The final sentence sounds like a question. Maybe just write 'Take evasive
> actions if...'

This was definitely a question, I've added the question mark and applied
the two first patches

> Assuming that the display mode still works
>=20
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

Thanks!
Maxime

--rp3qiexqtuhtrguh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX7aGMwAKCRDj7w1vZxhR
xQ2SAP9q7D1zGramQLU2SRVaD/K2vigygywAdTvPTOQiRu6ONgD/ayJ20pUq3fQ9
k5jrGtyYDYqcWAyKZG02NG1YuZcfvAk=
=pt+f
-----END PGP SIGNATURE-----

--rp3qiexqtuhtrguh--
