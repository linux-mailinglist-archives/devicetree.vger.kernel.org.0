Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED1162DAFEE
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 16:22:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729584AbgLOPVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 10:21:17 -0500
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:57757 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729150AbgLOPVQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Dec 2020 10:21:16 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 74E92ABF;
        Tue, 15 Dec 2020 10:20:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 15 Dec 2020 10:20:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=sgfDf1WfUTlCeGwFfoGWOOFNdVr
        gEjXzSWAyiG7GRto=; b=bJ6YUz2tpEGRNIYAmFq2Q520LOwh+I/YoXsj7UeHgQ1
        gIJyIum8qefmQjiTLHyDy8BKX44Z8B3U0d5m0pWODYnMPzqeDskXsbtURCSGeQCx
        OU8ZrZXo6023oUOE/nKz4W8aLYrUAVRbREbvJhOtQ1Ibc2t6MW44wYO1Y30cdVKb
        rjglhGWK8YI+HD9H8rQyk5Xa0Le9BQs4+/ROVf3mXUcCTay27Gnbvl4JZ8ArHZuD
        HbmhnJbRgR3RE9DPQ8BRCGpJACG7ip5e9ytIGN8T89kUE1/1JuO8hrXloKnCwpMw
        g90lRGHmOmXLyFCkzmktTnuIY/BjGDTtiv8T0FziFpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=sgfDf1
        WfUTlCeGwFfoGWOOFNdVrgEjXzSWAyiG7GRto=; b=pd0DGIx+NN1fWJ2BHCb0ru
        gV0jPMyFAj0MI0jUaXU4x9EgQolq+rHvogtUH6V9zA7zktFM/UCWnnfZiQyjq7CK
        Vahy4hYgjkYz1UBuf8eX82Lj+G8qhdrHxL4D7Mr8JUDTDB77flBIuIlJTKzaajX3
        AR+H17o+etQGf9svU/Zly389m9bwNzFlZHYvNv6fBR8An4q1p+s7XbUXQaMSNzuz
        fugwL7+phUQ5gmf8M799OtMJDbTwF462XaksonpQZDYWxOdRhbWP6WrDY9RauM4k
        wSPkzxUQhW7fUrFxyVZOu4sxry7b8XQ42M7a3L8GDgfryHgX8H5wIQixkh3qOrbg
        ==
X-ME-Sender: <xms:JdTYX1XUbZrSfcb-axfj46PH4lO6XL2iQicITCRJ0ft3FAu6yWJ0Jw>
    <xme:JdTYX1ni2SlFFCeAesIjNlGpcsBsciGJYHxW_xXhZSM4Y9TECjCKC9k_YYbBfULq9
    EaXWGXowbhXZO_s1oA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeltddgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JdTYXxaujWLvuhIbpdwn991zkhFU9EfMRQcPIvwcpFcIxDYbhN3DPQ>
    <xmx:JdTYX4VP5hWHVkb85iOtkaKn2z2pZJTJkkaTe5HqJH_4l1SEJdCqNw>
    <xmx:JdTYX_kdYR-Wa090La83GQOuafZ9vJzHuGSCK6NVHZtpJCQK0NCnZg>
    <xmx:J9TYX-s33q7nr-vV0Rx4k2BUhCvDKps6yQ6VFcZsWA-Gy_mHIr9Dyw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 552B9240065;
        Tue, 15 Dec 2020 10:20:05 -0500 (EST)
Date:   Tue, 15 Dec 2020 16:20:03 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Pavel =?utf-8?B?TMO2Ymw=?= <pavel@loebl.cz>
Cc:     devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero
 board
Message-ID: <20201215152003.vxlhbnkweotcy6br@gilmour>
References: <20201212111429.286721-1-pavel@loebl.cz>
 <20201214101730.ye5566a45gopxm7w@gilmour>
 <1087463930.53861.1607981903391@office.mailbox.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jxoyga74xzq2jlqq"
Content-Disposition: inline
In-Reply-To: <1087463930.53861.1607981903391@office.mailbox.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--jxoyga74xzq2jlqq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 14, 2020 at 10:38:23PM +0100, Pavel L=F6bl wrote:
>=20
> > On 12/14/2020 11:17 AM Maxime Ripard <maxime@cerno.tech> wrote:
>=20
> > Please send this to the proper recipients (get_maintainers.pl will help)
>=20
> That's what I used. I've also greped Documentation for
> get_maintainer.pl and read various bits there. And looking at headers
> of other patches I'm still not sure.
>=20
> Am I supposed to send the patch to all people in the script output and
> just Cc the list?

Yes, the script is here to list all the recipients you need to send that
patch to

Maxime

--jxoyga74xzq2jlqq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9jUIwAKCRDj7w1vZxhR
xcPCAP4u8lqxLEwzbS/VklyWQEgdu+onrZ1/vGCzdU9ozpgKMwD/R1qbFzNqneXx
P2TdL0D1dElcKDg3x+/6QEcdrhm6QAY=
=Cc6z
-----END PGP SIGNATURE-----

--jxoyga74xzq2jlqq--
