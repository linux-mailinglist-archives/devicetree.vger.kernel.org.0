Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 959C930D6F2
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 11:01:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233508AbhBCKBj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 05:01:39 -0500
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:48965 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232911AbhBCKBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 05:01:36 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.west.internal (Postfix) with ESMTP id 720CD9EB;
        Wed,  3 Feb 2021 05:00:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 03 Feb 2021 05:00:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=E4L+1XtSxc+gT8WxAB2fGZI5P2p
        /OpnyQE0/QGStu7g=; b=hDWYE1Gq3os6DJAQF4sbe61SZ2UMAbwoPLS1E9Gz7Px
        Wgz+oCxb0ykLKvvIXAt/mKKrql8usbXTYH8kReiHQeZFbMDlrdtzd4wLsU76KlT5
        KYV/4V/hdsrmeL2eiQBZK1iDDE6wLUzEb9yjuUPXAyR5PcljllQt/JzBXVEHlTZS
        iIw3HJLyiehdf6xW5KJwnW6SrKYE5If1gxXQz07JGO2L7tNwNKmoVOJ7x8p2KDUT
        rq5henA4XBEK1v6xVXoOzuiBgCRAC0n78ySA8fKM8CC+9R2LY98ZmPCa1Lrs0djK
        yU20o67UWSlJy8SaQZHzoCcuyC6oLftpiGbcCcR3NsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=E4L+1X
        tSxc+gT8WxAB2fGZI5P2p/OpnyQE0/QGStu7g=; b=g1R5qbUYkKD87+uoVhfBPH
        TNmwuFe1ZNn7lpn9vBxE26c9I6534TjYk1wTm2T/Ij36DUo2Py8chm2Gyh0moY7R
        xybSuRmSj1HayiVCwy/IcUqTuIUhNAnrP+H7k/wj+ku4xR7ndYLJZ9bvpObQkszc
        9GHsX8HnG9rJmQsKAbLCBati0MFZr7zJ/fU0NtBHnhSWGZNGuAunGCayaKI26Ja3
        e5sRrVRKTAV23PWX+ne1o24nTHNDeXRAWn9kY7pidIZiKhvPqBWzQ7JRYhTD4/54
        prwd4vEa1wdu6+wsugIc+btvBxE1DktmkBUjf6hoElLSGWp9St9LmitetYIs6QsA
        ==
X-ME-Sender: <xms:NXQaYKMKgkbQ5O_UCSRiykJhUPEeGmZZtDIEJG81FMHl_g_Qf63rFA>
    <xme:NXQaYPtJ9IXcQsK3C7O-8C0E2NtTQPKOCXbehmEm2toy3lXY5-tZY8zri2kUP7vub
    cqPjvB2yG6veCc4Nks>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrgedvgddutdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:NXQaYDDikpNhnTNcqdE9oDYXZIctg-nesqDpEBjqPwIV-cIP5IYTJg>
    <xmx:NXQaYGZDH3inVKZz14Uy5YdqCzpnA3hWvlXjZY8-VGjPaUwcoy8-kw>
    <xmx:NXQaYOULct8uMzEodNwn3jGPHXwo33wXMmSI48VVwiWcVBUgPgyEkQ>
    <xmx:N3QaYIJEjGW28rPjqQAYgX-KYHgm9CLWeBwGD_H6ltPP34nfhhab_Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 8F448240064;
        Wed,  3 Feb 2021 05:00:21 -0500 (EST)
Date:   Wed, 3 Feb 2021 11:00:19 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Sergey Matyukevich <geomatsi@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/1] ARM: dts: orange-pi-zero-plus2: use fixed mmc indexes
Message-ID: <20210203100019.sdlb6rxfoxl45b2h@gilmour>
References: <20210127054620.510912-1-geomatsi@gmail.com>
 <20210203092912.s3wm3y5hfptwirqy@gilmour>
 <CAGb2v66cskANPS7Zc_atCv9WYRq_aAEUi6Dd6LBrDPODOJ_ueQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5r7f2yelcaek4r7g"
Content-Disposition: inline
In-Reply-To: <CAGb2v66cskANPS7Zc_atCv9WYRq_aAEUi6Dd6LBrDPODOJ_ueQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5r7f2yelcaek4r7g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 03, 2021 at 05:36:58PM +0800, Chen-Yu Tsai wrote:
> On Wed, Feb 3, 2021 at 5:29 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Wed, Jan 27, 2021 at 08:46:20AM +0300, Sergey Matyukevich wrote:
> > > Driver sunxi-mmc has recently been switched to asynchronous probe.
> > > As a result, mmc indexes can be shuffled breaking existing setups
> > > where UUIDs are not used for boot devices. Pin mmc indexes to keep
> > > running the systems where fixed MMC or eMMC are specified,
> > > e.g. root=3D/dev/mmcblk0p2.
> > >
> > > Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
> >
> > I'm not sure, really.
> >
> > That would change the indices once again, and you shouldn't really rely
> > on them anyway, there's never been any guarantee on the order of any
> > device.
>=20
> I assume one reason people want stable MMC indices is for setting the
> root device. This could be done with UUID or PARTUUID.

PARTLABEL is also an option

> Another would be setting the LED trigger to some MMC device,
> preferably in the DT so it kicks in when the LED device is created.
> Though even that isn't guaranteed since the MMC could probe after the
> LED. :(
>=20
> Currently I'm using some shell script to parse the root device then
> get the device name and program that as an LED trigger through sysfs.

Surely a udev / mdev rule can help there?

> > And whatever the outcome of that discussion, it definitely shouldn't be
> > done for a single board.
>=20
> I believe this should be done at the SoC level so we would have consistent
> MMC indices across the board. However that seems to conflict with the ord=
er
> swap we currently have in U-boot to support eMMCs seamlessly.

I'm not sure we can do it at the SoC level anyway: if only the emmc is
enabled, we want it to be mmcblk0

Maxime

--5r7f2yelcaek4r7g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYBp0MwAKCRDj7w1vZxhR
xbYzAQC+kPJQLAHljopX1M1FmPdSALG1ao9tWSrmU72OkCniDAD/Sj3OpCouLCMb
oKHAvxtXkZlg1+o2DMaS9gPVGS5e5Qs=
=SF4k
-----END PGP SIGNATURE-----

--5r7f2yelcaek4r7g--
