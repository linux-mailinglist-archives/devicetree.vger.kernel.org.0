Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3063CA6D30
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 17:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729693AbfICPn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 11:43:59 -0400
Received: from mx2.suse.de ([195.135.220.15]:59634 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728679AbfICPn5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Sep 2019 11:43:57 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id DF1D8AB91;
        Tue,  3 Sep 2019 15:43:54 +0000 (UTC)
Message-ID: <cf743e0a1571c1748588f088cfd9804e8b55c36b.camel@suse.de>
Subject: PCIe DMA addressing issues on Raspberry Pi 4
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     Rob Herring <robh+dt@kernel.org>,
        "robin.murphy" <robin.murphy@arm.com>
Cc:     Christoph Hellwig <hch@lst.de>, iommu@lists.linux-foundation.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        mbrugger <mbrugger@suse.com>
Date:   Tue, 03 Sep 2019 17:43:52 +0200
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-VNc7oUE10RoRira+Huej"
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-VNc7oUE10RoRira+Huej
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all, sorry for the long read, I kept it as short as possible.

So, the wrapper around the PCIe block available on the Raspberry Pi 4 has a=
 bug
preventing it from accessing anything beyond the first 3G of ram [1]. I'm
trying to figure out the best way to integrate this upstream.

Note that the only thing behind the PCIe bus is an USB3 chip. The bus is no=
t
exposed to users directly.

I see two options:

- Isolate the PCIe block on it's own interconnect. IMO this could be accept=
able
  as it's arguable that the bug is not really in the PCIe block.  I set the
  interconnect's dma-range size to 2GB instead of 3GB as dma masks don't pl=
ay
  well with non power of two DMA constraints:

  buggy-scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x800000000>;

	pcie {
		compatible =3D "brcm,bcm2711-pcie";
		dma-ranges =3D <0x02000000 0x0 0x00000000 0x0 0x00000000
			      0x1 0x00000000>;
		[...]

	};
  };

  scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0xfc0000000>;

	eth0 {
		[...]
	};

	[...]
  };

  With this setup the PCIe devices should behave correctly as long as they
  don't play with their own DMA masks.

- Configure PCIe's inbound view of memory taking into account the buggy
  interconnect:

  scb {
	compatible =3D "simple-bus";
	dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0xfc000000>;

	pcie {
		compatible =3D "brcm,bcm2711-pcie";
		dma-ranges =3D <0x02000000 0x0 0x00000000 0x0 0x00000000
			      0x0 0x80000000>;
		[...]

	};

	eth0 {
		[...]
	};

	[...]
  };

  The downside of this is that of_dma_configure() doesn't play well with PC=
I
  devices. of_dma_configure() expects a device's OF node, yet the PCI core
  passes the bridge's OF node, as the device has none. The result is
  of_dma_configure() ignores PCI's dma-ranges. Solving this is not trivial.
  IMO the simplest solution would be to create a distinct OF node on PCI
  bridges, child of the actual PCI root complex.  FYI this was already an i=
ssue
  some years ago [2].

  This solution also suffers from devices setting their own DMA masks.

If you're curious abot the downstream kernel, they use their custom buffer
bouncing code, which AFAIK is something we're trying to get rid of.

Any comments? Alternative solutions?

Thanks,
Nicolas

[1] https://www.spinics.net/lists/arm-kernel/msg740693.html
[2] https://patchwork.kernel.org/patch/9650345/#20294961


--=-VNc7oUE10RoRira+Huej
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1uijgACgkQlfZmHno8
x/4ncwf/bFv3AD0ndtH89sJxuLuYsOfE/0zdO83AOPyEGnYUEp8yPyov0zO43okd
oQ2rfzZl8jALpzSy936hXZIIcJmWuOaTApRMaf14Rumq/RKR1zIG5e69ZlTskd5s
/ar4nASgz8/9ShY6LASonoXaTSSkbsOEWhBJPQjrS4Rf/Q9ggnLuzapHI6pDGdrJ
9DupdCcl7v1+Mfa+erRSGYrNgPWMnt85PaVQT2I+ICwc0UDWDND2hgIbuHsxnBre
1JFn0x26TIpqUCqegsZxOJOjNCQS+bTvoYzoi/xAhyuMMt+DFR7Jhk+l1TRrB/qs
x7bWu1wcIdB+gfhyeOrJUjm2qd5nFw==
=f55V
-----END PGP SIGNATURE-----

--=-VNc7oUE10RoRira+Huej--

