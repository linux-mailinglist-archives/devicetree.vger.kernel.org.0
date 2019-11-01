Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AEED2EC0C6
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2019 10:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727550AbfKAJtq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 05:49:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:46948 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726957AbfKAJtq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Nov 2019 05:49:46 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0C21E21734;
        Fri,  1 Nov 2019 09:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1572601785;
        bh=aiGS91Hq8+Tec6OiEGfp5Qwq1/HH+r0uYEeMYIfR75k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i3qeQrfZSl3zPj3zgJ30NfU7CFQF6wiw1wKgjJT2us5LYriK7mZUp7vPfkzIQq6DE
         c2bYz9vhIqMCQCzs/YkdCyepzJSh5lmKiCesD810nITnWA0su/BJ3EnXAFlwUV5zAA
         vziUQOMwyTUiIzbjW9o3TXvNm0jL9qWrEMZxW1i8=
Date:   Fri, 1 Nov 2019 10:12:53 +0100
From:   Maxime Ripard <mripard@kernel.org>
To:     Georgii Staroselskii <georgii.staroselskii@emlid.com>
Cc:     robh+dt@kernel.org, wens@csie.org, linux-sunxi@googlegroups.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: allwinner: bluetooth for Emlid Neutis N5
Message-ID: <20191101091253.oxopdmq7igtyfpjz@hendrix>
References: <1572601413-10353-1-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mzwb6azrgqwhad27"
Content-Disposition: inline
In-Reply-To: <1572601413-10353-1-git-send-email-georgii.staroselskii@emlid.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mzwb6azrgqwhad27
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 12:43:33PM +0300, Georgii Staroselskii wrote:
> The Emlid Neutis N5 board has AP6212 BT+WiFi chip. This patch is in
> line with 8558c6e21ceb ("ARM: dts: sun8i: h3: bluetooth for Banana Pi
> M2 Zero board") and other commits that add Bluetooth support for
> similar boards.
>
> Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>

Applied, thanks!
Maxime

--mzwb6azrgqwhad27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv3FQAKCRDj7w1vZxhR
xfUgAQCuRYFEN+ejqrBG+YTreOb8P10E18Xoz+gEr6dNf53YUwEApuYBkd0OBB8p
ZnbSNQFsqFeh7t/NBMUCdjJEEIO3fg4=
=1eoJ
-----END PGP SIGNATURE-----

--mzwb6azrgqwhad27--
