Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A87BE547FEE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 08:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbiFMGy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 02:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232446AbiFMGy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 02:54:58 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D47140E2
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 23:54:57 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1o0dyH-0000QP-4Z; Mon, 13 Jun 2022 08:54:45 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1o0dyG-000FHU-7y; Mon, 13 Jun 2022 08:54:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1o0dyE-00Fz7Y-95; Mon, 13 Jun 2022 08:54:42 +0200
Date:   Mon, 13 Jun 2022 08:54:40 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Christopher Vollo <chris@renewoutreach.org>
Subject: Re: [PATCH v3 2/2] drm: bridge: Add TI DLPC3433 DSI to DMD bridge
Message-ID: <20220613065440.2vjccaixikrayvhy@pengutronix.de>
References: <20220603140349.3563612-1-jagan@amarulasolutions.com>
 <20220603140349.3563612-2-jagan@amarulasolutions.com>
 <CAG3jFyt3TwirBUbf+Zu0xuc7z+CBV8nqin0SVxVzZ7_2Qwx-vg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7zzbapx7jiwfpevh"
Content-Disposition: inline
In-Reply-To: <CAG3jFyt3TwirBUbf+Zu0xuc7z+CBV8nqin0SVxVzZ7_2Qwx-vg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7zzbapx7jiwfpevh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Jun 03, 2022 at 04:37:51PM +0200, Robert Foss wrote:
> On Fri, 3 Jun 2022 at 16:04, Jagan Teki <jagan@amarulasolutions.com> wrot=
e:
> > +static int dlpc3433_remove(struct i2c_client *client)
> > +{
> > +       struct dlpc *dlpc =3D i2c_get_clientdata(client);
> > +
> > +       drm_bridge_remove(&dlpc->bridge);
> > +       of_node_put(dlpc->host_node);
> > +
> > +       return 0;
> > +}
> > + [...]
> > +static struct i2c_driver dlpc3433_driver =3D {
> > +       .probe_new =3D dlpc3433_probe,
> > +       .remove =3D dlpc3433_remove,
> > +       .id_table =3D dlpc3433_id,
> > +       .driver =3D {
> > +               .name =3D "ti-dlpc3433",
> > +               .of_match_table =3D dlpc3433_match_table,
> > +       },
> > +};
> > +module_i2c_driver(dlpc3433_driver);
>=20
> Applied to drm-misc-next.

just a quick note that there is an easy conflict between this patch and
my effort to make i2c remove callbacks return void. I intend to post my
series on top of v5.20-rc1, so if this patch goes in before, everything
is fine.

See
https://lore.kernel.org/linux-i2c/20220609091018.q52fhowlsdbdkct5@pengutron=
ix.de/
for some more details.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7zzbapx7jiwfpevh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmKm3ywACgkQwfwUeK3K
7AnabAf/X/oSsZpM9JxCRjMVlq5KKzcTRkez4HeVTkYGWiG3O1fL+TjuvGTkYZ48
YpoSz2U6epz0bVRj/IuSZkmh5Pg/dXSSzYv+RhSSSGzF0XSihGkrItnVK5S9r+dl
l4WibdSVE3he1EhMk0dbMRYbpo/mAajMsGsWlY1k9cCP21hZbFcCpI1OsbgTgw0U
BVTXCQFpy2OqbIwug15754e3dbS1B0mmTcp9sNWiSY1ZZ7B/LcOtB6dePVkOXaba
ySRB/h378863X0D869Mcj1H+e1jw8iiRAFP0mdYRpjUYkrK0Bh4kHAxfQGdd5Ez3
bEgmWpwZ40yrQyypYJcd1qh6SgMkpg==
=Izfm
-----END PGP SIGNATURE-----

--7zzbapx7jiwfpevh--
