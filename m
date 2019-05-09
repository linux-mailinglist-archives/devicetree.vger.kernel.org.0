Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0666918EF3
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 19:25:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbfEIRZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 13:25:32 -0400
Received: from anholt.net ([50.246.234.109]:36838 "EHLO anholt.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726656AbfEIRZc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 May 2019 13:25:32 -0400
Received: from localhost (localhost [127.0.0.1])
        by anholt.net (Postfix) with ESMTP id B0F7910A34BA;
        Thu,  9 May 2019 10:25:31 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
        by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
        with LMTP id YK81nugJA6pl; Thu,  9 May 2019 10:25:30 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
        by anholt.net (Postfix) with ESMTP id 4084610A34B6;
        Thu,  9 May 2019 10:25:30 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
        id 6022C2FE3AA9; Thu,  9 May 2019 10:25:29 -0700 (PDT)
From:   Eric Anholt <eric@anholt.net>
To:     Lukas Wunner <lukas@wunner.de>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Martin Sperl <kernel@martin.sperl.org>,
        Noralf Tronnes <noralf@tronnes.org>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
In-Reply-To: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
References: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1 (x86_64-pc-linux-gnu)
Date:   Thu, 09 May 2019 10:25:27 -0700
Message-ID: <87zhnv35h4.fsf@anholt.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Lukas Wunner <lukas@wunner.de> writes:

> Without this, the driver for the BCM2835 SPI controller uses interrupt
> mode instead of DMA mode, incurring a significant performance penalty.
> The Foundation's device tree has had these attributes for years, but for
> some reason they were never upstreamed.
>
> They were originally contributed by Noralf Tr=C3=B8nnes and Martin Sperl:
> https://github.com/raspberrypi/linux/commit/25f3e064afc8
> https://github.com/raspberrypi/linux/commit/e0edb52b47e6
>
> The DREQ numbers 6 and 7 are documented in section 4.2.1.3 of:
> https://www.raspberrypi.org/app/uploads/2012/02/BCM2835-ARM-Peripherals.p=
df
>
> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>

Reviewed-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzUYocACgkQtdYpNtH8
nuisSQ/9F3xsTI4/P6Gv97jjfvxzNJ5xNdrxauZLWJldZh8RC0MSP1sq7NqlE3AG
pxvuVLVVv8rqt/6sJtTz8Hat0kPWG9gf17dg9WnrutUXv/ovk5Cr9OBpCIhXieTU
5RWVxQgxMe+dDrbOTuh3L9vVD18Yd+qKnsgINJ5vei4biYGLBVxTpeGUBhIrTKwU
A224+8KNqHLmFHMEtd9GmjWIrbhrcJH3tU8vCRQvWcO8uihvN2beJ5V3JjsqNEuG
V8FLOAkzT3Epxuh+irGHcMMFCvLXtPi6wl5WYTZfyAB8zPnNNuoo3OpNAZEfeHtY
rimyjeJZY/YxGXlDvJxRAnaDS7McfxQ4zsO6tVsPKdSNZMHreMr4eAyzaAzqm4kC
LFY3HFrY0cm6/aMBQmJSi7oZgaGLKTlmWAIwCh1XxRlN6GocNnjw1857Fol7VP3z
0URKyKGao7oyODfi2xAJFlnmPmY5OLDaURasO6XZqWwAVFN7IyeUHank0xxKrkC+
xD7ED3oPDWigpfaVCL/yAIj9W6KiwZFGQW2fwZSIerisU17ZjSg5r4vnBf2q4wT+
oLY4Xa5Gx0gYjnZvovl4o1Fb0msNF/gtt1MHt0O3Krq/XPgekWC9nkBvzNJdeBIK
LsweHQA+/4DHnDL/zbkoqlrvx4d+x8UH57Gy2WmHmBOP85xtNaU=
=6g+P
-----END PGP SIGNATURE-----
--=-=-=--
