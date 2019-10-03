Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 965D9CAA98
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 19:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392146AbfJCRJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 13:09:35 -0400
Received: from mx2.suse.de ([195.135.220.15]:36264 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2393415AbfJCRJe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Oct 2019 13:09:34 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 52999B190;
        Thu,  3 Oct 2019 17:09:32 +0000 (UTC)
Message-ID: <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Guillaume Gardet <Guillaume.Gardet@arm.com>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Date:   Thu, 03 Oct 2019 19:09:30 +0200
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-Ix9TQYjbsAOkefZjezfO"
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-Ix9TQYjbsAOkefZjezfO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-09-28 at 14:07 +0200, Stefan Wahren wrote:
> This series adds minimal support for the new Raspberry Pi 4, so we are ab=
le
> to login via debug UART.
>=20
> Patch 1-2:   Fix some DT schema warnings
> Patch 3-4:   Prepare DTS for the new SoC BMC2711
> Patch 5-7:   Add Raspberry Pi 4 DTS support
> Patch 8:     Update MAINTAINERS
>=20
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a prelimina=
ry
> datasheet [1] and reduced schematics [2].
>=20
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaro=
und
> i reverted the following patch to test this series:
>=20
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"

[ adding Matthias and Guillaume who first saw this ]
[ also adding Adrian Hunter just in case ]

Hi,
we stubled upon a bug in RPi's sdhci-iproc while testing this series.

It only shows-up on slow SD cards, the class 4 ones. On each SD operation w=
e
get the following warning:

[    2.093328] mmc1: Got data interrupt 0x00000002 even though no data oper=
ation was in progress.
[    2.102072] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI REGI=
STER DUMP =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[    2.108603] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
[    2.115134] mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
[    2.121664] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
[    2.128195] mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
[    2.134725] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
[    2.141255] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
[    2.147785] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
[    2.154314] mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
[    2.160843] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
[    2.167373] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
[    2.173902] mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
[    2.180432] mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
[    2.186961] mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
[    2.193490] mmc1: sdhci: Host ctl2: 0x00000001
[    2.197992] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xec040208
[    2.204521] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Aside from the serial console noise the RPi still boots alright. But as it'=
s
printing one of these per SD operation which is a lot...

I've been able to reproduce this both with arm and arn64 on multiple SD car=
ds.
Just copying the contents of a class 4 card into a class 10 one fixes the
issue.

Any ideas?

Regards,
Nicolas


--=-Ix9TQYjbsAOkefZjezfO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2WK0oACgkQlfZmHno8
x/4z/gf/bgKAQ7B78/8mBvESG1i3VvI7BH3uv7umwrCL8SrGUWyrXiHLmiXVDd2+
OAY9vm3OEdKw9qWVRKNvr029RE/csvFI7SibAwny6Rc5Y8cno2X+dXAIMr47zfQd
RKvwlaZN9EgpJfM8dgMudUeSb73VuXMk148Fsi97DP/yjYPd3ofpTBPj2Ps/2W9I
LOBJApYGDh6s6w2I7d7XMLb2Z5ErILbmx3Q8+DuF2MAFUY95Q5G72m0Gx5skYrbl
pjGnYNqce7c9WtyhNzzFvQNi9qiVrzD1S/H5CUuTX2/Db9DnEbHiD4R8I7fKTpPX
IVuRxWxwDwsfeswOBP9caCrg+50JDw==
=FKHG
-----END PGP SIGNATURE-----

--=-Ix9TQYjbsAOkefZjezfO--

