Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB07157CE1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 14:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729157AbgBJN4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 08:56:47 -0500
Received: from foss.arm.com ([217.140.110.172]:34176 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728169AbgBJN4r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 10 Feb 2020 08:56:47 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 863881FB;
        Mon, 10 Feb 2020 05:56:46 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A80B3F68E;
        Mon, 10 Feb 2020 05:56:45 -0800 (PST)
Date:   Mon, 10 Feb 2020 13:56:44 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Peter Geis <pgwipeout@gmail.com>, lgirdwood@gmail.com,
        Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Message-ID: <20200210135644.GL7685@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
 <20200206135718.GQ3897@sirena.org.uk>
 <CAMdYzYqTEnG_Q-8SvO2R6PeaPXQ3VBKu6iVYhYvb=wK7tT7c3A@mail.gmail.com>
 <bca13994-a8b1-fa21-fdf0-9f362d693f39@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sMZCuqyhuhd4ycTi"
Content-Disposition: inline
In-Reply-To: <bca13994-a8b1-fa21-fdf0-9f362d693f39@arm.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--sMZCuqyhuhd4ycTi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 06, 2020 at 09:38:11PM +0000, Robin Murphy wrote:
> On 2020-02-06 6:05 pm, Peter Geis wrote:
> > On Thu, Feb 6, 2020 at 8:57 AM Mark Brown <broonie@kernel.org> wrote:
> >>


> compromise that isn't too hideous, preserves the logical cleanup but
> at least prevents audio going silent with old DTBs (plus handling GPIO
> probe deferral properly which I forgot about first time around). How
> does this look?
>=20
> Robin.
>=20
> ----->8-----

Please don't send revisions of individual patches in reply to discussion
of a series, it makes it really hard to follow what's going on with the
series.  Please just send patches normally.

--sMZCuqyhuhd4ycTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5BYRsACgkQJNaLcl1U
h9Du0wf9HO3Q6AaZJ1I4tRS3loJ/OXK/v8QMTdDtKmw/Ek+JwYeQh3npOWMQBItK
6pwxmpW5l4Cej0jPXpea00qCFYlQEadT1topkaNHLoNic2dlkVSv2seRbm3R6dwP
ghjNr4Mwv3vycd1P46hmJZsB+eDH4HmZnQGKSFkdz4i1j6MOLfwWxdnJLWpOP740
dwaB4VXKiS3EKCw5A3Q07jMCTuNyeXumjmq79/4POKCmN7FcE5Gr64c747stLQ+g
cDRDRKWiVhLuAFTDTnHf4ry9bTlGulap1bs2xN2qlmbxIKMT5ZV/UGQDhqrDQ6MV
/A1zX6aZmKOe6X82hUl4CSeTgIR6HQ==
=TcrG
-----END PGP SIGNATURE-----

--sMZCuqyhuhd4ycTi--
